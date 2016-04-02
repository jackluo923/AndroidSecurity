.class Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$3;
.super Ljava/lang/Object;
.source "ThrottleFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$3;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$3;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    # getter for: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->stopTimestamp:J
    invoke-static {v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->access$7(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    div-long/2addr v0, v2

    .line 173
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    # getter for: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->access$8()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "postCountdown:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$3;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    # getter for: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->timeOutTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->access$9(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$3;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    # invokes: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->postCountdown()V
    invoke-static {v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->access$10(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$3;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->finish()V

    goto :goto_0
.end method
