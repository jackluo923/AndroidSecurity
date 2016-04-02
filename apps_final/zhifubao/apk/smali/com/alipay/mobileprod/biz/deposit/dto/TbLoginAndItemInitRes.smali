.class public Lcom/alipay/mobileprod/biz/deposit/dto/TbLoginAndItemInitRes;
.super Lcom/alipay/mobileprod/core/model/deposit/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public faceDatas:Ljava/util/Map;
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

.field public itemDatas:Lcom/alipay/mobileprod/biz/deposit/vo/ComponetDataList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/deposit/BaseRespVO;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/TbLoginAndItemInitRes;->itemDatas:Lcom/alipay/mobileprod/biz/deposit/vo/ComponetDataList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/TbLoginAndItemInitRes;->faceDatas:Ljava/util/Map;

    return-void
.end method
