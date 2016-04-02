.class Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$1;
.super Ljava/lang/Object;
.source "InitStatusCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$1;->this$0:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;-><init>()V

    .line 55
    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->importOldMessageToChat()Z

    .line 56
    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->initSummaryFromOld()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "oldMsgProcessor"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
