.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundApplyTransferToBalanceResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public canTransferOutAmount:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;

.field public quotaContent:Ljava/lang/String;

.field public totalAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method
