.class public Lcom/alipay/mobile/framework/LauncherApplicationAgent;
.super Ljava/lang/Object;
.source "LauncherApplicationAgent.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/alipay/mobile/framework/LauncherApplicationAgent;


# instance fields
.field private d:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

.field protected mBundleContext:Lcom/alipay/mobile/framework/BundleContext;

.field protected mContext:Landroid/app/Application;

.field protected mLazyBundles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string/jumbo v0, "lazy_bundle"

    const-string/jumbo v1, "s.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->a:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "lazy_bundle"

    const-string/jumbo v1, "s_plain.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->c:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "LauncherApplicationAgent must be single instance mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    sput-object p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->c:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    .line 87
    const-string/jumbo v0, "LaunchApplicationAgent"

    const-string/jumbo v1, "new LauncherApplicationAgent()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 454
    const/4 v0, 0x0

    .line 455
    :goto_0
    if-nez p0, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 457
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 458
    const-string/jumbo v0, "LaunchApplicationAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "waitUntilInitialized, [count] sleep 100ms = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 461
    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    const-string/jumbo v2, "LaunchApplicationAgent"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 461
    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;
    .locals 4

    .prologue
    .line 381
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->c:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    if-eqz v0, :cond_0

    .line 382
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->c:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    .line 394
    :goto_0
    return-object v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    .line 385
    :goto_1
    sget-object v1, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->c:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 387
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 388
    const-string/jumbo v0, "LaunchApplicationAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getInstance, [count] sleep 100ms = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 391
    goto :goto_1

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string/jumbo v2, "LaunchApplicationAgent"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 391
    goto :goto_1

    .line 394
    :cond_1
    sget-object v0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->c:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    goto :goto_0
.end method


