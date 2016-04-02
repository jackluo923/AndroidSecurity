.class public Lcom/alipay/mobilediscovery/common/service/rpc/flashsales/result/FlashSalesResult;
.super Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public count:I

.field public currentPage:I

.field public currentServerTime:Ljava/util/Date;

.field public flashSales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/flashsales/model/FlashSale;",
            ">;"
        }
    .end annotation
.end field

.field public pageSize:I

.field public tips:Ljava/util/Map;
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

.field public totalPage:I

.field public yesterdayReview:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;-><init>()V

    return-void
.end method
