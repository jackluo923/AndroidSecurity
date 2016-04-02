.class public abstract Lcom/alipay/mobile/common/patch/BasePatcher;
.super Ljava/lang/Object;
.source "BasePatcher.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BasePatcher"

.field protected static isLoadLibrary:Z


# instance fields
.field protected mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

.field protected mContext:Landroid/content/Context;

.field protected mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

.field protected mExecutor:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

.field protected mHandler:Landroid/os/Handler;

.field protected mNewFileMD5:Ljava/lang/String;

.field protected mNewFilePath:Ljava/lang/String;

.field protected mOldFilePath:Ljava/lang/String;

.field protected mPatchFileMD5:Ljava/lang/String;

.field protected mPatchFilePath:Ljava/lang/String;

.field protected mPatchFileUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/patch/BasePatcher;->isLoadLibrary:Z

    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/patch/BasePatcher;->initLibrary()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    .line 35
    iput-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p2, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mNewFilePath:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mOldFilePath:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mPatchFileUrl:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mNewFileMD5:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mPatchFileMD5:Ljava/lang/String;

    .line 58
    iput-object p7, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mHandler:Landroid/os/Handler;

    .line 63
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadManager;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mExecutor:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    .line 65
    return-void
.end method

.method protected static initLibrary()V
    .locals 4

    .prologue
    .line 39
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/alipay/mobile/common/patch/BasePatcher;->isLoadLibrary:Z

    .line 40
    const-string/jumbo v0, "patcher"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BasePatcher"

    const-string/jumbo v2, "load so success"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BasePatcher"

    const-string/jumbo v3, "load so fail!!"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/common/patch/BasePatcher;->isLoadLibrary:Z

    .line 45
    const-string/jumbo v1, "loadLibrary-Fail-BasePatcher"

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLog(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BasePatcher"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BasePatcher"

    const-string/jumbo v3, "param is empty"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    return v0

    .line 190
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-static {p4, v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 193
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BasePatcher"

    const-string/jumbo v3, "verifyPatchMD5 fail"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "BasePatcher"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 198
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/patch/PatchUtils;->IsCanUseSdCard()Z

    move-result v2

    if-nez v2, :cond_3

    .line 199
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BasePatcher"

    const-string/jumbo v3, "IsCanUseSdCard false"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/PatchUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 204
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BasePatcher"

    const-string/jumbo v3, "mOldFilePath is not exists"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/patch/PatchUtils;->isEnoughSpaceDoPatch(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 210
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BasePatcher"

    const-string/jumbo v3, "space is not enough to patch"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_5
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/PatchUtils;->creatFileDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 216
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BasePatcher"

    const-string/jumbo v3, "mNewFilePath can not creat"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_6
    const-string/jumbo v1, "BasePatcher"

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogStart(Ljava/lang/String;)V

    .line 222
    invoke-static {p1, p0, p2}, Lcom/dodola/patcher/utils/AppUtils;->patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 225
    if-nez v1, :cond_8

    .line 226
    const-string/jumbo v1, "BasePatcher"

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogSuccess(Ljava/lang/String;)V

    .line 227
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-static {p3, v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 229
    const-string/jumbo v1, "BasePatcher"

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logVerifyNewFileMD5Success(Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 232
    :cond_7
    const-string/jumbo v1, "BasePatcher"

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logVerifyNewFileMD5Fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :cond_8
    const-string/jumbo v1, "BasePatcher"

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogFail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static patcherDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 173
    sget-boolean v0, Lcom/alipay/mobile/common/patch/BasePatcher;->isLoadLibrary:Z

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->patchDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public abstract CancelTask()V
.end method

.method protected applyPatch()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mExecutor:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/BasePatcher;->getPatchTask()Ljava/lang/Runnable;

    move-result-object v1

    const-string/jumbo v2, "applyPatch"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected delNewFile()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mNewFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected delPatcherFile()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mPatchFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method protected destory()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->close()V

    .line 143
    :cond_0
    return-void
.end method

.method protected abstract downloadPatch(Lcom/alipay/mobile/common/transport/TransportCallback;)V
.end method

.method protected abstract getPatchTask()Ljava/lang/Runnable;
.end method

.method public abstract getPatcherDownloadListener()Lcom/alipay/mobile/common/transport/TransportCallback;
.end method

.method protected onFail(I)V
    .locals 4

    .prologue
    .line 153
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BasePatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onFail "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/patch/PatchCallBack;->onFail(I)V

    .line 157
    :cond_0
    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 146
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BasePatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSuccess "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/patch/PatchCallBack;->onSuccess(Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method

.method public abstract startPatch()V
.end method

.method protected updateDownloadNewFileProgress(D)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/patch/PatchCallBack;->onDownloadNewFileProgressUpdate(D)V

    .line 169
    :cond_0
    return-void
.end method

.method protected updateDownloadPatchProgress(D)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/patch/PatchCallBack;->onDownloadPatchProgressUpdate(D)V

    .line 163
    :cond_0
    return-void
.end method

.method protected verifyPatchBeforeApply()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/patch/PatchUtils;->getPatchFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    :goto_0
    return v0

    .line 90
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mPatchFilePath:Ljava/lang/String;

    .line 92
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/patch/BasePatcher;->verifyPatchMD5(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BasePatcher"

    const-string/jumbo v3, "verifyPatchMD5 fail"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "verifyPatchMD5-Fail-BasePatcher"

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLog(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/patch/PatchUtils;->IsCanUseSdCard()Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BasePatcher"

    const-string/jumbo v3, "IsCanUseSdCard false"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mOldFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BasePatcher"

    const-string/jumbo v3, "mOldFilePath is not exists"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_3
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mOldFilePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {v2, v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->isEnoughSpaceDoPatch(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BasePatcher"

    const-string/jumbo v3, "space is not enough to patch"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mNewFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->creatFileDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BasePatcher"

    const-string/jumbo v3, "mNewFilePath can not creat"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected verifyPatchMD5(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mPatchFileMD5:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
