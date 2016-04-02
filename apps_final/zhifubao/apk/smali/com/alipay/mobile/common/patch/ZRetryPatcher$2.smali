.class Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;
.super Ljava/lang/Object;
.source "ZRetryPatcher.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->delNewFile()V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onFail(I)V

    .line 154
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 145
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZRetryPatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed download newFile."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "url= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    # getter for: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$300(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onFail(I)V

    .line 148
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 4

    .prologue
    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZRetryPatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download newFile completed url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    # getter for: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$300(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$200(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onSuccess(Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onFail(I)V

    goto :goto_0
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->updateDownloadNewFileProgress(D)V

    .line 126
    return-void
.end method
