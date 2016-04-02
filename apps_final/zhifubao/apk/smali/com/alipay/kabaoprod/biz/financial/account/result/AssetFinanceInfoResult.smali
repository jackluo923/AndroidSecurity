.class public Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public bankAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;

.field public cardCount:I

.field public contextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public freezeBank:Z

.field public freezeCredit:Z

.field public fundAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;

.field public hiddenBank:Z

.field public hiddenCredit:Z

.field public hiddenFund:Z

.field public markBank:Z

.field public markCredit:Z

.field public markFund:Z

.field public pcreditAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankAssetInfo()Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->bankAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;

    return-object v0
.end method

.method public getCardCount()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->cardCount:I

    return v0
.end method

.method public getContextMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->contextMap:Ljava/util/Map;

    return-object v0
.end method

.method public getFundAssetInfo()Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->fundAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;

    return-object v0
.end method

.method public getPcreditAssetInfo()Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->pcreditAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;

    return-object v0
.end method

.method public isFreezeBank()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->freezeBank:Z

    return v0
.end method

.method public isFreezeCredit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->freezeCredit:Z

    return v0
.end method

.method public isHiddenBank()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->hiddenBank:Z

    return v0
.end method

.method public isHiddenCredit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->hiddenCredit:Z

    return v0
.end method

.method public isHiddenFund()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->hiddenFund:Z

    return v0
.end method

.method public isMarkBank()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->markBank:Z

    return v0
.end method

.method public isMarkCredit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->markCredit:Z

    return v0
.end method

.method public isMarkFund()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->markFund:Z

    return v0
.end method

.method public setBankAssetInfo(Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->bankAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/BankAssetInfo;

    return-void
.end method

.method public setCardCount(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->cardCount:I

    return-void
.end method

.method public setContextMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->contextMap:Ljava/util/Map;

    return-void
.end method

.method public setFreezeBank(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->freezeBank:Z

    return-void
.end method

.method public setFreezeCredit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->freezeCredit:Z

    return-void
.end method

.method public setFundAssetInfo(Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->fundAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/FundAssetInfo;

    return-void
.end method

.method public setHiddenBank(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->hiddenBank:Z

    return-void
.end method

.method public setHiddenCredit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->hiddenCredit:Z

    return-void
.end method

.method public setHiddenFund(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->hiddenFund:Z

    return-void
.end method

.method public setMarkBank(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->markBank:Z

    return-void
.end method

.method public setMarkCredit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->markCredit:Z

    return-void
.end method

.method public setMarkFund(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->markFund:Z

    return-void
.end method

.method public setPcreditAssetInfo(Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetFinanceInfoResult;->pcreditAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/PcreditAssetInfo;

    return-void
.end method
