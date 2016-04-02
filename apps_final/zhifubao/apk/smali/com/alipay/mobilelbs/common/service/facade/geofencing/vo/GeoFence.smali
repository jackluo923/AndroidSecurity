.class public Lcom/alipay/mobilelbs/common/service/facade/geofencing/vo/GeoFence;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appKey:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public expiry:Ljava/util/Date;

.field public id:J

.field public latitude:D

.field public longitude:D

.field public name:Ljava/lang/String;

.field public params:Ljava/lang/String;

.field public radius:I

.field public wifiInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
