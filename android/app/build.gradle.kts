import java.util.Properties

plugins {
    id("com.android.application")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

// Release signing comes from android/key.properties (local, git-ignored) or from
// FUTURE_UPLOAD_* environment variables (CI secrets). It is never the debug key:
// a release build without credentials stops with an explanation instead.
val keyProperties = Properties().apply {
    val f = rootProject.file("key.properties")
    if (f.exists()) f.inputStream().use { load(it) }
}

fun signingValue(property: String, env: String): String? =
    (keyProperties.getProperty(property) ?: System.getenv(env))?.takeIf { it.isNotBlank() }

val releaseStoreFile = signingValue("storeFile", "FUTURE_UPLOAD_KEYSTORE_PATH")

android {
    namespace = "app.future2035.future_os"
    // flutter_local_notifications 23 (androidx.core 1.19) requires compileSdk 37.
    compileSdk = maxOf(37, flutter.compileSdkVersion)
    ndkVersion = flutter.ndkVersion

    compileOptions {
        // Required by flutter_local_notifications (java.time on older Android).
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    defaultConfig {
        applicationId = "app.future2035.future_os"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        // Uses the version code from pubspec.yaml. When using split APKs, 1000 * ABI_VERSION
        // is added automatically by Flutter. (https://developer.android.com/studio/build/configure-apk-splits#configure-APK-versions)
        // You can force using the value of versionCode by specifying the `-P force-version-code-ignoring-abi=true`
        // flag during build.
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        create("release") {
            if (releaseStoreFile != null) {
                storeFile = file(releaseStoreFile)
                storePassword = signingValue("storePassword", "FUTURE_UPLOAD_STORE_PASSWORD")
                keyAlias = signingValue("keyAlias", "FUTURE_UPLOAD_KEY_ALIAS")
                keyPassword = signingValue("keyPassword", "FUTURE_UPLOAD_KEY_PASSWORD")
            }
        }
    }

    buildTypes {
        release {
            signingConfig = if (releaseStoreFile != null) signingConfigs.getByName("release") else null
        }
    }
}

kotlin {
    compilerOptions {
        jvmTarget = org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17
    }
}

flutter {
    source = "../.."
}

dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
}

// Fail release packaging early and clearly when no upload key is configured.
gradle.taskGraph.whenReady {
    val packagingRelease = allTasks.any { t ->
        t.project == project && (t.name == "packageRelease" || t.name == "bundleRelease" || t.name == "signReleaseBundle")
    }
    if (packagingRelease && releaseStoreFile == null) {
        throw GradleException(
            "Release signing is not configured. Create android/key.properties (storeFile, storePassword, " +
                "keyAlias, keyPassword) or set FUTURE_UPLOAD_KEYSTORE_PATH, FUTURE_UPLOAD_STORE_PASSWORD, " +
                "FUTURE_UPLOAD_KEY_ALIAS and FUTURE_UPLOAD_KEY_PASSWORD. Release builds are never debug-signed."
        )
    }
}
