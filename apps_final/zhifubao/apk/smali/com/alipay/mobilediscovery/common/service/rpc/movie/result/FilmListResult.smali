.class public Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/FilmListResult;
.super Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cardBuyDesc:Ljava/lang/String;

.field public cardBuyUrl:Ljava/lang/String;

.field public cityCode:Ljava/lang/String;

.field public cityName:Ljava/lang/String;

.field public couponList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/CouponInfo;",
            ">;"
        }
    .end annotation
.end field

.field public filmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/FilmBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field public hasMemberCard:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;-><init>()V

    return-void
.end method
