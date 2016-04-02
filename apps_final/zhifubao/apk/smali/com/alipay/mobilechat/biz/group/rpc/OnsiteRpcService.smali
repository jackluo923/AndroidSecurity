.class public interface abstract Lcom/alipay/mobilechat/biz/group/rpc/OnsiteRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract enter(Lcom/alipay/mobilechat/biz/group/rpc/request/OnsiteEnterReq;)Lcom/alipay/mobilechat/biz/group/rpc/response/GroupEnterResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.biz.group.onsiteEnterService"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract query(Lcom/alipay/mobilechat/biz/group/rpc/request/OnsiteQueryReq;)Lcom/alipay/mobilechat/biz/group/rpc/response/OnsiteQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.biz.group.onsiteQueryService"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
