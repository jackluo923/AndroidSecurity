.class public interface abstract Lcom/alipay/publiccore/biz/service/impl/rpc/ComplainFacade;
.super Ljava/lang/Object;
.source "ComplainFacade.java"


# virtual methods
.method public abstract commitComplainInfomation(Lcom/alipay/publiccore/client/req/ComplainReq;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.complain.commitComplainInfomation"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
