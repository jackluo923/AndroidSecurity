.class public Lcom/alipay/mobile/quinox/engine/ApkEngineManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/quinox/engine/ApkEngineManager;


# instance fields
.field private b:Landroid/app/Application;

.field private c:Lcom/alipay/mobile/apk/common/AbstractEngine;


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->b:Landroid/app/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->b:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tmpEngine.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NativeApkEngine.apk"

    iget-object v2, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->fileFromAssets(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->updateEngine(Ljava/lang/String;)Z

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Lcom/alipay/mobile/apk/common/ZPackageManager;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->b:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/apk/common/ZPackageManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/apk/common/ZPackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Lcom/alipay/mobile/apk/common/ZPackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->versionCode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->b:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "apk.engine"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "NativeApkEngine.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Application;)Lcom/alipay/mobile/quinox/engine/ApkEngineManager;
    .locals 2

    const-class v1, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->a:Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->a:Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->a:Lcom/alipay/mobile/quinox/engine/ApkEngineManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getEngine()Lcom/alipay/mobile/apk/common/AbstractEngine;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "DefaultEngine"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->getEngine(Ljava/lang/String;)Lcom/alipay/mobile/apk/common/AbstractEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEngine(Ljava/lang/String;)Lcom/alipay/mobile/apk/common/AbstractEngine;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "com.alipay.mobile.apk.engine."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/apk/common/AbstractEngine;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->c:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->c:Lcom/alipay/mobile/apk/common/AbstractEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUnsupportedCause()Ljava/lang/Throwable;
    .locals 1

    const-string/jumbo v0, "DefaultEngine"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->getUnsupportedCause(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getUnsupportedCause(Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->getEngine(Ljava/lang/String;)Lcom/alipay/mobile/apk/common/AbstractEngine;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getUnsupportedCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/apk/common/ZPackageManager;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->b:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/apk/common/ZPackageManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/apk/common/ZPackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Lcom/alipay/mobile/apk/common/ZPackageInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    const-string/jumbo v0, "DefaultEngine"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->isSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->getEngine(Ljava/lang/String;)Lcom/alipay/mobile/apk/common/AbstractEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->b:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->isSupported(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateEngine(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->a(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->a(Ljava/lang/String;)I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/engine/MiscUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->c:Lcom/alipay/mobile/apk/common/AbstractEngine;

    goto :goto_0
.end method
