.class public Lcom/alipay/mobilelbs/rpc/geofence/resp/SyncGeofenceResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public info:Ljava/lang/String;

.field public results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/geofencing/vo/GeoFence;",
            ">;"
        }
    .end annotation
.end field

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilelbs/rpc/geofence/resp/SyncGeofenceResponse;->results:Ljava/util/List;

    return-void
.end method
