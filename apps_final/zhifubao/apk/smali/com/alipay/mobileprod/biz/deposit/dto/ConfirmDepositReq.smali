.class public Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositReq;
.super Lcom/alipay/mobileprod/core/model/deposit/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accountNo:Ljava/lang/String;

.field public extDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public faceDisplayValue:Ljava/lang/String;

.field public faceValue:Ljava/lang/String;

.field public gameAreaValue:Ljava/lang/String;

.field public gameSkuValue:Ljava/lang/String;

.field public gameSubAreaValue:Ljava/lang/String;

.field public itemValue:Ljava/lang/String;

.field public permitAccount:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/deposit/BaseReqVO;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositReq;->type:I

    iput-object v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositReq;->itemValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositReq;->faceValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositReq;->faceDisplayValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositReq;->accountNo:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositReq;->permitAccount:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositReq;->gameSkuValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositReq;->gameAreaValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositReq;->gameSubAreaValue:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/ConfirmDepositReq;->extDatas:Ljava/util/Map;

    return-void
.end method
