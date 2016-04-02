.class public Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/CouponDetail;
.super Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/CouponInfo;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public anytimeRefund:Z

.field public auctionDesc:Ljava/lang/String;

.field public cinemaCounts:Ljava/lang/String;

.field public cinemaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/CinemaBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field public cityCounts:Ljava/lang/String;

.field public expiredRefund:Z

.field public limitNum:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public pictUrl:Ljava/lang/String;

.field public providerName:Ljava/lang/String;

.field public providerPhone:Ljava/lang/String;

.field public soldQuantity:Ljava/lang/String;

.field public validDateDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/CouponInfo;-><init>()V

    return-void
.end method
