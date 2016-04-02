.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public businessMobileValidateStatus:Ljava/lang/String;

.field public cellID:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public prisonBreak:Z

.field public pwd:Ljava/lang/String;

.field public resetPwd:Z

.field public smsAuth:Z

.field public tid:Lcom/alipay/mobilesecurity/core/model/Tid;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getBusinessMobileValidateStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->businessMobileValidateStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getCellID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->cellID:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->smsAuth:Z

    return v0
.end method

.method public getTid()Lcom/alipay/mobilesecurity/core/model/Tid;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-object v0
.end method

.method public isPrisonBreak()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->prisonBreak:Z

    return v0
.end method

.method public isResetPwd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->resetPwd:Z

    return v0
.end method

.method public setBusinessMobileValidateStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->businessMobileValidateStatus:Ljava/lang/String;

    return-void
.end method

.method public setCellID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->cellID:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->code:Ljava/lang/String;

    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->loginId:Ljava/lang/String;

    return-void
.end method

.method public setPrisonBreak(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->prisonBreak:Z

    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->pwd:Ljava/lang/String;

    return-void
.end method

.method public setResetPwd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->resetPwd:Z

    return-void
.end method

.method public setSmsAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->smsAuth:Z

    return-void
.end method

.method public setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-void
.end method
