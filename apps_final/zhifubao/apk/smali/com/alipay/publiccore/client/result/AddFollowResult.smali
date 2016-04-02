.class public Lcom/alipay/publiccore/client/result/AddFollowResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "AddFollowResult.java"


# instance fields
.field private officialHomeListResult:Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

.field private userAccountLayoutResult:Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getOfficialHomeListResult()Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/publiccore/client/result/AddFollowResult;->officialHomeListResult:Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

    return-object v0
.end method

.method public getUserAccountLayoutResult()Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/publiccore/client/result/AddFollowResult;->userAccountLayoutResult:Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;

    return-object v0
.end method

.method public setOfficialHomeListResult(Lcom/alipay/publiccore/client/result/OfficialHomeListResult;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alipay/publiccore/client/result/AddFollowResult;->officialHomeListResult:Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

    .line 19
    return-void
.end method

.method public setUserAccountLayoutResult(Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/publiccore/client/result/AddFollowResult;->userAccountLayoutResult:Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;

    .line 31
    return-void
.end method
