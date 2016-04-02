.class public Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyRes;
.super Lcom/alipay/barcodeprod/core/model/common/RpcCommonResult;


# instance fields
.field public bizType:Ljava/lang/String;

.field public bizcontext:Ljava/util/Map;
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

.field public subBizType:Ljava/lang/String;

.field public tradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/barcodeprod/core/model/common/RpcCommonResult;-><init>()V

    const-string/jumbo v0, "trade"

    iput-object v0, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyRes;->bizType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyRes;->subBizType:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyRes;->bizcontext:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyRes;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getBizcontext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyRes;->bizcontext:Ljava/util/Map;

    return-object v0
.end method

.method public getSubBizType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyRes;->subBizType:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyRes;->tradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyRes;->bizType:Ljava/lang/String;

    return-void
.end method

.method public setBizcontext(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyRes;->bizcontext:Ljava/util/Map;

    return-void
.end method

.method public setSubBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyRes;->subBizType:Ljava/lang/String;

    return-void
.end method

.method public setTradeNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyRes;->tradeNo:Ljava/lang/String;

    return-void
.end method
