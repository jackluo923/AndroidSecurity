.class public interface abstract Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryVersionMemo(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;)Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionMemoRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.queryVersionMemo"
    .end annotation
.end method

.method public abstract versionUpdateCheck(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;)Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.updateVersion"
    .end annotation
.end method
