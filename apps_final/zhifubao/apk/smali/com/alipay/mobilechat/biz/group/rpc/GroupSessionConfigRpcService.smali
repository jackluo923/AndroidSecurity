.class public interface abstract Lcom/alipay/mobilechat/biz/group/rpc/GroupSessionConfigRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract configSession(Lcom/alipay/mobilechat/biz/group/rpc/request/GroupSessionConfigReq;)Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.modifySessionConfig"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
