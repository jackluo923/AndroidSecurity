.class public interface abstract Lcom/alipay/mobileapp/biz/rpc/datatunnel/DataTunnelFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract checkResult(Ljava/util/List;)V
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.mobileapp.checkResult"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/datatunnel/vo/DownloadResultReq;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getResourceUrl(Lcom/alipay/mobileapp/biz/rpc/datatunnel/vo/ResourceMetaPackageRequest;)Lcom/alipay/mobileapp/biz/rpc/datatunnel/vo/ResourceMetaPackageResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.mobileapp.getResourceUrl"
    .end annotation
.end method
