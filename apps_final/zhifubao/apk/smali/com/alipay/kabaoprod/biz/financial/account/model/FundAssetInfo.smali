.class public Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;


# instance fields
.field public freezeFund:Z

.field public hasFundAccount:Z

.field public opText:Ljava/lang/String;

.field public previousProfit:Ljava/lang/String;

.field public totalAmount:Ljava/lang/String;

.field public totalProfit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getOpText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->opText:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousProfit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->previousProfit:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->totalAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalProfit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->totalProfit:Ljava/lang/String;

    return-object v0
.end method

.method public isFreezeFund()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->freezeFund:Z

    return v0
.end method

.method public isHasFundAccount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->hasFundAccount:Z

    return v0
.end method

.method public setFreezeFund(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->freezeFund:Z

    return-void
.end method

.method public setHasFundAccount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->hasFundAccount:Z

    return-void
.end method

.method public setOpText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->opText:Ljava/lang/String;

    return-void
.end method

.method public setPreviousProfit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->previousProfit:Ljava/lang/String;

    return-void
.end method

.method public setTotalAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->totalAmount:Ljava/lang/String;

    return-void
.end method

.method public setTotalProfit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;->totalProfit:Ljava/lang/String;

    return-void
.end method
