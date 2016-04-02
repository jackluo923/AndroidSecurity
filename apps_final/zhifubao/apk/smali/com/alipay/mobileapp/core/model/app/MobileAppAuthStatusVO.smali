.class public Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;
.super Ljava/lang/Object;


# instance fields
.field private agreementDesc:Ljava/lang/String;

.field private agreementUrl:Ljava/lang/String;

.field private authCode:Ljava/lang/String;

.field private resultCode:I

.field private signStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->resultCode:I

    return-void
.end method


# virtual methods
.method public getAgreementDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->agreementDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getAgreementUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->agreementUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->resultCode:I

    return v0
.end method

.method public isSignStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->signStatus:Z

    return v0
.end method

.method public setAgreementDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->agreementDesc:Ljava/lang/String;

    return-void
.end method

.method public setAgreementUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->agreementUrl:Ljava/lang/String;

    return-void
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->authCode:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->resultCode:I

    return-void
.end method

.method public setSignStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->signStatus:Z

    return-void
.end method
