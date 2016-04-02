.class Lcom/alipay/mobile/publicplatform/news/NewsRecv$1$1;
.super Ljava/lang/Object;
.source "NewsRecv.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;

.field private final synthetic val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/publicplatform/news/NewsRecv$1$1;->this$1:Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;

    iput-object p2, p0, Lcom/alipay/mobile/publicplatform/news/NewsRecv$1$1;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NewsRecv"

    const-string/jumbo v2, "start load  notice "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/news/NewsRecv$1$1;->this$1:Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;

    # getter for: Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;->this$0:Lcom/alipay/mobile/publicplatform/news/NewsRecv;
    invoke-static {v0}, Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;->access$0(Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;)Lcom/alipay/mobile/publicplatform/news/NewsRecv;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/publicplatform/news/NewsRecv$1$1;->val$syncMessage:Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    # invokes: Lcom/alipay/mobile/publicplatform/news/NewsRecv;->processNewsMsg(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->access$0(Lcom/alipay/mobile/publicplatform/news/NewsRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 78
    return-void
.end method
