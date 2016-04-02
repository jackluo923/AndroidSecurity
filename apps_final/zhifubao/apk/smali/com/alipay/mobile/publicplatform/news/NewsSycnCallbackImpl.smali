.class public Lcom/alipay/mobile/publicplatform/news/NewsSycnCallbackImpl;
.super Ljava/lang/Object;
.source "NewsSycnCallbackImpl.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 4

    .prologue
    .line 15
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NewsSycnCallbackImpl"

    const-string/jumbo v2, "NewsSycnCallbackImpl onReceiveMessage"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    if-eqz p1, :cond_0

    .line 17
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NewsSycnCallbackImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NewsSycnCallbackImpl onReceiveMessage biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->getInstance()Lcom/alipay/mobile/publicplatform/news/NewsRecv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->processSyncMsg(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 20
    :cond_0
    return-void
.end method
