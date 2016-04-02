.class Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper$1;
.super Ljava/lang/Object;
.source "ReTryHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;

.field private final synthetic val$publicId:Ljava/lang/String;

.field private final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper$1;->this$0:Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;

    iput-object p2, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper$1;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper$1;->val$publicId:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->getInstance()Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper$1;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper$1;->val$publicId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->invalidateRecommend(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ReTryHelper"

    const-string/jumbo v3, "invalidateRecommend"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
