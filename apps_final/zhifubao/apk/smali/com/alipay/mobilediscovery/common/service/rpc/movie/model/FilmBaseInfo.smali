.class public Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/FilmBaseInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public activityTag:Ljava/lang/String;

.field public activityType:Ljava/lang/String;

.field public actors:Ljava/lang/String;

.field public directors:Ljava/lang/String;

.field public filmLength:Ljava/lang/String;

.field public filmLogo:Ljava/lang/String;

.field public filmName:Ljava/lang/String;

.field public filmVersion:Ljava/lang/String;

.field public gmtModified:J

.field public lauguage:Ljava/lang/String;

.field public providerCode:Ljava/lang/String;

.field public providerFilmId:Ljava/lang/String;

.field public rating:Ljava/lang/String;

.field public releaseDate:Ljava/lang/String;

.field public showCinemas:I

.field public showDaysList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/ShowDaysInfo;",
            ">;"
        }
    .end annotation
.end field

.field public showTimes:I

.field public trailer:Ljava/lang/String;

.field public types:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
