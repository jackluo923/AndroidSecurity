.class Lcom/alipay/mobile/rome/syncsdk/service/ConnManager$1;
.super Ljava/lang/Object;
.source "ConnManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager$1;->this$0:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 693
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "Link_task_executor"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 694
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 695
    return-object v0
.end method
