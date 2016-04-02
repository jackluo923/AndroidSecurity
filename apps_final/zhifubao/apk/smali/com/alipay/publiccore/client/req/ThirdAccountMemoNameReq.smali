.class public Lcom/alipay/publiccore/client/req/ThirdAccountMemoNameReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "ThirdAccountMemoNameReq.java"


# instance fields
.field public agreementId:Ljava/lang/String;

.field public memoName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgreementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/publiccore/client/req/ThirdAccountMemoNameReq;->agreementId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/publiccore/client/req/ThirdAccountMemoNameReq;->memoName:Ljava/lang/String;

    return-object v0
.end method

.method public setAgreementId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/publiccore/client/req/ThirdAccountMemoNameReq;->agreementId:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setMemoName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/publiccore/client/req/ThirdAccountMemoNameReq;->memoName:Ljava/lang/String;

    .line 30
    return-void
.end method
