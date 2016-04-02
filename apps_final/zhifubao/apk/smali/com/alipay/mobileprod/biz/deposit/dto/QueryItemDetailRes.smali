.class public Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailRes;
.super Lcom/alipay/mobileprod/core/model/deposit/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public absence:Z

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

.field public gameAreaDatas:Lcom/alipay/mobileprod/biz/deposit/vo/ComponetDataList;

.field public gameAreaExist:Z

.field public gameSkuDatas:Lcom/alipay/mobileprod/biz/deposit/vo/ComponetDataList;

.field public gameSkuExist:Z

.field public gameSubAreaDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobileprod/biz/deposit/vo/ComponetDataList;",
            ">;"
        }
    .end annotation
.end field

.field public goodsName:Ljava/lang/String;

.field public permitAccountExit:Z

.field public price:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/deposit/BaseRespVO;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailRes;->price:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailRes;->absence:Z

    iput-object v2, p0, Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailRes;->gameSkuDatas:Lcom/alipay/mobileprod/biz/deposit/vo/ComponetDataList;

    iput-object v2, p0, Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailRes;->gameAreaDatas:Lcom/alipay/mobileprod/biz/deposit/vo/ComponetDataList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailRes;->gameSubAreaDatas:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailRes;->gameSkuExist:Z

    iput-boolean v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailRes;->gameAreaExist:Z

    iput-boolean v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailRes;->permitAccountExit:Z

    iput-object v2, p0, Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailRes;->goodsName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailRes;->extDatas:Ljava/util/Map;

    return-void
.end method
