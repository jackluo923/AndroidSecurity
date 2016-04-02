.class final Lcom/alipay/mobile/quinox/classloader/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/ExecutorService;

.field final synthetic b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/b;->b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/classloader/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/32 v0, 0x1d4c0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v0, "BootstrapClassLoader"

    const-string/jumbo v1, "BundlesManager.verify() begin"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/b;->b:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->a(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;)Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->d()V

    const-string/jumbo v0, "BootstrapClassLoader"

    const-string/jumbo v1, "BundlesManager.verify() end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BootstrapClassLoader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
