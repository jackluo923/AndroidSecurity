.class public final Lcom/alipay/mobile/quinox/classloader/c;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

.field private c:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

.field private d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/quinox/classloader/d;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/classloader/d;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/classloader/c;->e:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;Lcom/alipay/mobile/quinox/bundle/BundlesManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/c;->b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/classloader/c;->c:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/classloader/c;)Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/quinox/classloader/c;)Lcom/alipay/mobile/quinox/bundle/BundlesManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->c:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/quinox/classloader/c;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InitExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "create classloader error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "InitExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "create classloader error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/alipay/mobile/quinox/classloader/c;->e:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public final a(Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/mobile/quinox/classloader/e;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/quinox/classloader/e;-><init>(Lcom/alipay/mobile/quinox/classloader/c;Lcom/alipay/mobile/quinox/bundle/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/c;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
