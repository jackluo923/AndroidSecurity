.class public interface abstract Lcom/alipay/mobilechat/biz/outservice/rpc/api/ShareRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract shareAutsh(Lcom/alipay/mobilechat/biz/outservice/rpc/request/ShareAuthReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/ShareAuthResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.shareAuth"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
