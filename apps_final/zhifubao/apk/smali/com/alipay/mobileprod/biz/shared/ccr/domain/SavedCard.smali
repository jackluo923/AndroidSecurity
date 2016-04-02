.class public Lcom/alipay/mobileprod/biz/shared/ccr/domain/SavedCard;
.super Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;

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

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;-><init>()V

    return-void
.end method
