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

# Flutter deferred components (not used; prevents R8 missing play.core classes)
-dontwarn com.google.android.play.core.**

# Google Mobile Ads
-keep class com.google.android.gms.ads.** { *; }
-keep class io.flutter.plugins.googlemobileads.** { *; }

# AndroidX WorkManager, Room & Startup (required by Google Mobile Ads under R8)
-keep class * extends androidx.room.RoomDatabase { *; }
-keep class androidx.work.** { *; }
-keep class androidx.room.** { *; }
-keep class androidx.startup.** { *; }
