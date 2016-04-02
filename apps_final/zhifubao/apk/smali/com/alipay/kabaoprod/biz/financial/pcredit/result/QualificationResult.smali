.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public agreementUrl:Ljava/lang/String;

.field public billingDate:Ljava/lang/String;

.field public creditAmount:Ljava/lang/String;

.field public repayDueDate:Ljava/lang/String;

.field public signMemos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgreementUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->agreementUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->billingDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->creditAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getRepayDueDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->repayDueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSignMemos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->signMemos:Ljava/util/List;

    return-object v0
.end method

.method public setAgreementUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->agreementUrl:Ljava/lang/String;

    return-void
.end method

.method public setBillingDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->billingDate:Ljava/lang/String;

    return-void
.end method

.method public setCreditAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->creditAmount:Ljava/lang/String;

    return-void
.end method

.method public setRepayDueDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->repayDueDate:Ljava/lang/String;

    return-void
.end method

.method public setSignMemos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/QualificationResult;->signMemos:Ljava/util/List;

    return-void
.end method
