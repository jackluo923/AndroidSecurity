.class public interface abstract Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryClientApp(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListReq;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mappconfig.queryClientApp"
    .end annotation
.end method

.method public abstract queryClientAppByPb(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mappconfig.queryClientApp.pb"
    .end annotation
.end method

.method public abstract queryClientAppParticular(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListReq;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mappconfig.queryClientAppParticular"
    .end annotation
.end method

.method public abstract userRankReport(Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mappconfig.userRankReport"
    .end annotation
.end method
