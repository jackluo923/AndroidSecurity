.class public Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "OfficialAccountLinkResult.java"


# instance fields
.field private errMsg:Ljava/lang/String;

.field private isSuccess:Z

.field private officialAccountId:Ljava/lang/String;

.field private resultLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficialAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->officialAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getResultLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->resultLink:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->isSuccess:Z

    return v0
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->errMsg:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setOfficialAccountId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->officialAccountId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setResultLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->resultLink:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->isSuccess:Z

    .line 56
    return-void
.end method
