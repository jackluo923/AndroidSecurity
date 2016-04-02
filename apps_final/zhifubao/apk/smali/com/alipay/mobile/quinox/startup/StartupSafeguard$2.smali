.class Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:I

.field final synthetic this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;II)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    iput p2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;->a:I

    iput p3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$2(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    iget v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;->a:I

    iget v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handlePendingOnStartup(II)V

    :cond_0
    return-void
.end method
