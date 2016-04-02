.class public Lcom/alipay/mobile/common/transport/download/DownloadRequest;
.super Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
.source "DownloadRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->b:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->b:Z

    .line 43
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setPath(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->b:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isRedownload()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->b:Z

    return v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not set valid path."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->a:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setRedownload(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->b:Z

    .line 72
    return-void
.end method
