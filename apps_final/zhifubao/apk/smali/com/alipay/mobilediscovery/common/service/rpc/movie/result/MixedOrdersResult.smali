.class public Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/MixedOrdersResult;
.super Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasNext:Ljava/lang/Boolean;

.field public mark:Ljava/lang/String;

.field public mixedOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/MixedOrder;",
            ">;"
        }
    .end annotation
.end field

.field public showComment:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;-><init>()V

    return-void
.end method
