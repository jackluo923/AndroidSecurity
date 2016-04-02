.class Lcom/ali/user/mobile/info/DeviceInfo$2;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/info/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/info/DeviceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/info/DeviceInfo$2;->this$0:Lcom/ali/user/mobile/info/DeviceInfo;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo$2;->this$0:Lcom/ali/user/mobile/info/DeviceInfo;

    # getter for: Lcom/ali/user/mobile/info/DeviceInfo;->e:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->access$2(Lcom/ali/user/mobile/info/DeviceInfo;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo$2;->this$0:Lcom/ali/user/mobile/info/DeviceInfo;

    iget-object v1, p0, Lcom/ali/user/mobile/info/DeviceInfo$2;->this$0:Lcom/ali/user/mobile/info/DeviceInfo;

    # getter for: Lcom/ali/user/mobile/info/DeviceInfo;->i:Landroid/content/Context;
    invoke-static {v1}, Lcom/ali/user/mobile/info/DeviceInfo;->access$0(Lcom/ali/user/mobile/info/DeviceInfo;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/info/DeviceInfo;->access$3(Lcom/ali/user/mobile/info/DeviceInfo;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo$2;->this$0:Lcom/ali/user/mobile/info/DeviceInfo;

    # getter for: Lcom/ali/user/mobile/info/DeviceInfo;->g:Ljava/lang/String;
    invoke-static {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->access$4(Lcom/ali/user/mobile/info/DeviceInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initUtdid exception, mUtdid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/mobile/info/DeviceInfo$2;->this$0:Lcom/ali/user/mobile/info/DeviceInfo;

    # getter for: Lcom/ali/user/mobile/info/DeviceInfo;->g:Ljava/lang/String;
    invoke-static {v3}, Lcom/ali/user/mobile/info/DeviceInfo;->access$4(Lcom/ali/user/mobile/info/DeviceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/DeviceInfo$2;->this$0:Lcom/ali/user/mobile/info/DeviceInfo;

    # getter for: Lcom/ali/user/mobile/info/DeviceInfo;->e:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->access$2(Lcom/ali/user/mobile/info/DeviceInfo;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    # getter for: Lcom/ali/user/mobile/info/DeviceInfo;->b:Ljava/lang/Object;
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->access$5()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 65
    :try_start_0
    # getter for: Lcom/ali/user/mobile/info/DeviceInfo;->b:Ljava/lang/Object;
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->access$5()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
