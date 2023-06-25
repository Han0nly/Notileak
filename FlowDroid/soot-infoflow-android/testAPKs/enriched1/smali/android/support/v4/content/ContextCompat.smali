.class public Landroid/support/v4/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# static fields
.field private static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final DIR_DATA:Ljava/lang/String; = "data"

.field private static final DIR_FILES:Ljava/lang/String; = "files"

.field private static final DIR_OBB:Ljava/lang/String; = "obb"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-nez p0, :cond_0

    .line 293
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object p0, v3

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    .line 295
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 298
    :cond_1
    return-object p0

    :cond_2
    move-object v3, p0

    goto :goto_1
.end method

.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .locals 7

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 274
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 276
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v2

    .line 285
    return-object v2

    .line 276
    :cond_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 280
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatFroyo;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 285
    :goto_0
    const/4 v1, 0x1

    .line 285
    new-array v2, v1, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object v3, v2, v1

    return-object v2

    .line 282
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "Android"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "data"

    aput-object v5, v4, v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x2

    aput-object v6, v4, v1

    const/4 v1, 0x3

    const-string v5, "cache"

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    goto :goto_0
.end method

.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 7

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 214
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 216
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 225
    return-object v2

    .line 216
    :cond_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 220
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatFroyo;->getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 225
    :goto_0
    const/4 v1, 0x1

    .line 225
    new-array v2, v1, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object v3, v2, v1

    return-object v2

    .line 222
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "Android"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "data"

    aput-object v5, v4, v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x2

    aput-object v6, v4, v1

    const/4 v1, 0x3

    const-string v5, "files"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    goto :goto_0
.end method

.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .locals 7

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 154
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 156
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getObbDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v2

    .line 165
    return-object v2

    .line 156
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 160
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatHoneycomb;->getObbDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 165
    :goto_0
    const/4 v1, 0x1

    .line 165
    new-array v2, v1, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object v3, v2, v1

    return-object v2

    .line 162
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "Android"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "obb"

    aput-object v5, v4, v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x2

    aput-object v6, v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    goto :goto_0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 2

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 101
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/ContextCompatJellybean;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 99
    const/4 v1, 0x1

    .line 107
    return v1

    .line 99
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 104
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatHoneycomb;->startActivities(Landroid/content/Context;[Landroid/content/Intent;)V

    .line 99
    const/4 v1, 0x1

    return v1

    .line 99
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
