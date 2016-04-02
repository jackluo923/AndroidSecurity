.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/account/LoginLogServiceFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getLoginNotifyStatus(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginNotifyStatReq;)Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginNotifyStatRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.loginLog.getLoginNotifyStatus"
    .end annotation
.end method

.method public abstract getSimpleLoginLog(Lcom/alipay/mobilesecurity/core/model/account/loginLog/SimpleLoginLogReq;)Lcom/alipay/mobilesecurity/core/model/account/loginLog/SimpleLoginLogRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.loginLog.getSimpleLoginLog"
    .end annotation
.end method

.method public abstract queryLoginLogByPage(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogReq;)Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.loginLog.queryLog"
    .end annotation
.end method

.method public abstract setLoginNotifyStat(Lcom/alipay/mobilesecurity/core/model/account/loginLog/SetLoginNotifyStatReq;)Lcom/alipay/mobilesecurity/core/model/account/loginLog/SetLoginNotifyStatRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.loginLog.setLoginNotifyStat"
    .end annotation
.end method
