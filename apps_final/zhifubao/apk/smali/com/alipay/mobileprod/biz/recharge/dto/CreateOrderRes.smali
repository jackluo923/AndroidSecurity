.class public Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public bindedMobile:Ljava/lang/String;

.field public bizSubType:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public mobile:Ljava/lang/String;

.field public tradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    const-string/jumbo v0, "trade"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->bizType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBindedMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->bindedMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getBizSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->bizSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->tradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public setBindedMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->bindedMobile:Ljava/lang/String;

    return-void
.end method

.method public setBizSubType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->bizSubType:Ljava/lang/String;

    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->bizType:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setTradeNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;->tradeNo:Ljava/lang/String;

    return-void
.end method
