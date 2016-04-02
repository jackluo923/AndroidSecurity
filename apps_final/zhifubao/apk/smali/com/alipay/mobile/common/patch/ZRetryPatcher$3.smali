.class Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;
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
    .line 160
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZRetryPatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download patch cancel url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v3, v3, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->delPatcherFile()V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onFail(I)V

    .line 193
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 181
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZRetryPatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download patch error code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v3, v3, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v0, "DownloadPatchFile-Fail-ZRetryPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLog(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    # getter for: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;
    invoke-static {v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$000(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$100(Lcom/alipay/mobile/common/patch/ZRetryPatcher;Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 185
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 4

    .prologue
    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZRetryPatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download patch completed url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v3, v3, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->applyPatch()V

    .line 177
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->updateDownloadPatchProgress(D)V

    .line 166
    return-void
.end method
