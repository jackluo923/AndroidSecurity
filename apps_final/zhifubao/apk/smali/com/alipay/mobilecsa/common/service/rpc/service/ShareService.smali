.class public interface abstract Lcom/alipay/mobilecsa/common/service/rpc/service/ShareService;
.super Ljava/lang/Object;
.source "ShareService.java"


# virtual methods
.method public abstract publishShareInfo(Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.publishShareInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryShareInfo(Lcom/alipay/mobilecsa/common/service/rpc/request/ShareInfoQueryRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/ShareInfoQueryResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.queryShareInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
