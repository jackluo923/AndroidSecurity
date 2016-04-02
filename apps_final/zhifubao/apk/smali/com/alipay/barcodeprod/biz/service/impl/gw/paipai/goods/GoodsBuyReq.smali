.class public Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyReq;
.super Lcom/alipay/barcodeprod/common/domain/result/ToString;


# instance fields
.field public goodscode:Ljava/lang/String;

.field public productContext:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/barcodeprod/common/domain/result/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoodscode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyReq;->goodscode:Ljava/lang/String;

    return-object v0
.end method

.method public getProductContext()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyReq;->productContext:Ljava/util/Map;

    return-object v0
.end method

.method public setGoodscode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyReq;->goodscode:Ljava/lang/String;

    return-void
.end method

.method public setProductContext(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/alipay/barcodeprod/biz/service/impl/gw/paipai/goods/GoodsBuyReq;->productContext:Ljava/util/Map;

    return-void
.end method
