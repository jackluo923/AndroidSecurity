.class public Lae/gov/mol/helper/MOLLocationManager;
.super Ljava/lang/Object;
.source "MOLLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;
    }
.end annotation


# static fields
.field private static final LOCATION_ACCURACY:I = 0xc8

.field private static final MINIMUM_DISTANCE_CHANGE_FOR_UPDATES:J = 0x0L

.field private static final MINIMUM_TIME_BETWEEN_UPDATES:J = 0x0L

.field private static final MINUTE:I = 0x7530

.field private static instance:Lae/gov/mol/helper/MOLLocationManager;


# instance fields
.field private isGPSEnabled:Z

.field private isNetworkEnabled:Z

.field private latLong:[D

.field private locationListener:Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private mContext:Landroid/content/Context;

.field private mSingleUpdate:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lae/gov/mol/helper/MOLLocationManager;->instance:Lae/gov/mol/helper/MOLLocationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->latLong:[D

    .line 15
    iput-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 16
    iput-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationListener:Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;

    .line 17
    iput-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/helper/MOLLocationManager;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lae/gov/mol/helper/MOLLocationManager;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/helper/MOLLocationManager;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->mSingleUpdate:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/helper/MOLLocationManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lae/gov/mol/helper/MOLLocationManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lae/gov/mol/helper/MOLLocationManager;->instance:Lae/gov/mol/helper/MOLLocationManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lae/gov/mol/helper/MOLLocationManager;

    invoke-direct {v0}, Lae/gov/mol/helper/MOLLocationManager;-><init>()V

    sput-object v0, Lae/gov/mol/helper/MOLLocationManager;->instance:Lae/gov/mol/helper/MOLLocationManager;

    .line 35
    :cond_0
    sget-object v0, Lae/gov/mol/helper/MOLLocationManager;->instance:Lae/gov/mol/helper/MOLLocationManager;

    return-object v0
.end method

.method private getLastKnownGPSLocation()[D
    .locals 6

    .prologue
    .line 219
    const/4 v2, 0x0

    .line 221
    .local v2, "location":Landroid/location/Location;
    :try_start_0
    iget-object v3, p0, Lae/gov/mol/helper/MOLLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "latLong":[D
    if-eqz v2, :cond_0

    .line 225
    const/4 v3, 0x2

    new-array v1, v3, [D

    .line 226
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 227
    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1    # "latLong":[D
    :cond_0
    :goto_0
    return-object v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLastKnownNetworkLocation()[D
    .locals 6

    .prologue
    .line 240
    const/4 v2, 0x0

    .line 242
    .local v2, "location":Landroid/location/Location;
    :try_start_0
    iget-object v3, p0, Lae/gov/mol/helper/MOLLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "latLong":[D
    if-eqz v2, :cond_0

    .line 246
    const/4 v3, 0x2

    new-array v1, v3, [D

    .line 247
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 248
    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v1    # "latLong":[D
    :cond_0
    :goto_0
    return-object v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLatestLatLong()[D
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->latLong:[D

    return-object v0
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider1"    # Ljava/lang/String;
    .param p2, "provider2"    # Ljava/lang/String;

    .prologue
    .line 188
    if-nez p1, :cond_1

    .line 189
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setAdapterStatus()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 57
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 56
    iput-boolean v0, p0, Lae/gov/mol/helper/MOLLocationManager;->isGPSEnabled:Z

    .line 60
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 61
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 60
    iput-boolean v0, p0, Lae/gov/mol/helper/MOLLocationManager;->isNetworkEnabled:Z

    .line 62
    return-void
.end method

.method private setLatLong([D)V
    .locals 0
    .param p1, "latLong"    # [D

    .prologue
    .line 137
    iput-object p1, p0, Lae/gov/mol/helper/MOLLocationManager;->latLong:[D

    .line 138
    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->latLong:[D

    .line 117
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->latLong:[D

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 118
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->latLong:[D

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 120
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 121
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->latLong:[D

    invoke-direct {p0, v0}, Lae/gov/mol/helper/MOLLocationManager;->setLatLong([D)V

    .line 122
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->mSingleUpdate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lae/gov/mol/helper/MOLLocationManager;->stopListener()V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public basicInitializations(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    iput-object p1, p0, Lae/gov/mol/helper/MOLLocationManager;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 45
    new-instance v0, Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;-><init>(Lae/gov/mol/helper/MOLLocationManager;Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;)V

    iput-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationListener:Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;

    .line 47
    invoke-direct {p0}, Lae/gov/mol/helper/MOLLocationManager;->setAdapterStatus()V

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lae/gov/mol/helper/MOLLocationManager;->setListeners(Ljava/lang/Boolean;)V

    .line 53
    :cond_0
    return-void
.end method

.method public getLocation()[D
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lae/gov/mol/helper/MOLLocationManager;->getLatestLatLong()[D

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lae/gov/mol/helper/MOLLocationManager;->getLatestLatLong()[D

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 210
    :cond_0
    invoke-direct {p0}, Lae/gov/mol/helper/MOLLocationManager;->getLastKnownGPSLocation()[D

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    invoke-direct {p0}, Lae/gov/mol/helper/MOLLocationManager;->getLastKnownGPSLocation()[D

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_1
    invoke-direct {p0}, Lae/gov/mol/helper/MOLLocationManager;->getLastKnownNetworkLocation()[D

    move-result-object v0

    goto :goto_0
.end method

.method protected isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 145
    if-nez p2, :cond_0

    .line 147
    const/4 v10, 0x1

    .line 183
    :goto_0
    return v10

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 152
    .local v8, "timeDelta":J
    const-wide/16 v10, 0x7530

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 153
    .local v6, "isSignificantlyNewer":Z
    :goto_1
    const-wide/16 v10, -0x7530

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 154
    .local v7, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 158
    .local v4, "isNewer":Z
    :goto_3
    if-eqz v6, :cond_4

    .line 159
    const/4 v10, 0x1

    goto :goto_0

    .line 152
    .end local v4    # "isNewer":Z
    .end local v6    # "isSignificantlyNewer":Z
    .end local v7    # "isSignificantlyOlder":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 153
    .restart local v6    # "isSignificantlyNewer":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 154
    .restart local v7    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 161
    .restart local v4    # "isNewer":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 162
    const/4 v10, 0x0

    goto :goto_0

    .line 166
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 167
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 168
    .local v2, "isLessAccurate":Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 169
    .local v3, "isMoreAccurate":Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 172
    .local v5, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    .line 172
    invoke-direct {p0, v10, v11}, Lae/gov/mol/helper/MOLLocationManager;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 176
    .local v1, "isFromSameProvider":Z
    if-eqz v3, :cond_9

    .line 177
    const/4 v10, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "isFromSameProvider":Z
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v5    # "isSignificantlyLessAccurate":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 168
    .restart local v2    # "isLessAccurate":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 169
    .restart local v3    # "isMoreAccurate":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 178
    .restart local v1    # "isFromSameProvider":Z
    .restart local v5    # "isSignificantlyLessAccurate":Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 179
    const/4 v10, 0x1

    goto :goto_0

    .line 180
    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 181
    const/4 v10, 0x1

    goto :goto_0

    .line 183
    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public isGPSEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 278
    const-string v2, "location_providers_allowed"

    .line 277
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "GpsProvider":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const/4 v1, 0x0

    .line 285
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLocationServiceEnable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    .line 260
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 262
    .local v0, "locManager":Landroid/location/LocationManager;
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    const/4 v1, 0x1

    .line 266
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setListeners(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "singleUpdate"    # Ljava/lang/Boolean;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 64
    iput-object p1, p0, Lae/gov/mol/helper/MOLLocationManager;->mSingleUpdate:Ljava/lang/Boolean;

    .line 66
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 67
    .local v6, "lastGPSLocation":Landroid/location/Location;
    if-eqz v6, :cond_0

    .line 68
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationListener:Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;

    invoke-virtual {v0, v6}, Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 72
    .local v7, "lastNetworkLocation":Landroid/location/Location;
    if-eqz v7, :cond_1

    .line 73
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationListener:Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;

    invoke-virtual {v0, v7}, Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 77
    :cond_1
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 78
    iget-object v5, p0, Lae/gov/mol/helper/MOLLocationManager;->locationListener:Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;

    .line 77
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 79
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    .line 80
    iget-object v5, p0, Lae/gov/mol/helper/MOLLocationManager;->locationListener:Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;

    .line 79
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 81
    return-void
.end method

.method public stopListener()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationListener:Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lae/gov/mol/helper/MOLLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lae/gov/mol/helper/MOLLocationManager;->locationListener:Lae/gov/mol/helper/MOLLocationManager$MOLLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 202
    :cond_0
    return-void
.end method
