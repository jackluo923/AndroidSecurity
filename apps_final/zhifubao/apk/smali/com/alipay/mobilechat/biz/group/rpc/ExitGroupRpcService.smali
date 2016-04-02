.class public interface abstract Lcom/alipay/mobilechat/biz/group/rpc/ExitGroupRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract exit(Ljava/lang/String;)Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.group.exitBySelf"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
