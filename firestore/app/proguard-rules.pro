# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /usr/local/google/home/samstern/android-sdk-linux/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# See:
# https://github.com/grpc/grpc-java/issues/2207
-keep class io.grpc.internal.DnsNameResolverProvider
-keep class io.grpc.okhttp.OkHttpChannelProvider

# Keep custom model classes
-keep class com.google.firebase.example.fireeats.model.** { *; }

## Android architecture components: ViewModel
-keepclassmembers class * extends android.arch.lifecycle.ViewModel {
    <init>(...);
}

## Android architecture components: Lifecycle
-keepclasseswithmembers class * implements android.arch.lifecycle.GenericLifecycleObserver {
    <init>(...);
}
