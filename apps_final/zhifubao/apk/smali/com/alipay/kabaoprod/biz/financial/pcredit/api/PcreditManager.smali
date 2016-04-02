.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/pcredit/api/PcreditManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyRepay(Lcom/alipay/kabaoprod/biz/financial/pcredit/request/ApplyRepayRequest;)Lcom/alipay/kabaoprod/biz/financial/pcredit/result/ApplyRepayResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.applyrepay"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract checkIsSigned()Lcom/alipay/kabaoprod/biz/financial/pcredit/result/CheckSignResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.checkIsSigned"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract qualificationCheck()Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.qulificationCheck"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract sendSmsCode()Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.sendsmscode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract sign(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditSignResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.sign"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract signValidate(Lcom/alipay/kabaoprod/biz/financial/pcredit/request/SignValidateReq;)Lcom/alipay/kabaoprod/biz/financial/pcredit/result/SignValidateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.signValidate"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
