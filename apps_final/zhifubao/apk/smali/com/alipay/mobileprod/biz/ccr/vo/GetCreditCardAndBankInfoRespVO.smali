.class public Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardAndBankInfoRespVO;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/BankInfo;

.field public billInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillInfo;

.field public orderInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/OrderInfo;

.field public userCardInfo:Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method
