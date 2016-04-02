.class public Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;
.super Ljava/lang/Object;


# instance fields
.field public agreementDesc:Ljava/lang/String;

.field public agreementUrl:Ljava/lang/String;

.field public authCode:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public resultStatus:I

.field public signStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgreementDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->agreementDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getAgreementUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->agreementUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->resultStatus:I

    return v0
.end method

.method public isSignStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->signStatus:Z

    return v0
.end method

.method public setAgreementDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->agreementDesc:Ljava/lang/String;

    return-void
.end method

.method public setAgreementUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->agreementUrl:Ljava/lang/String;

    return-void
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->authCode:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->memo:Ljava/lang/String;

    return-void
.end method

.method public setResultStatus(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->resultStatus:I

    return-void
.end method

.method public setSignStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/GetAuthStatusRes;->signStatus:Z

    return-void
.end method
