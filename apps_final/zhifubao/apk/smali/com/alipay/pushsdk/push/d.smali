.class public final Lcom/alipay/pushsdk/push/d;
.super Ljava/lang/Object;
.source "NotificationService.java"


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/NotificationService;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/NotificationService;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/alipay/pushsdk/push/d;->a:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 417
    const/4 v0, 0x0

    .line 419
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "submit(runnable)...getExecutorService:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    iget-object v3, p0, Lcom/alipay/pushsdk/push/d;->a:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/NotificationService;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_0
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isTerminated="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    iget-object v3, p0, Lcom/alipay/pushsdk/push/d;->a:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/NotificationService;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_1
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 428
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isShutdown="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    iget-object v3, p0, Lcom/alipay/pushsdk/push/d;->a:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/NotificationService;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_2
    iget-object v1, p0, Lcom/alipay/pushsdk/push/d;->a:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/NotificationService;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_4

    .line 433
    iget-object v1, p0, Lcom/alipay/pushsdk/push/d;->a:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/NotificationService;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    .line 434
    iget-object v0, p0, Lcom/alipay/pushsdk/push/d;->a:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/NotificationService;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 435
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Future result is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_3
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 440
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->e()Ljava/lang/String;

    move-result-object v1

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Future result isCancelled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 442
    const-string/jumbo v3, ", isDone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 441
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_4
    return-object v0
.end method
