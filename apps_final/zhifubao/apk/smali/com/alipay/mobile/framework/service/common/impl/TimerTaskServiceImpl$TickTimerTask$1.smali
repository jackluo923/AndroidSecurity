.class Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask$1;
.super Ljava/lang/Object;
.source "TimerTaskServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;

.field final synthetic val$listener:Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask$1;->this$1:Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask$1;->val$listener:Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask$1;->val$listener:Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;->onTick()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask$1;->val$listener:Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;->onException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
