.class Lcom/alipay/mobile/common/patch/ZPatcher$2;
.super Ljava/lang/Object;
.source "ZPatcher.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/patch/ZPatcher;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/patch/ZPatcher;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZPatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download patch cancel url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    iget-object v3, v3, Lcom/alipay/mobile/common/patch/ZPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->delPatcherFile()V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    .line 132
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZPatcher"

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

    iget-object v3, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    iget-object v3, v3, Lcom/alipay/mobile/common/patch/ZPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v0, "DownloadPatchFile-Fail-ZPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLog(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    .line 125
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZPatcher"

    const-string/jumbo v2, "download patch completed.."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->applyPatch()V

    .line 117
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZPatcher"

    const-string/jumbo v2, "onPreExecute"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$2;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/common/patch/ZPatcher;->updateDownloadPatchProgress(D)V

    .line 106
    return-void
.end method
