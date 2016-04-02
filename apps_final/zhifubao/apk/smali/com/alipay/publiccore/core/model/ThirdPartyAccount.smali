.class public Lcom/alipay/publiccore/core/model/ThirdPartyAccount;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "ThirdPartyAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agreementId:Ljava/lang/String;

.field public authTime:Ljava/util/Date;

.field public displayName:Ljava/lang/String;

.field public extValue:Ljava/lang/String;

.field public last4CardNo:Ljava/lang/String;

.field public memoName:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public realName:Ljava/lang/String;

.field public showName:Ljava/lang/String;

.field public showNameDescribe:Ljava/lang/String;

.field public thirdAccountId:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgreementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->agreementId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->authTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLast4CardNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->last4CardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->memoName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->thirdAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAgreementId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->agreementId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setAuthTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->authTime:Ljava/util/Date;

    .line 48
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->displayName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setLast4CardNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->last4CardNo:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setMemoName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->memoName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->publicId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->realName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setThirdAccountId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->thirdAccountId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->userId:Ljava/lang/String;

    .line 24
    return-void
.end method
