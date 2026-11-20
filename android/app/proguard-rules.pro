# Flutter-specific keeps
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Play Integrity
-keep class com.google.android.play.core.integrity.** { *; }

# Keep method channel handlers and any reflective entry points
-keepclassmembers class * {
    @io.flutter.plugin.common.MethodChannel* <methods>;
}

# Obfuscation friendly: remove logging in release if you add timber/log
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
}

# Existing secure storage / cryptography if needed
-keep class androidx.security.crypto.** { *; }

# Ignore optional Flutter Play Core deferred components
-dontwarn com.google.android.play.core.splitcompat.**
-dontwarn com.google.android.play.core.splitinstall.**
-dontwarn com.google.android.play.core.tasks.**
