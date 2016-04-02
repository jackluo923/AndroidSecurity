.class public Lorg/apache/cordova/GeoBroker;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "GeoBroker.java"


# instance fields
.field private gpsListener:Lorg/apache/cordova/GPSListener;

.field private locationManager:Landroid/location/LocationManager;

.field private networkListener:Lorg/apache/cordova/NetworkListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 47
    return-void
.end method

.method private addWatch(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;Z)V
    .locals 1
    .param p1, "timerId"    # Ljava/lang/String;
    .param p2, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .param p3, "enableHighAccuracy"    # Z

    .prologue
    .line 118
    if-eqz p3, :cond_0

    .line 119
    iget-object v0, p0, Lorg/apache/cordova/GeoBroker;->gpsListener:Lorg/apache/cordova/GPSListener;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/GPSListener;->addWatch(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/GeoBroker;->networkListener:Lorg/apache/cordova/NetworkListener;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/NetworkListener;->addWatch(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    goto :goto_0
.end method

.method private clearWatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/cordova/GeoBroker;->gpsListener:Lorg/apache/cordova/GPSListener;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/GPSListener;->clearWatch(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lorg/apache/cordova/GeoBroker;->networkListener:Lorg/apache/cordova/NetworkListener;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/NetworkListener;->clearWatch(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private getCurrentLocation(Lorg/apache/cordova/api/CallbackContext;ZI)V
    .locals 1
    .param p1, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .param p2, "enableHighAccuracy"    # Z
    .param p3, "timeout"    # I

    .prologue
    .line 110
    if-eqz p2, :cond_0

    .line 111
    iget-object v0, p0, Lorg/apache/cordova/GeoBroker;->gpsListener:Lorg/apache/cordova/GPSListener;

    invoke-virtual {v0, p1, p3}, Lorg/apache/cordova/GPSListener;->addCallback(Lorg/apache/cordova/api/CallbackContext;I)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/GeoBroker;->networkListener:Lorg/apache/cordova/NetworkListener;

    invoke-virtual {v0, p1, p3}, Lorg/apache/cordova/NetworkListener;->addCallback(Lorg/apache/cordova/api/CallbackContext;I)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 58
    iget-object v7, p0, Lorg/apache/cordova/GeoBroker;->locationManager:Landroid/location/LocationManager;

    if-nez v7, :cond_0

    .line 59
    iget-object v7, p0, Lorg/apache/cordova/GeoBroker;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v7}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "location"

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    iput-object v7, p0, Lorg/apache/cordova/GeoBroker;->locationManager:Landroid/location/LocationManager;

    .line 62
    :cond_0
    iget-object v7, p0, Lorg/apache/cordova/GeoBroker;->locationManager:Landroid/location/LocationManager;

    const-string v10, "gps"

    invoke-virtual {v7, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lorg/apache/cordova/GeoBroker;->locationManager:Landroid/location/LocationManager;

    const-string v10, "network"

    invoke-virtual {v7, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 64
    :cond_1
    iget-object v7, p0, Lorg/apache/cordova/GeoBroker;->networkListener:Lorg/apache/cordova/NetworkListener;

    if-nez v7, :cond_2

    .line 65
    new-instance v7, Lorg/apache/cordova/NetworkListener;

    iget-object v10, p0, Lorg/apache/cordova/GeoBroker;->locationManager:Landroid/location/LocationManager;

    invoke-direct {v7, v10, p0}, Lorg/apache/cordova/NetworkListener;-><init>(Landroid/location/LocationManager;Lorg/apache/cordova/GeoBroker;)V

    iput-object v7, p0, Lorg/apache/cordova/GeoBroker;->networkListener:Lorg/apache/cordova/NetworkListener;

    .line 67
    :cond_2
    iget-object v7, p0, Lorg/apache/cordova/GeoBroker;->gpsListener:Lorg/apache/cordova/GPSListener;

    if-nez v7, :cond_3

    .line 68
    new-instance v7, Lorg/apache/cordova/GPSListener;

    iget-object v10, p0, Lorg/apache/cordova/GeoBroker;->locationManager:Landroid/location/LocationManager;

    invoke-direct {v7, v10, p0}, Lorg/apache/cordova/GPSListener;-><init>(Landroid/location/LocationManager;Lorg/apache/cordova/GeoBroker;)V

    iput-object v7, p0, Lorg/apache/cordova/GeoBroker;->gpsListener:Lorg/apache/cordova/GPSListener;

    .line 71
    :cond_3
    const-string v7, "getLocation"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 72
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0

    .line 73
    .local v0, "enableHighAccuracy":Z
    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 74
    .local v3, "maximumAge":I
    iget-object v8, p0, Lorg/apache/cordova/GeoBroker;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_4

    const-string v7, "gps"

    :goto_0
    invoke-virtual {v8, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 76
    .local v2, "last":Landroid/location/Location;
    if-eqz v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    sub-long/2addr v7, v10

    int-to-long v10, v3

    cmp-long v7, v7, v10

    if-gtz v7, :cond_5

    .line 77
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v7, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {p0, v2}, Lorg/apache/cordova/GeoBroker;->returnLocationJSON(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 78
    .local v5, "result":Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {p3, v5}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .end local v0    # "enableHighAccuracy":Z
    .end local v2    # "last":Landroid/location/Location;
    .end local v3    # "maximumAge":I
    .end local v5    # "result":Lorg/apache/cordova/api/PluginResult;
    :goto_1
    move v7, v9

    .line 101
    :goto_2
    return v7

    .line 74
    .restart local v0    # "enableHighAccuracy":Z
    .restart local v3    # "maximumAge":I
    :cond_4
    const-string v7, "network"

    goto :goto_0

    .line 80
    .restart local v2    # "last":Landroid/location/Location;
    :cond_5
    const/4 v7, 0x2

    const v8, 0xea60

    invoke-virtual {p2, v7, v8}, Lorg/json/JSONArray;->optInt(II)I

    move-result v7

    invoke-direct {p0, p3, v0, v7}, Lorg/apache/cordova/GeoBroker;->getCurrentLocation(Lorg/apache/cordova/api/CallbackContext;ZI)V

    goto :goto_1

    .line 83
    .end local v0    # "enableHighAccuracy":Z
    .end local v2    # "last":Landroid/location/Location;
    .end local v3    # "maximumAge":I
    :cond_6
    const-string v7, "addWatch"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 84
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0

    .line 86
    .restart local v0    # "enableHighAccuracy":Z
    invoke-direct {p0, v1, p3, v0}, Lorg/apache/cordova/GeoBroker;->addWatch(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;Z)V

    goto :goto_1

    .line 88
    .end local v0    # "enableHighAccuracy":Z
    .end local v1    # "id":Ljava/lang/String;
    :cond_7
    const-string v7, "clearWatch"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 89
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .restart local v1    # "id":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/apache/cordova/GeoBroker;->clearWatch(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "id":Ljava/lang/String;
    :cond_8
    move v7, v8

    .line 93
    goto :goto_2

    .line 96
    :cond_9
    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/api/PluginResult$Status;

    .line 97
    .local v6, "status":Lorg/apache/cordova/api/PluginResult$Status;
    const-string v4, "Location API is not available for this device."

    .line 98
    .local v4, "message":Ljava/lang/String;
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v5, v6, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 99
    .restart local v5    # "result":Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {p3, v5}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto :goto_1
.end method

.method public fail(ILjava/lang/String;Lorg/apache/cordova/api/CallbackContext;Z)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .param p4, "keepCallback"    # Z

    .prologue
    .line 181
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 182
    .local v2, "obj":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 184
    .local v0, "backup":Ljava/lang/String;
    :try_start_0
    const-string v4, "code"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    const-string v4, "message"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    if-eqz v2, :cond_0

    .line 192
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 197
    .local v3, "result":Lorg/apache/cordova/api/PluginResult;
    :goto_1
    invoke-virtual {v3, p4}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 198
    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 199
    return-void

    .line 186
    .end local v3    # "result":Lorg/apache/cordova/api/PluginResult;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\'code\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'message\':\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    const-string v6, "\'"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .restart local v3    # "result":Lorg/apache/cordova/api/PluginResult;
    goto :goto_1
.end method

.method public isGlobalListener(Lorg/apache/cordova/CordovaLocationListener;)Z
    .locals 2
    .param p1, "listener"    # Lorg/apache/cordova/CordovaLocationListener;

    .prologue
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lorg/apache/cordova/GeoBroker;->gpsListener:Lorg/apache/cordova/GPSListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/cordova/GeoBroker;->networkListener:Lorg/apache/cordova/NetworkListener;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lorg/apache/cordova/GeoBroker;->gpsListener:Lorg/apache/cordova/GPSListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/GeoBroker;->networkListener:Lorg/apache/cordova/NetworkListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 208
    :cond_1
    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lorg/apache/cordova/GeoBroker;->networkListener:Lorg/apache/cordova/NetworkListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/apache/cordova/GeoBroker;->networkListener:Lorg/apache/cordova/NetworkListener;

    invoke-virtual {v0}, Lorg/apache/cordova/NetworkListener;->destroy()V

    .line 132
    iput-object v1, p0, Lorg/apache/cordova/GeoBroker;->networkListener:Lorg/apache/cordova/NetworkListener;

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/GeoBroker;->gpsListener:Lorg/apache/cordova/GPSListener;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lorg/apache/cordova/GeoBroker;->gpsListener:Lorg/apache/cordova/GPSListener;

    invoke-virtual {v0}, Lorg/apache/cordova/GPSListener;->destroy()V

    .line 136
    iput-object v1, p0, Lorg/apache/cordova/GeoBroker;->gpsListener:Lorg/apache/cordova/GPSListener;

    .line 138
    :cond_1
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/apache/cordova/GeoBroker;->onDestroy()V

    .line 146
    return-void
.end method

.method public returnLocationJSON(Landroid/location/Location;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x0

    .line 149
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v1, "o":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 153
    const-string v3, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 154
    const-string v4, "altitude"

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v3, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 156
    const-string v3, "heading"

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v2, "velocity"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 158
    const-string v2, "timestamp"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    return-object v1

    :cond_1
    move-object v3, v2

    .line 154
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public win(Landroid/location/Location;Lorg/apache/cordova/api/CallbackContext;Z)V
    .locals 3
    .param p1, "loc"    # Landroid/location/Location;
    .param p2, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .param p3, "keepCallback"    # Z

    .prologue
    .line 168
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/GeoBroker;->returnLocationJSON(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 169
    .local v0, "result":Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {v0, p3}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 170
    invoke-virtual {p2, v0}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 171
    return-void
.end method
