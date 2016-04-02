.class final Lcom/alipay/mobile/quinox/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/d;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/d;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string/jumbo v2, "plugins"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "lock_"

    const-string/jumbo v3, "bundles.cfg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->tryFileLock(Ljava/io/File;)Ljava/nio/channels/FileLock;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/d;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$100(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->freeFileLock(Ljava/nio/channels/FileLock;Ljava/io/File;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/d;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    # getter for: Lcom/alipay/mobile/quinox/LauncherApplication;->t:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$200(Lcom/alipay/mobile/quinox/LauncherApplication;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
