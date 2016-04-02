.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;


# instance fields
.field public certified:Z

.field public imageCode:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public smsCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->imageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->smsCode:Ljava/lang/String;

    return-object v0
.end method

.method public isCertified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->certified:Z

    return v0
.end method

.method public setCertified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->certified:Z

    return-void
.end method

.method public setImageCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->imageCode:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setSmsCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->smsCode:Ljava/lang/String;

    return-void
.end method
