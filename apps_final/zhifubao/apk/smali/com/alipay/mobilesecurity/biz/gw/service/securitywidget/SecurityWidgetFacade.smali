.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getHomeData(Lcom/alipay/mobilesecurity/core/model/mainpage/homedata/AccountSecurityHomeDataReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/homedata/AccountSecurityHomeDataRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.homedata.getHomeData"
    .end annotation
.end method

.method public abstract getImageCode(Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeRequst;)Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.login.getImageCode"
    .end annotation
.end method

.method public abstract getMobilePwdIndex(Lcom/alipay/mobilesecurity/core/model/mainpage/password/MobilePwdIndexReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/MobilePwdIndexResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.index.getMobilePwdIndex"
    .end annotation
.end method

.method public abstract getQuickHelp(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.account.getQuickHelp"
    .end annotation
.end method

.method public abstract queryAccountSecurityCheckResult(Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.account.queryAccountSecurityCheckResult"
    .end annotation
.end method

.method public abstract queryAccountSecurityLevel(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.account.queryAccountSecurityLevel"
    .end annotation
.end method

.method public abstract queryOperationsLog(Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.operations.queryOperationsLog"
    .end annotation
.end method

.method public abstract securityCheck(Lcom/alipay/mobilesecurity/core/model/mainpage/level/SecurityCheckReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/level/QueryAccountSecurityLevelResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.account.securityCheck"
    .end annotation
.end method
