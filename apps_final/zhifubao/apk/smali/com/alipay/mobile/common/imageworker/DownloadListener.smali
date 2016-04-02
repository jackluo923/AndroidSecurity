.class public abstract Lcom/alipay/mobile/common/imageworker/DownloadListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

.field private rawPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/imageworker/DownloadListener;->rawPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/imageworker/DownloadListener;->callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    return-void
.end method


# virtual methods
.method public getRawPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/DownloadListener;->rawPath:Ljava/lang/String;

    return-object v0
.end method

.method public onCancelled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/DownloadListener;->callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/DownloadListener;->callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/DownloadListener;->rawPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;->onCancel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/DownloadListener;->callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/DownloadListener;->callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/DownloadListener;->rawPath:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;->onFailure(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract onPostExecute(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public onPreLoad(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;D)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/DownloadListener;->callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/DownloadListener;->callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/DownloadListener;->rawPath:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;->onProgress(Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method public setRawPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/imageworker/DownloadListener;->rawPath:Ljava/lang/String;

    return-void
.end method
