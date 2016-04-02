.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/ProfitQueryResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public maxContent:Ljava/lang/String;

.field public maxProfit:Ljava/lang/String;

.field public minContent:Ljava/lang/String;

.field public minProfit:Ljava/lang/String;

.field public profitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/fund/model/ProfitInfo;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public totalProfit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method
