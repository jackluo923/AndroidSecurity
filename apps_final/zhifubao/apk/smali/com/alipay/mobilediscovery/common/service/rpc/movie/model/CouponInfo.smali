.class public Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/CouponInfo;
.super Lcom/alipay/mobilediscovery/common/service/rpc/common/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public couponId:Ljava/lang/String;

.field public itemDetailUrl:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public providerCode:Ljava/lang/String;

.field public reservePrice:Ljava/lang/String;

.field public skuId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/common/ToString;-><init>()V

    return-void
.end method
