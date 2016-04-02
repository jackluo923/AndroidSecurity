.class Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;
.super Ljava/lang/Object;
.source "TaskExecutorManager.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;->this$0:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 549
    check-cast p2, Lcom/alipay/mobile/common/transport/http/HttpTask;

    .line 552
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isOtcWaitTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;->this$0:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpTask;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->access$100(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpTask;

    .line 560
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;->this$0:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->access$200(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;Lcom/alipay/mobile/common/transport/http/HttpTask;)V

    .line 563
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;->this$0:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->access$300(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;Lcom/alipay/mobile/common/transport/http/HttpTask;)V

    goto :goto_0
.end method
