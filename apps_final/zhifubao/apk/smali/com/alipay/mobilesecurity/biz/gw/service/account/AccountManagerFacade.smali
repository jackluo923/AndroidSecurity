.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clearAccount(Lcom/alipay/mobilesecurity/core/model/Tid;Lcom/alipay/mobilesecurity/core/model/Tid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.accountmanager.clearAccount"
    .end annotation
.end method

.method public abstract clearAccountV2(Lcom/alipay/mobilesecurity/core/model/account/ClearAccountV2Req;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.accountmanager.clearAccountV2"
    .end annotation
.end method

.method public abstract getAccountList(Lcom/alipay/mobilesecurity/core/model/Tid;Lcom/alipay/mobilesecurity/core/model/Tid;)Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.accountmanager.getAccountList"
    .end annotation
.end method

.method public abstract getAccountListByMsp(Lcom/alipay/mobilesecurity/core/model/Tid;)Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.accountmanager.getAccountListByMsp"
    .end annotation
.end method

.method public abstract getAccountListV2(Lcom/alipay/mobilesecurity/core/model/account/GetAccountListV2Req;)Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.accountmanager.getAccountListV2"
    .end annotation
.end method

.method public abstract getUserHeaderImgUrl(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/account/GetUserHeaderImgUrlResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.accountmanager.getUserHeaderImgUrl"
    .end annotation
.end method

.method public abstract importAccountByTaobaoToken(Lcom/alipay/mobilesecurity/core/model/Tid;Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;)Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.accountmanager.importAccountByTaobaoToken"
    .end annotation
.end method

.method public abstract importMspAccount(Lcom/alipay/mobilesecurity/core/model/Tid;Lcom/alipay/mobilesecurity/core/model/Tid;)Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.accountmanager.importMspAccount"
    .end annotation
.end method

.method public abstract updateWalletLoginAuth(Lcom/alipay/mobilesecurity/core/model/Tid;Ljava/util/List;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.accountmanager.updateWalletLoginAuth"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilesecurity/core/model/Tid;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;"
        }
    .end annotation
.end method

.method public abstract verifyMspTidUser(Lcom/alipay/mobilesecurity/core/model/Tid;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.accountmanager.verifyMspTidUser"
    .end annotation
.end method
