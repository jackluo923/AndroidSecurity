.class public Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;
.super Ldalvik/system/PathClassLoader;


# static fields
.field private static final f:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private a:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

.field private c:Ljava/util/Map;

.field private d:Lcom/alipay/mobile/quinox/classloader/c;

.field private e:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/quinox/classloader/a;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/classloader/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->f:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;Ldalvik/system/PathClassLoader;Lcom/alipay/mobile/quinox/bundle/BundlesManager;)V
    .locals 3

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    iput-object p3, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ldalvik/system/PathClassLoader;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c:Ljava/util/Map;

    new-instance v0, Lcom/alipay/mobile/quinox/classloader/c;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/quinox/classloader/c;-><init>(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;Lcom/alipay/mobile/quinox/bundle/BundlesManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sget-object v1, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/classloader/b;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/quinox/classloader/b;-><init>(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;)Lcom/alipay/mobile/quinox/bundle/BundlesManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Class;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    :try_start_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;->loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BootClassLoader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private a(Ldalvik/system/PathClassLoader;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const-class v1, Ldalvik/system/BaseDexClassLoader;

    const-string/jumbo v2, "pathList"

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->fieldGet(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "dexElements"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->fieldGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    new-array v7, v1, [Ldalvik/system/DexFile;

    move v1, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "dexFile"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->fieldGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexFile;

    aput-object v0, v7, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "mDexs"

    invoke-static {p1, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->fieldGet(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    new-array v7, v1, [Ldalvik/system/DexFile;

    move v1, v0

    :goto_1
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexFile;

    aput-object v0, v7, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DexfileError"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;-><init>(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ldalvik/system/PathClassLoader;Lcom/alipay/mobile/quinox/bundle/BundlesManager;[Ldalvik/system/DexFile;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->e:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    return-object v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/c;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->c()I

    move-result v2

    const v3, 0xa98670

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/quinox/classloader/c;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/c;->b()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    return-object v0
.end method

.method public final a(Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/c;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/c;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/c;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->isInHost(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->e:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    :goto_0
    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InitExecutor #"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BootstrapClassLoader"

    const-string/jumbo v2, "getQuinoxClassLoader() in current thread."

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/alipay/mobile/quinox/classloader/e;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/quinox/classloader/e;-><init>(Lcom/alipay/mobile/quinox/classloader/c;Lcom/alipay/mobile/quinox/bundle/a;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/classloader/e;->a()Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BootstrapClassLoader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->d(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->c()I

    move-result v2

    const v3, 0xa98670

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->e:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    if-eq v0, v1, :cond_1

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;->loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->e:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getBundleClassLoader(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/QuinoxClassLoader;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->b:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "InitExecutor #"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BootstrapClassLoader"

    const-string/jumbo v2, "getBundleClassLoader() in current thread."

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/quinox/classloader/e;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/quinox/classloader/e;-><init>(Lcom/alipay/mobile/quinox/classloader/c;Lcom/alipay/mobile/quinox/bundle/a;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/e;->a()Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BootstrapClassLoader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->d:Lcom/alipay/mobile/quinox/classloader/c;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    goto :goto_1
.end method
