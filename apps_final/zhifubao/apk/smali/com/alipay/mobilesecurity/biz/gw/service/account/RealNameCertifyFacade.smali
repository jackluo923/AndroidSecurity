.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/account/RealNameCertifyFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract associateVerify(Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.realName.associateVerify"
    .end annotation
.end method

.method public abstract checkCertifyByMsp(Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/CheckCertifyByMspRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.realName.checkCertifyByMsp"
    .end annotation
.end method

.method public abstract fastVerify(Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.realName.fastVerify"
    .end annotation
.end method

.method public abstract preCertifyCheck(Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyPreCheckRequest;)Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyPreCheckResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.realName.preCertifyCheck"
    .end annotation
.end method

.method public abstract queryRealNameCertifyProcedure(Lcom/alipay/mobilesecurity/core/model/account/UserReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.realName.queryRealNameCertifyProcedure"
    .end annotation
.end method

.method public abstract queryRealNameCertifyStatus(Lcom/alipay/mobilesecurity/core/model/account/UserReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.realName.queryRealNameCertifyStatus"
    .end annotation
.end method

.method public abstract snatchVerify(Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.realName.snatchVerify"
    .end annotation
.end method

.method public abstract verifyCertifyByMsp(Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/VerifyCertifyByMspRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.realName.verifyCertifyByMsp"
    .end annotation
.end method
