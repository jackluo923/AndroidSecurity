.class final Lcom/alipay/mobile/quinox/e;
.super Ljava/lang/ClassLoader;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/e;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public final findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/e;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->pattern(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/e;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->patternHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/e;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    # getter for: Lcom/alipay/mobile/quinox/LauncherApplication;->u:Z
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$300(Lcom/alipay/mobile/quinox/LauncherApplication;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/e;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    # getter for: Lcom/alipay/mobile/quinox/LauncherApplication;->j:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$400(Lcom/alipay/mobile/quinox/LauncherApplication;)Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
