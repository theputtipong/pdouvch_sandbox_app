-keep class com.pdouvch.sandboxflutter.MainActivity { *; }

# Keep all public members of MyClass
-keepclassmembers class com.pdouvch.sandboxflutter.MyClass {
    public *;
}

# Keep all classes and members within the package and subpackages
-keep class com.pdouvch.sandboxflutter.** { *; }

# Keep names of classes with fields annotated with @SerializedName
#-keepnames class * {
#    @com.google.gson.annotations.SerializedName <fields>;
#}

# Debugging rule to identify the issue
-whyareyoukeeping class com.pdouvch.sandboxflutter.**