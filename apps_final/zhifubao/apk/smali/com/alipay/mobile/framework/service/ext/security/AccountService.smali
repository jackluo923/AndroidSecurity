.class public abstract Lcom/alipay/mobile/framework/service/ext/security/AccountService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
.end method

.method public abstract cleanAccount(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/AccountCallBack;)V
.end method

.method public abstract cleanLocalAccountByUserId(Ljava/lang/String;)Z
.end method

.method public abstract getAutoLoginAlipayUser()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentLoginLogonId()Ljava/lang/String;
.end method

.method public abstract getCurrentLoginState()Z
.end method

.method public abstract getCurrentLoginUserId()Ljava/lang/String;
.end method

.method public abstract getLoginedAlipayUser()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
.end method

.method public abstract importUserList2DB(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginPwdValidate(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/AccountCallBack;)V
.end method

.method public abstract payPwdValidate(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/AccountCallBack;)V
.end method

.method public abstract queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
.end method

.method public abstract queryAccountList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCurrentLoginLogonId(Ljava/lang/String;)V
.end method

.method public abstract setCurrentLoginState(Ljava/lang/String;)V
.end method

.method public abstract setCurrentLoginUserId(Ljava/lang/String;)V
.end method

.method public abstract updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
.end method
