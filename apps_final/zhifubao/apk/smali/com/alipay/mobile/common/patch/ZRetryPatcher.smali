.class public Lcom/alipay/mobile/common/patch/ZRetryPatcher;
.super Lcom/alipay/mobile/common/patch/BasePatcher;
.source "ZRetryPatcher.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/common/transport/TransportCallback;

.field private c:Lcom/alipay/mobile/common/transport/TransportCallback;

.field protected mNewFileDownloadTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field protected mPatchDownloadTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field patchTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V
    .locals 8

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/patch/BasePatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchDownloadTask:Ljava/util/concurrent/Future;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFileDownloadTask:Ljava/util/concurrent/Future;

    .line 50
    new-instance v0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;-><init>(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->patchTask:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;-><init>(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 160
    new-instance v0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;-><init>(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->c:Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 31
    iput-object p2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZRetryPatcher"

    const-string/jumbo v2, "ZRetryPatcher init"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private a(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZRetryPatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "downloadNewFile url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onFail(I)V

    .line 118
    :goto_0
    return-void

    .line 112
    :cond_0
    const-string/jumbo v0, "downloadNewFile-Start-ZRetryPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLog(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZRetryPatcher"

    const-string/jumbo v2, "start downloadNewFile..."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/ArrayList;)V

    .line 115
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setUseEtag(Z)V

    .line 117
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFileDownloadTask:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Lcom/alipay/mobile/common/transport/TransportCallback;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/patch/ZRetryPatcher;Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ZRetryPatcher"

    const-string/jumbo v3, "verifyNewFileMD5..."

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFileMD5:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public CancelTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchDownloadTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchDownloadTask:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchDownloadTask:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFileDownloadTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFileDownloadTask:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFileDownloadTask:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0
.end method

.method protected downloadPatch(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->getPatchFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFilePath:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->delPatcherFile()V

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mOldFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ZRetryPatcher"

    const-string/jumbo v3, "start downloadPatch..."

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v1, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v4, v4}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/ArrayList;)V

    .line 101
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setUseEtag(Z)V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchDownloadTask:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method protected getPatchTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->patchTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getPatcherDownloadListener()Lcom/alipay/mobile/common/transport/TransportCallback;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->c:Lcom/alipay/mobile/common/transport/TransportCallback;

    return-object v0
.end method

.method public startPatch()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->isLoadLibrary:Z

    if-eqz v0, :cond_0

    .line 38
    const-string/jumbo v0, "ZRetryPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logDoPatchServiceStart(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->getPatcherDownloadListener()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->downloadPatch(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    goto :goto_0
.end method
