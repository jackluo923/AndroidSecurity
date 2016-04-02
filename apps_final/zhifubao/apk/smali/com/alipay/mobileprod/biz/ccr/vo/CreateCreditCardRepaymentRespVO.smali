.class public Lcom/alipay/mobileprod/biz/ccr/vo/CreateCreditCardRepaymentRespVO;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public billNumber:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public cardId:Ljava/lang/String;

.field public needWaiting:Z

.field public subBizType:Ljava/lang/String;

.field public waitingTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method
