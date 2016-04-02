.class public interface abstract Lcom/alipay/mobilechat/biz/outservice/rpc/api/HeartbeatRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract inputReport(Lcom/alipay/mobilechat/biz/outservice/rpc/request/InputReportReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.repInput"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
