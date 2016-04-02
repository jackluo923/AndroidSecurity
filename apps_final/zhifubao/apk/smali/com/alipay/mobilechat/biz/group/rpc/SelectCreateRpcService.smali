.class public interface abstract Lcom/alipay/mobilechat/biz/group/rpc/SelectCreateRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract create(Lcom/alipay/mobilechat/biz/group/rpc/request/SelectCreateReq;)Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.selectCreate"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
