.class public interface abstract Lcom/alipay/kabaoprod/biz/financial/bankcard/api/ExpressValidateManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract resendCheckCode(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.express.resendCheckCode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract signValidate(Lcom/alipay/kabaoprod/biz/financial/bankcard/request/SignValidateReq;)Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.express.signValidate"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
