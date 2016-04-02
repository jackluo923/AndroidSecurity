.class Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv$1;
.super Ljava/lang/Object;
.source "RecommendRecv.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;

.field private final synthetic val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv$1;->this$0:Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;

    iput-object p2, p0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv$1;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk_RecommendRecv"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "process syncMsg"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv$1;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v3, v3, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv$1;->this$0:Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;

    iget-object v1, p0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv$1;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v1, v1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv$1;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    iget-object v2, v2, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->processRecommendMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->access$0(Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
