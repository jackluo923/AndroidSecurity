.class Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$3;
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
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$3;->this$0:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$3;->this$0:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    # invokes: Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->loadOverDay()I
    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->access$1(Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;)I

    move-result v0

    .line 105
    const-wide/32 v1, 0x5265c00

    int-to-long v3, v0

    mul-long v4, v1, v3

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$3;->this$0:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    # invokes: Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->obtainUserId()Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->access$2(Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "markOverDayRead   userId="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " , dotTime= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$3;->this$0:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->upDateOverTimeMessage(Ljava/lang/String;JJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "markOverDayRead"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
