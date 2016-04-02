.class public Lcom/alipay/mobileprod/biz/ccr/vo/SetupDeductResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public billInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillInfo;

.field public canImmediatelyWork:Z

.field public deductDate:Ljava/lang/String;

.field public deductDayChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method
