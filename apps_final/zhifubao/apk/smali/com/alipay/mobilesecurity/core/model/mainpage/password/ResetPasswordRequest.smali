.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public businessMobileValidateStatus:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public pwd:Ljava/lang/String;

.field public pwdType:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->businessMobileValidateStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getPwdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->pwdType:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Lcom/alipay/mobilesecurity/core/model/Tid;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-object v0
.end method

.method public setBusinessMobileValidateStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->businessMobileValidateStatus:Ljava/lang/String;

    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->loginId:Ljava/lang/String;

    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->pwd:Ljava/lang/String;

    return-void
.end method

.method public setPwdType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->pwdType:Ljava/lang/String;

    return-void
.end method

.method public setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-void
.end method
