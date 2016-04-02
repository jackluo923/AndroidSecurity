.class public final Lcom/inmobi/commons/thinICE/location/LocationUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/commons/thinICE/location/LocationInfo;
    .locals 4

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/inmobi/commons/thinICE/location/LocationInfo;

    invoke-direct {v0}, Lcom/inmobi/commons/thinICE/location/LocationInfo;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/inmobi/commons/thinICE/location/LocationInfo;->time:J

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/inmobi/commons/thinICE/location/LocationInfo;->provider:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/inmobi/commons/thinICE/location/LocationInfo;->latitude:D

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/inmobi/commons/thinICE/location/LocationInfo;->longitude:D

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iput v1, v0, Lcom/inmobi/commons/thinICE/location/LocationInfo;->accuracy:F

    goto :goto_0
.end method

.method public static getLastKnownLocations(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/thinICE/location/LocationInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/inmobi/commons/thinICE/location/LocationUtil;->hasFineLocationPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "gps"

    const-string v2, "gps"

    invoke-static {p0, v2}, Lcom/inmobi/commons/thinICE/location/LocationUtil;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/commons/thinICE/location/LocationInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Lcom/inmobi/commons/thinICE/location/LocationUtil;->hasCoarseLocationPermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "network"

    const-string v2, "network"

    invoke-static {p0, v2}, Lcom/inmobi/commons/thinICE/location/LocationUtil;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/commons/thinICE/location/LocationInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static hasCoarseLocationPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasFineLocationPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasLocationPermission(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/inmobi/commons/thinICE/location/LocationUtil;->hasFineLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/inmobi/commons/thinICE/location/LocationUtil;->hasCoarseLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
