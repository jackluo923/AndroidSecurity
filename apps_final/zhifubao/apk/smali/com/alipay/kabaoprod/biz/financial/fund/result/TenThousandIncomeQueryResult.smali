.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/TenThousandIncomeQueryResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public maxTenThousandIncome:Ljava/lang/String;

.field public maxTenThousandIncomeContent:Ljava/lang/String;

.field public minTenThousandIncome:Ljava/lang/String;

.field public minTenThousandIncomeContent:Ljava/lang/String;

.field public monthAvgTenThousandIncome:Ljava/lang/String;

.field public tenThousandIncomeList:Ljava/util/List;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method
