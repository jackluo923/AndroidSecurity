.class public Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public authCode:Ljava/lang/String;

.field public bindMobile:Ljava/lang/String;

.field public isp:Ljava/lang/String;

.field public logonId:Ljava/lang/String;

.field public paymentPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBindMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->bindMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getIsp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->isp:Ljava/lang/String;

    return-object v0
.end method

.method public getLogonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->logonId:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentPwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->paymentPwd:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->authCode:Ljava/lang/String;

    return-void
.end method

.method public setBindMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->bindMobile:Ljava/lang/String;

    return-void
.end method

.method public setIsp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->isp:Ljava/lang/String;

    return-void
.end method

.method public setLogonId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->logonId:Ljava/lang/String;

    return-void
.end method

.method public setPaymentPwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;->paymentPwd:Ljava/lang/String;

    return-void
.end method
