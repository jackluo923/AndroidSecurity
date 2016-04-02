.class public Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;
.super Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;
.source "ExternalDownloadManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownload(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V
    .locals 6

    .prologue
    .line 29
    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ExternalDownloadManagerImpl"

    const-string/jumbo v2, "\u4e0b\u8f7d\u5730\u5740\u4e3a\u7a7a\uff01"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/16 v0, 0x270f

    const-string/jumbo v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-interface {p2, p1, v0, v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 38
    new-instance v1, Landroid/content/Intent;

    .line 39
    const-class v2, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;

    .line 38
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string/jumbo v2, "command"

    .line 41
    const-string/jumbo v3, "add"

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 43
    if-eqz p2, :cond_3

    .line 44
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->registerCallback(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    .line 47
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "ExternalDownloadManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "downloadRequest.getDownloadUrl()\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 67
    new-instance v1, Landroid/content/Intent;

    .line 68
    const-class v2, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadIntentService;

    .line 67
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const-string/jumbo v2, "command"

    .line 70
    const-string/jumbo v3, "cancel"

    .line 69
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string/jumbo v2, "downloadUrl"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    :cond_0
    return-void
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 88
    invoke-static {p1}, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;->isDownloadTaskExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
