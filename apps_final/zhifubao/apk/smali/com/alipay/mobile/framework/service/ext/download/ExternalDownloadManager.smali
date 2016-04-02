.class public abstract Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "ExternalDownloadManager.java"


# static fields
.field public static final AUTO_DELETED_PREFIX:Ljava/lang/String; = "yapila2233_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addDownload(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V
.end method

.method public abstract cancel(Ljava/lang/String;)V
.end method

.method public abstract isDownloading(Ljava/lang/String;)Z
.end method
