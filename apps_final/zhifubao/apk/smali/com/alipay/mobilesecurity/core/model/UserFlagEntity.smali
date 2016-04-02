.class public Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public headImgUrl:Ljava/lang/String;

.field public lastLoginTime:Ljava/util/Date;

.field public loginWithoutPwd:Z

.field public logonId:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->loginWithoutPwd:Z

    return-void
.end method


# virtual methods
.method public getHeadImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->headImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastLoginTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->lastLoginTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLogonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->logonId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public isLoginWithoutPwd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->loginWithoutPwd:Z

    return v0
.end method

.method public setHeadImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->headImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setLastLoginTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->lastLoginTime:Ljava/util/Date;

    return-void
.end method

.method public setLoginWithoutPwd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->loginWithoutPwd:Z

    return-void
.end method

.method public setLogonId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->logonId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->userType:Ljava/lang/String;

    return-void
.end method
