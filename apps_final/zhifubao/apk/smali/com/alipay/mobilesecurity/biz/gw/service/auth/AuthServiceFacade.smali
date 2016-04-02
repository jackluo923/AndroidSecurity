.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancelAccountAuth(Lcom/alipay/mobilesecurity/core/model/auth/AuthReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.account.auth.cancel"
    .end annotation
.end method

.method public abstract completeAuth(Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;)Lcom/alipay/mobilesecurity/core/model/auth/AuthBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileauth.auth.completeauth"
    .end annotation
.end method

.method public abstract detail(Lcom/alipay/mobilesecurity/core/model/auth/MobileAuthDetailReq;)Lcom/alipay/mobilesecurity/core/model/auth/MobileAuthDetailRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileauth.auth.detail"
    .end annotation
.end method

.method public abstract getAccountAuth(Lcom/alipay/mobilesecurity/core/model/auth/PageAuthReq;)Lcom/alipay/mobilesecurity/core/model/auth/AuthListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.account.auth.list"
    .end annotation
.end method

.method public abstract getAllValidAuth()Lcom/alipay/mobilesecurity/core/model/auth/AuthListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileauth.manage.list"
    .end annotation
.end method

.method public abstract removeAuth(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/auth/AuthBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileauth.manage.cancle"
    .end annotation
.end method

.method public abstract submitTid(Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/SubmitTidResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileauth.auth.submittid"
    .end annotation
.end method

.method public abstract upgradeAuth(Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;)Lcom/alipay/mobilesecurity/core/model/auth/AuthBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileauth.auth.upgrade"
    .end annotation
.end method
