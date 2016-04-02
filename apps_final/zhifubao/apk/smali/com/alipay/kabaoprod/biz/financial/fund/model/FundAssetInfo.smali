.class public Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;


# instance fields
.field public historyProfit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/fund/model/FundTradeRecord;",
            ">;"
        }
    .end annotation
.end field

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
.method public getHistoryProfit()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/fund/model/FundTradeRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->historyProfit:Ljava/util/List;

    return-object v0
.end method

.method public getPreviousProfit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->previousProfit:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->totalAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalProfit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->totalProfit:Ljava/lang/String;

    return-object v0
.end method

.method public setHistoryProfit(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/fund/model/FundTradeRecord;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->historyProfit:Ljava/util/List;

    return-void
.end method

.method public setPreviousProfit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->previousProfit:Ljava/lang/String;

    return-void
.end method

.method public setTotalAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->totalAmount:Ljava/lang/String;

    return-void
.end method

.method public setTotalProfit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetInfo;->totalProfit:Ljava/lang/String;

    return-void
.end method
