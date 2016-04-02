.class public Lcom/alipay/mobileprod/biz/deposit/vo/ChargeData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mAccount:Ljava/lang/String;

.field public mAmount:Lcom/alipay/mobileprod/biz/deposit/vo/ComponetData;

.field public mAreaData:Lcom/alipay/mobileprod/biz/deposit/vo/ComponetData;

.field public mExtDatas:Ljava/util/Map;
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

.field public mGoodsName:Ljava/lang/String;

.field public mPermitAccout:Ljava/lang/String;

.field public mPrice:Ljava/lang/String;

.field public mSkuData:Lcom/alipay/mobileprod/biz/deposit/vo/ComponetData;

.field public mSubAreaData:Lcom/alipay/mobileprod/biz/deposit/vo/ComponetData;

.field public mType:Lcom/alipay/mobileprod/biz/deposit/vo/ComponetData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
