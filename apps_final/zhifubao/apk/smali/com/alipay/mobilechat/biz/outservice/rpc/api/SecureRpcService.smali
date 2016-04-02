.class public interface abstract Lcom/alipay/mobilechat/biz/outservice/rpc/api/SecureRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract complain(Lcom/alipay/mobilechat/biz/outservice/rpc/request/ComplainReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.complain"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
