.class Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;

.field private b:J

.field private c:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->a:Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->c:Z

    return-void
.end method


# virtual methods
.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->b:J

    return-wide v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->c:Z

    return v0
.end method

.method public isOutExpire()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->b:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->getTimeRepeattaskExpireMill()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reSet()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->c:Z

    return-void
.end method

.method public setDone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->c:Z

    return-void
.end method
