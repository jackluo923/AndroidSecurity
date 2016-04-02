.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;


# instance fields
.field public billAmount:Ljava/lang/String;

.field public billNo:Ljava/lang/String;

.field public billPeriod:Ljava/lang/String;

.field public billingDate:Ljava/lang/String;

.field public dueDate:Ljava/lang/String;

.field public oldBill:Z

.field public paymentCount:I

.field public repayedAmount:Ljava/lang/String;

.field public totalRepayAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->oldBill:Z

    return-void
.end method


# virtual methods
.method public getBillAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billNo:Ljava/lang/String;

    return-object v0
.end method

.method public getBillPeriod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billingDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDueDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->dueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentCount()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->paymentCount:I

    return v0
.end method

.method public getRepayedAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->repayedAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalRepayAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->totalRepayAmount:Ljava/lang/String;

    return-object v0
.end method

.method public isOldBill()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->oldBill:Z

    return v0
.end method

.method public setBillAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billAmount:Ljava/lang/String;

    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billNo:Ljava/lang/String;

    return-void
.end method

.method public setBillPeriod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billPeriod:Ljava/lang/String;

    return-void
.end method

.method public setBillingDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->billingDate:Ljava/lang/String;

    return-void
.end method

.method public setDueDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->dueDate:Ljava/lang/String;

    return-void
.end method

.method public setOldBill(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->oldBill:Z

    return-void
.end method

.method public setPaymentCount(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->paymentCount:I

    return-void
.end method

.method public setRepayedAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->repayedAmount:Ljava/lang/String;

    return-void
.end method

.method public setTotalRepayAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillStatement;->totalRepayAmount:Ljava/lang/String;

    return-void
.end method
