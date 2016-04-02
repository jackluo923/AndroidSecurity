.class public Lcom/alipay/mobile/framework/service/common/impl/DownloadServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/DownloadService;
.source "DownloadServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/download/DownloadManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/DownloadService;-><init>()V

    .line 25
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DownloadServiceImpl;->a:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    .line 26
    return-void
.end method


# virtual methods
.method public addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/download/DownloadRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DownloadServiceImpl;->a:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/common/transport/TransportCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Lcom/alipay/mobile/common/transport/TransportCallback;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DownloadServiceImpl;->a:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/common/transport/TransportCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/DownloadServiceImpl;->a:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->close()V

    .line 48
    return-void
.end method
