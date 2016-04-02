.class public Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/CinemaListResult;
.super Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
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

.field public cityCode:Ljava/lang/String;

.field public cityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;-><init>()V

    return-void
.end method
