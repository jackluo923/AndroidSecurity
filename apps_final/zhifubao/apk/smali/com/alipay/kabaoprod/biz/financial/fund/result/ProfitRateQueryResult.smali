.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/ProfitRateQueryResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public maxProfitContent:Ljava/lang/String;

.field public maxProfitRate:Ljava/lang/String;

.field public minProfitContent:Ljava/lang/String;

.field public minProfitRate:Ljava/lang/String;

.field public monthAvgProfit:Ljava/lang/String;

.field public profitRateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/fund/model/ProfitRateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method
