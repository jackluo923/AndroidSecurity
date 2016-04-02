.class Lcom/alipay/mobile/common/info/DeviceInfo$1;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/info/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/info/DeviceInfo;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alipay/mobile/common/info/DeviceInfo$1;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo$1;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->r:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$000(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo$1;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo$1;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->b:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$200(Lcom/alipay/mobile/common/info/DeviceInfo;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/alipay/mobile/common/info/DeviceInfo;->p:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$102(Lcom/alipay/mobile/common/info/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo$1;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->r:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$000(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo$1;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->s:Ljava/lang/Object;
    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$300(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo$1;->this$0:Lcom/alipay/mobile/common/info/DeviceInfo;

    # getter for: Lcom/alipay/mobile/common/info/DeviceInfo;->s:Ljava/lang/Object;
    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->access$300(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 252
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
