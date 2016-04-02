.class public interface abstract Lcom/alipay/mobileinno/common/service/facade/sns/SNSApiService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createSNSByMessage(Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;)Lcom/alipay/mobileinno/common/service/facade/sns/model/SNSOperationResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileinno.sns.createSNSByMessage"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createShortLinkByMessage(Lcom/alipay/mobileinno/common/service/facade/sns/model/MessageRPCRequest;)Lcom/alipay/mobileinno/common/service/facade/sns/model/ShortLinkOperationResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileinno.sns.createShortLinkByMessage"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
