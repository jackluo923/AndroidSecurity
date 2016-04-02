.class public Lcom/alipay/kabaoprod/biz/financial/fund/model/FundAssetAccountInfo;
.super Lcom/alipay/kabaoprod/biz/financial/fund/model/FundBaseAssetAccountInfo;

# interfaces
.implements Ljava/io/Serializable;


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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundBaseAssetAccountInfo;-><init>()V

    return-void
.end method
