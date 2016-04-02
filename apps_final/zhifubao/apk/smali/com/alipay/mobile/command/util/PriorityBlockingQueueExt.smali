.class public Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;
.super Ljava/util/concurrent/PriorityBlockingQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TaskMetaWrap:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/PriorityBlockingQueue",
        "<TTaskMetaWrap;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x72d7032af677f976L


# instance fields
.field private addedElement:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt",
            "<TTaskMetaWrap;>.ElementDesc;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-TTaskMetaWrap;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->addedElement:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTaskMetaWrap;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->addedElement:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->addedElement:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;-><init>(Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->offer(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->addedElement:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->isOutExpire()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->addedElement:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->addedElement:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->reSet()V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->offer(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "util"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v4, "\u5f53\u524d\u4efb\u52a1\u88ab\u4e22\u5f03,\u4efb\u52a1\u662f\u5426\u8d85\u65f6:"

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->addedElement:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->isOutExpire()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    const-string/jumbo v4, ",\u4efb\u52a1\u662f\u5426\u5b8c\u6210:"

    aput-object v4, v3, v0

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->addedElement:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->isDone()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method public completeElement(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTaskMetaWrap;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->addedElement:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt$ElementDesc;->setDone(Z)V

    goto :goto_0
.end method

.method public removeElement(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTaskMetaWrap;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->addedElement:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public take()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTaskMetaWrap;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->addedElement:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->addedElement:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
