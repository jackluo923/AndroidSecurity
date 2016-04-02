.class public Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositRes;
.super Lcom/alipay/mobileprod/core/model/deposit/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accountNo:Ljava/lang/String;

.field public bizSubType:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public faceDisplayValue:Ljava/lang/String;

.field public goodsName:Ljava/lang/String;

.field public permitAccount:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public tradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/deposit/BaseRespVO;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositRes;->tradeNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositRes;->goodsName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositRes;->faceDisplayValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositRes;->accountNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositRes;->permitAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositRes;->price:Ljava/lang/String;

    const-string/jumbo v0, "trade"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositRes;->bizType:Ljava/lang/String;

    return-void
.end method
