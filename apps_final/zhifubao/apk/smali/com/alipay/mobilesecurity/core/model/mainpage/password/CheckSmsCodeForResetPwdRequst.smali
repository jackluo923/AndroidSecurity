.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckSmsCodeForResetPwdRequst;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public bindedPhoneNo:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public randomNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindedPhoneNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckSmsCodeForResetPwdRequst;->bindedPhoneNo:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckSmsCodeForResetPwdRequst;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckSmsCodeForResetPwdRequst;->randomNo:Ljava/lang/String;

    return-object v0
.end method

.method public setBindedPhoneNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckSmsCodeForResetPwdRequst;->bindedPhoneNo:Ljava/lang/String;

    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckSmsCodeForResetPwdRequst;->loginId:Ljava/lang/String;

    return-void
.end method

.method public setRandomNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckSmsCodeForResetPwdRequst;->randomNo:Ljava/lang/String;

    return-void
.end method
