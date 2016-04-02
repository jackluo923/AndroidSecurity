.class public Lcom/alipay/mobile/common/patch/ZPatcher;
.super Lcom/alipay/mobile/common/patch/BasePatcher;
.source "ZPatcher.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ZPatcher"


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/TransportCallback;

.field protected mDownloadTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field patchTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/common/patch/BasePatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mDownloadTask:Ljava/util/concurrent/Future;

    .line 49
    new-instance v0, Lcom/alipay/mobile/common/patch/ZPatcher$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/patch/ZPatcher$1;-><init>(Lcom/alipay/mobile/common/patch/ZPatcher;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->patchTask:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/alipay/mobile/common/patch/ZPatcher$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/patch/ZPatcher$2;-><init>(Lcom/alipay/mobile/common/patch/ZPatcher;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 28
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZPatcher"

    const-string/jumbo v2, "ZPatcher init"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/patch/ZPatcher;)V
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ZPatcher"

    const-string/jumbo v2, "verifyNewFileMD5..."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mNewFileMD5:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ZPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logVerifyNewFileMD5Success(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->onSuccess(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "ZPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logVerifyNewFileMD5Fail(Ljava/lang/String;)V

    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public CancelTask()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mDownloadTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mDownloadTask:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mDownloadTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 169
    :cond_0
    return-void
.end method

.method protected downloadPatch(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->getPatchFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mPatchFilePath:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/ZPatcher;->delPatcherFile()V

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mOldFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    :cond_0
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ZPatcher"

    const-string/jumbo v3, "start downloadPatch..."

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v4, v4}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/ArrayList;)V

    .line 95
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setUseEtag(Z)V

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mDownloadTask:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method protected getPatchTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->patchTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getPatcherDownloadListener()Lcom/alipay/mobile/common/transport/TransportCallback;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    return-object v0
.end method

.method public startPatch()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/alipay/mobile/common/patch/ZPatcher;->isLoadLibrary:Z

    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo v0, "ZPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logDoPatchServiceStart(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/ZPatcher;->getPatcherDownloadListener()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->downloadPatch(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    goto :goto_0
.end method
