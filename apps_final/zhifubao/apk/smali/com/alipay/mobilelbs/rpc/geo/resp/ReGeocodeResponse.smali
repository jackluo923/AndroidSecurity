.class public Lcom/alipay/mobilelbs/rpc/geo/resp/ReGeocodeResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public count:I

.field public info:Ljava/lang/String;

.field public pois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/rpc/geo/resp/POI;",
            ">;"
        }
    .end annotation
.end field

.field public regeocode:Lcom/alipay/mobilelbs/rpc/geo/resp/ReGeocode;

.field public roadInters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/rpc/geo/resp/RoadInter;",
            ">;"
        }
    .end annotation
.end field

.field public roads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/rpc/geo/resp/Road;",
            ">;"
        }
    .end annotation
.end field

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
