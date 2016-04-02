.class public Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspMerchantBaseInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public allShopsCount:I

.field public cityCode:Ljava/lang/String;

.field public displayShops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspShopBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field public gmtModified:J

.field public merchantLogo:Ljava/lang/String;

.field public merchantName:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
