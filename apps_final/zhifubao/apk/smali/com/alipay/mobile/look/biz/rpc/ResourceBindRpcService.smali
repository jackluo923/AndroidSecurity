.class public interface abstract Lcom/alipay/mobile/look/biz/rpc/ResourceBindRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract bindToBiz(Lcom/alipay/mobile/look/biz/rpc/ResourceBindToBizRequest;)Lcom/alipay/mobile/look/biz/rpc/ResourceBindToBizResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.resourcebind.bindToBiz"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract bindToUser(Lcom/alipay/mobile/look/biz/rpc/ResourceBindToUserRequest;)Lcom/alipay/mobile/look/biz/rpc/ResourceBindToUserResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.resourcebind.bindToUser"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