# virtual methods
.method public final attachBundleContext(Landroid/app/Application;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    .line 97
    new-instance v0, Lcom/alipay/mobile/framework/BundleContext;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/framework/BundleContext;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mBundleContext:Lcom/alipay/mobile/framework/BundleContext;

    .line 98
    const-string/jumbo v0, "LaunchApplicationAgent"

    const-string/jumbo v1, "attachBundleContext()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public getApplicationContext()Landroid/app/Application;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->a(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->a(Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getBundleContext()Lcom/alipay/mobile/framework/BundleContext;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mBundleContext:Lcom/alipay/mobile/framework/BundleContext;

    invoke-static {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->a(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mBundleContext:Lcom/alipay/mobile/framework/BundleContext;

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getLazyBundles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mLazyBundles:Ljava/util/Map;

    return-object v0
.end method

.method public getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->a(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final init()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 151
    const-string/jumbo v0, "LaunchApplicationAgent"

    const-string/jumbo v2, "init()"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    const-string/jumbo v2, "plugins"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->a:Ljava/lang/String;

    invoke-direct {v5, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->readLazyBundles(Ljava/io/BufferedInputStream;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mLazyBundles:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mLazyBundles:Ljava/util/Map;

    if-nez v2, :cond_0

    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->readLazyBundles(Ljava/io/BufferedInputStream;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mLazyBundles:Ljava/util/Map;

    invoke-static {v3, v5}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->streamToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 154
    :cond_0
    :goto_1
    :try_start_4
    const-string/jumbo v0, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    iget-object v2, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->attachContext(Landroid/app/Application;Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6

    .line 165
    :goto_2
    return-void

    .line 152
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const-string/jumbo v3, "LaunchApplicationAgent"

    const-string/jumbo v4, "Failed to load /data/data/{pkgname}/plugins/lazy_bundles.cfg"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v2

    :goto_5
    :try_start_6
    const-string/jumbo v2, "LaunchApplicationAgent"

    const-string/jumbo v3, "Failed to load .apk/asset/lazy_bundles.cfg, try to load .apk/asset/lazy_bundles_plain.cfg"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-result-object v3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    const-string/jumbo v4, "UTF-8"

    invoke-static {v2, v4}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->parseBundles(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mLazyBundles:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mLazyBundles:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mLazyBundles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    iget-object v4, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mLazyBundles:Ljava/util/Map;

    invoke-virtual {p0, v4, v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->writeLazyBundles(Ljava/util/Map;Ljava/io/BufferedOutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v1, v2

    :cond_1
    :try_start_9
    invoke-static {v3}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_6
    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :catch_2
    move-exception v2

    move-object v2, v1

    move-object v3, v1

    :goto_7
    :try_start_a
    const-string/jumbo v4, "LaunchApplicationAgent"

    const-string/jumbo v6, "Failed to load .apk/asset/lazy_bundles.cfg, try to read meta-data"

    invoke-static {v4, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    iget-object v4, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mContext:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "lazy_bundle"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->parseBundles(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mLazyBundles:Ljava/util/Map;

    iget-object v4, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mLazyBundles:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mLazyBundles:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-object v1, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->mLazyBundles:Ljava/util/Map;

    invoke-virtual {p0, v1, v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->writeLazyBundles(Ljava/util/Map;Ljava/io/BufferedOutputStream;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-object v1, v4

    :cond_2
    :try_start_d
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_8
    :try_start_e
    invoke-static {v3}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_9
    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    :catch_3
    move-exception v4

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    :goto_a
    :try_start_f
    const-string/jumbo v5, "LaunchApplicationAgent"

    const-string/jumbo v6, "Failed to load meta-data (lazy_bundle)"

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :try_start_10
    invoke-static {v4}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v1

    :goto_b
    :try_start_11
    invoke-static {v3}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catchall_3
    move-exception v4

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    :goto_c
    :try_start_12
    invoke-static {v4}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 157
    :catch_4
    move-exception v0

    .line 159
    const-string/jumbo v1, "LaunchApplicationAgent"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 160
    :catch_5
    move-exception v0

    .line 161
    const-string/jumbo v1, "LaunchApplicationAgent"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 162
    :catch_6
    move-exception v0

    .line 163
    const-string/jumbo v1, "LaunchApplicationAgent"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 152
    :catchall_4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_9

    :catchall_6
    move-exception v2

    move-object v3, v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto :goto_b

    :catchall_7
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_b

    :catchall_8
    move-exception v1

    goto :goto_c

    :catch_7
    move-exception v1

    goto :goto_a

    :catch_8
    move-exception v2

    move-object v2, v1

    goto/16 :goto_7

    :catch_9
    move-exception v4

    goto/16 :goto_7

    :catch_a
    move-exception v0

    move-object v0, v2

    goto/16 :goto_5

    :catchall_9
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_4

    :catch_b
    move-exception v2

    goto/16 :goto_3

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method parseBundles(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 286
    const/4 v0, 0x0

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    const-string/jumbo v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 289
    array-length v1, v3

    if-lez v1, :cond_1

    .line 290
    new-instance v0, Ljava/util/HashMap;

    array-length v1, v3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 293
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 294
    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 295
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    aget-object v6, v5, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v5, v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 297
    aget-object v6, v5, v8

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 298
    array-length v7, v6

    if-lez v7, :cond_0

    .line 299
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 300
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 302
    aget-object v5, v5, v2

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_1
    return-object v0
.end method

.method public postInit()V
    .locals 2

    .prologue
    .line 362
    const-string/jumbo v0, "LaunchApplicationAgent"

    const-string/jumbo v1, "Default: LauncherApplicationAgent.postInit()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public preInit()V
    .locals 2

    .prologue
    .line 358
    const-string/jumbo v0, "LaunchApplicationAgent"

    const-string/jumbo v1, "Default: LauncherApplicationAgent.preInit()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method readLazyBundles(Ljava/io/BufferedInputStream;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedInputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 328
    .line 329
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v3

    .line 330
    if-lez v3, :cond_2

    .line 331
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 337
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 338
    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 340
    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v5

    .line 341
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 342
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 343
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 345
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 354
    :cond_2
    :goto_1
    return-object v0

    .line 349
    :catch_0
    move-exception v1

    .line 350
    const-string/jumbo v2, "LaunchApplicationAgent"

    const-string/jumbo v3, "readLazyBundles(BufferedInputStream) error."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public recover()V
    .locals 2

    .prologue
    .line 201
    const-string/jumbo v0, "LaunchApplicationAgent"

    const-string/jumbo v1, "Default: LauncherApplicationAgent.recover()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method protected final setExceptionHandlerAgent(Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)V
    .locals 3

    .prologue
    .line 143
    const-string/jumbo v0, "LaunchApplicationAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setExceptionHandlerAgent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->d:Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;

    .line 145
    return-void
.end method

.method writeLazyBundles(Ljava/util/Map;Ljava/io/BufferedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/BufferedOutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 312
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p2, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 316
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 317
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 318
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 319
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 320
    invoke-static {p2, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 325
    :cond_1
    return-void
.end method
