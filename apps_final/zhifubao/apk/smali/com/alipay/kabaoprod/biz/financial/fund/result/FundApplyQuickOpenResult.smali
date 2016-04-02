.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyQuickOpenResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public amount:Ljava/lang/String;

.field public errJumpIndex:I

.field public expressCacheKey:Ljava/lang/String;

.field public hiddenedMobile:Ljava/lang/String;

.field public needSmsCheck:Z

.field public profitDate:Ljava/lang/String;

.field public tairKey:Ljava/lang/String;

.field public tradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyQuickOpenResult;->needSmsCheck:Z

    iput v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyQuickOpenResult;->errJumpIndex:I

    return-void
.end method
