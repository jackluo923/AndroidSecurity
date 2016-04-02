.class public Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/MovieSeatsResult;
.super Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public activityCount:I

.field public cardListInfo:Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/MemberCardListInfo;

.field public orderConfirmRemind:Ljava/lang/String;

.field public providerCode:Ljava/lang/String;

.field public providerName:Ljava/lang/String;

.field public providerPhone:Ljava/lang/String;

.field public providerShowId:Ljava/lang/String;

.field public seatInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/SeatInfo;",
            ">;"
        }
    .end annotation
.end field

.field public specialScheduleRemind:Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/CinemaTipsResult;

.field public voucherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/VoucherInfo;",
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
