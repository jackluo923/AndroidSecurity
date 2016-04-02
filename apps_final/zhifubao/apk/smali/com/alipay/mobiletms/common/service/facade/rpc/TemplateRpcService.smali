.class public interface abstract Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;
.super Ljava/lang/Object;
.source "TemplateRpcService.java"


# virtual methods
.method public abstract loadTemplateList(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/LoadTemplateListRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.mobiletms.loadTemplateList"
    .end annotation
.end method

.method public abstract queryDemo(Lcom/alipay/mobiletms/common/service/facade/rpc/DemoReq;)Lcom/alipay/mobiletms/common/service/facade/rpc/DemoRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.mobiletms.queryDemo"
    .end annotation
.end method

.method public abstract queryTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReq;)Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.mobiletms.queryTemplate"
    .end annotation
.end method

.method public abstract queryTemplateListByTag(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.mobiletms.queryTemplateListByTag"
    .end annotation
.end method
