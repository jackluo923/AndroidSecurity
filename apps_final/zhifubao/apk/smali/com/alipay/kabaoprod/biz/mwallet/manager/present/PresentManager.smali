.class public interface abstract Lcom/alipay/kabaoprod/biz/mwallet/manager/present/PresentManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyPresentPass(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.present.applyPresentPass"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getPresentMsg(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/manager/present/result/PresentMsgResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.present.getPresentMsg"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getPresentPassList(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;)Lcom/alipay/kabaoprod/biz/mwallet/manager/present/result/PresentInfoListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.present.getPresentPassList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract presentPass(Lcom/alipay/kabaoprod/biz/mwallet/manager/present/request/PresentPassReq;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.present.presentPass"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryPresentPassStatus(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassStatusQueryReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassStatusResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.present.queryPresentPassStatus"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
