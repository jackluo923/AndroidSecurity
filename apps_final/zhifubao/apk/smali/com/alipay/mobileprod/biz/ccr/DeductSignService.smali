.class public interface abstract Lcom/alipay/mobileprod/biz/ccr/DeductSignService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract modifyDeduct(Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;)Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.modifyDeduct"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract signDeduct(Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductReq;)Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.signDeduct"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract unsignDeduct(Lcom/alipay/mobileprod/biz/ccr/vo/CancelDeductReq;)Lcom/alipay/mobileprod/biz/ccr/vo/CancelDeductResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.home.ccr.unsignDeduct"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
