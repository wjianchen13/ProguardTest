# To enable ProGuard in your project, edit project.properties
# to define the proguard.comConfig property as described in that file.
#
# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in ${sdk.dir}/tools/proguard/proguard-android.txt
# You can edit the include parentPath and order by changing the ProGuard
# include property in project.properties.
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

-dontoptimize
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontskipnonpubliclibraryclassmembers
-dontpreverify
-verbose
-dontwarn
-dontshrink
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
-keep public class * extends android.app.Activity{
	public <fields>;
	public <methods>;
}
-keep public class * extends android.app.Application{
	public <fields>;
	public <methods>;
}
-keep public class * extends android.app.Service
-keep public class * extends android.app.View
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keepclasseswithmembernames class * { native <methods>; }
-keepclasseswithmembers class * { public <init>(android.content.Context, android.util.AttributeSet); }
-keepclasseswithmembers class * { public <init>(android.content.Context, android.util.AttributeSet, int); }
-keepclassmembers class * extends android.app.Activity { public void *(android.view.View); }
-keepclassmembers enum * { public static **[] values();
    public static ** valueOf(java.lang.String); }
-keep class **.R$* {*; }
-keep class * implements android.os.Parcelable { public static final android.os.Parcelable$Creator *; }
-dontwarn dalvik.**

#androidx后，若使用了混淆，则必须在混淆文件中添加以下配置，否则使用了androidx的地方都将有可能出问题
-keep class com.google.android.material.** {*;}
-keep class androidx.** {*;}
-keep public class * extends androidx.**
-keep interface androidx.** {*;}
-dontwarn com.google.android.material.**
-dontnote com.google.android.material.**
-dontwarn androidx.**

-keep class android.support.v4.**{*;}

-keep class android.support.annotation.Keep
-keep @android.support.annotation.Keep class * {*;}
-keepclasseswithmembers class * {
    @android.support.annotation.Keep <methods>;
}
-keepclasseswithmembers class * {
    @android.support.annotation.Keep <fields>;
}
-keepclasseswithmembers class * {
    @android.support.annotation.Keep <init>(...);
}

-keep class androidx.annotation.Keep
-keep @androidx.annotation.Keep class * {*;}
-keepclasseswithmembers class * {
    @androidx.annotation.Keep <methods>;
}
-keepclasseswithmembers class * {
    @androidx.annotation.Keep <fields>;
}
-keepclasseswithmembers class * {
    @androidx.annotation.Keep <init>(...);
}

-keep class android.webkit.JavascriptInterface
-keep @android.webkit.JavascriptInterface class * {*;}
-keepclasseswithmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
-keepclasseswithmembers class * {
    @android.webkit.JavascriptInterface <fields>;
}
-keepclasseswithmembers class * {
    @android.webkit.JavascriptInterface <init>(...);
}

-keep class com.lokinfo.android.gamemarket.mmshow.**{*;}

-keep class org.apache.http.**{ *; }
-keep interface org.apache.http.** { *; }
-dontwarn org.apache.http.**
-dontwarn android.net.http.**
-keep class android.net.http.** { *;}

# 混淆字典
-obfuscationdictionary dictionary_rules.txt
-classobfuscationdictionary dictionary_rules.txt
-packageobfuscationdictionary dictionary_rules.txt
