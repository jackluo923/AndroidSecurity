.class public Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/result/OspShopListResult;
.super Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasNextPage:Z

.field public merchantInfo:Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspMerchantBaseInfo;

.field public storeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspShopBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;-><init>()V

    return-void
.end method
