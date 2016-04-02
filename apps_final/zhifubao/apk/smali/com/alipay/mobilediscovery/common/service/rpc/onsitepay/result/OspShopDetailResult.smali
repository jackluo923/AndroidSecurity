.class public Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/result/OspShopDetailResult;
.super Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public detailInfo:Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspShopDetailInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/result/OspShopDetailResult;->detailInfo:Lcom/alipay/mobilediscovery/common/service/rpc/onsitepay/model/OspShopDetailInfo;

    return-void
.end method
