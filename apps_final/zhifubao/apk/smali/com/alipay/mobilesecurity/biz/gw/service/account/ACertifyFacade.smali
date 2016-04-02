.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/account/ACertifyFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract certifyAppeal(Lcom/alipay/mobilesecurity/core/model/account/certify/CertifyAppealReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/CertifyAppealRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.aCertify.certifyAppeal"
    .end annotation
.end method

.method public abstract certifyAppealValidate(Lcom/alipay/mobilesecurity/core/model/account/certify/CertifyAppealValidateReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/CertifyAppealValidateRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.aCertify.certifyAppealValidate"
    .end annotation
.end method

.method public abstract doubleCertificatesAudit(Lcom/alipay/mobilesecurity/core/model/account/certify/DoubleCertificatesAuditReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/DoubleCertificatesAuditRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.aCertify.doubleCertificatesAudit"
    .end annotation
.end method

.method public abstract submitACertifyInfo(Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyReq;)Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.aCertify.submitACertifyInfo"
    .end annotation
.end method
