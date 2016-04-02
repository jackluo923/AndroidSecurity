.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;


# instance fields
.field public billNo:Ljava/lang/String;

.field public billPeriodMonth:Ljava/lang/String;

.field public billPeriodYear:Ljava/lang/String;

.field public hasSettled:Z

.field public settledBalance:Ljava/lang/String;

.field public totalRepayAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;->billNo:Ljava/lang/String;

    return-object v0
.end method

.method public getBillPeriodMonth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;->billPeriodMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getBillPeriodYear()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;->billPeriodYear:Ljava/lang/String;

    return-object v0
.end method

.method public getSettledBalance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;->settledBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalRepayAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;->totalRepayAmount:Ljava/lang/String;

    return-object v0
.end method

.method public isHasSettled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;->hasSettled:Z

    return v0
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;->billNo:Ljava/lang/String;

    return-void
.end method

.method public setBillPeriodMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;->billPeriodMonth:Ljava/lang/String;

    return-void
.end method

.method public setBillPeriodYear(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;->billPeriodYear:Ljava/lang/String;

    return-void
.end method

.method public setHasSettled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;->hasSettled:Z

    return-void
.end method

.method public setSettledBalance(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;->settledBalance:Ljava/lang/String;

    return-void
.end method

.method public setTotalRepayAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;->totalRepayAmount:Ljava/lang/String;

    return-void
.end method
