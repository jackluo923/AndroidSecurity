.class public interface abstract Lcom/alipay/mobileprod/biz/group/rpc/ShareLBSRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract close(Lcom/alipay/mobileprod/biz/group/location/ShareLBSReq;)Lcom/alipay/mobileprod/biz/group/lotpay/res/BaseResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.close"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract open(Lcom/alipay/mobileprod/biz/group/location/ShareLBSReq;)Lcom/alipay/mobileprod/biz/group/lotpay/res/BaseResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.open"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract upload(Lcom/alipay/mobileprod/biz/group/location/ShareLBSReq;)Lcom/alipay/mobileprod/biz/group/lotpay/res/BaseResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.group.upload"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
