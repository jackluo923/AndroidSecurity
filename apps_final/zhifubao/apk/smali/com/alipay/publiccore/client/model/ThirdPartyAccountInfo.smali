.class public Lcom/alipay/publiccore/client/model/ThirdPartyAccountInfo;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "ThirdPartyAccountInfo.java"


# instance fields
.field private agreementId:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private memoName:Ljava/lang/String;

.field private realName:Ljava/lang/String;

.field private thirdAccountId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgreementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/ThirdPartyAccountInfo;->agreementId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/ThirdPartyAccountInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/ThirdPartyAccountInfo;->memoName:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/ThirdPartyAccountInfo;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/ThirdPartyAccountInfo;->thirdAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public setAgreementId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/ThirdPartyAccountInfo;->agreementId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/ThirdPartyAccountInfo;->displayName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setMemoName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/ThirdPartyAccountInfo;->memoName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/ThirdPartyAccountInfo;->realName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setThirdAccountId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/ThirdPartyAccountInfo;->thirdAccountId:Ljava/lang/String;

    .line 20
    return-void
.end method
