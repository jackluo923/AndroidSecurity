.class public Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;
.super Ljava/lang/Object;
.source "LBSInfoGather.java"

# interfaces
.implements Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;


# static fields
.field private static a:Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

.field private static h:Ljava/lang/String;

.field private static i:I

.field private static j:I

.field private static k:I


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

.field private f:Landroid/telephony/TelephonyManager;

.field private g:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "LBSLocationManager"

    sput-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;

    .line 49
    const/16 v0, 0x3e8

    sput v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->i:I

    .line 50
    const/16 v0, 0x3e9

    sput v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->j:I

    .line 51
    const/16 v0, 0x3ea

    sput v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->k:I

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->g:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;-><init>(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method private declared-synchronized a()Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 155
    monitor-enter p0

    :try_start_0
    new-instance v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    invoke-direct {v3}, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;-><init>()V

    .line 157
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->source:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    .line 161
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    .line 162
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getAccuracy()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    .line 163
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getAltitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    .line 164
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getBearing()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    .line 165
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getSpeed()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 171
    if-nez v0, :cond_5

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->bluetoothOpen:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v6, v2, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->accessWirelessNetType:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->lbsOpen:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->currentMobileOperator:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    :goto_4
    :try_start_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_b

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v1

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v5, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v5, :cond_1

    new-instance v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;

    invoke-direct {v5}, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;-><init>()V

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iput v1, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mnc:I

    iput v2, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mcc:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    iput v6, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->cid:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->lac:I

    const/4 v0, -0x1

    iput v0, v5, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->rssi:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_3
    iput-object v4, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->gsmInfos:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    :goto_7
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;

    invoke-direct {v2}, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;-><init>()V

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    iput v4, v2, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->bsid:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    iput v4, v2, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->nid:I

    const/4 v4, -0x1

    iput v4, v2, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->rssi:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    iput v0, v2, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->sid:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v1, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->cdmaInfos:Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 216
    :goto_8
    :try_start_7
    invoke-direct {p0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->wifiInfos:Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 222
    :goto_9
    :try_start_8
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "false"

    :goto_a
    iput-object v0, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->wifiConn:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 227
    :goto_b
    monitor-exit p0

    return-object v3

    .line 174
    :cond_5
    :try_start_9
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 175
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->bluetoothOpen:Z

    .line 176
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->bluetoothMac:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 182
    :catch_0
    move-exception v0

    :try_start_a
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 178
    :cond_6
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->bluetoothOpen:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 186
    :cond_7
    :try_start_c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 188
    :catch_1
    move-exception v0

    :try_start_d
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;

    goto/16 :goto_2

    .line 194
    :catch_2
    move-exception v0

    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;

    goto/16 :goto_3

    .line 200
    :catch_3
    move-exception v0

    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_4

    .line 204
    :cond_9
    :try_start_e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_2

    new-instance v6, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;

    invoke-direct {v6}, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;-><init>()V

    iput v1, v6, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mnc:I

    iput v2, v6, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mcc:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v7

    iput v7, v6, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->lac:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v7

    iput v7, v6, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->cid:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    iput v0, v6, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->rssi:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6

    .line 206
    :catch_4
    move-exception v0

    :try_start_f
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;

    goto/16 :goto_7

    .line 212
    :catch_5
    move-exception v0

    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;

    goto :goto_8

    .line 218
    :catch_6
    move-exception v0

    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_9

    .line 222
    :cond_a
    :try_start_10
    const-string/jumbo v0, "true"
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_a

    .line 224
    :catch_7
    move-exception v0

    :try_start_11
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->h:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_b

    :cond_b
    move v2, v1

    goto/16 :goto_5
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->i:I

    return v0
.end method

.method static synthetic access$1(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 137
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a()Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v3

    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v4

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v4

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v3, v1}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoListener;->onLBSInfoChanged(Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;Z)V

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->j:I

    return v0
.end method

.method static synthetic access$3(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->k:I

    return v0
.end method

.method static synthetic access$5(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V

    :cond_0
    return-void
.end method

.method private b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    new-instance v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;

    invoke-direct {v0}, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;-><init>()V

    .line 318
    iget-object v2, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_1

    .line 320
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    .line 321
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    .line 322
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->rssi:I

    .line 326
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    :cond_0
    return-object v1

    .line 324
    :cond_1
    const-string/jumbo v2, "no_connected_wifi"

    iput-object v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    iput-object v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    goto :goto_0

    .line 331
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 332
    new-instance v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;

    invoke-direct {v3}, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;-><init>()V

    .line 333
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    .line 334
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    .line 335
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    iput v0, v3, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->rssi:I

    .line 336
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a:Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    invoke-direct {v0, p0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a:Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    .line 57
    :cond_0
    sget-object v0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a:Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    return-object v0
.end method


# virtual methods
.method public getLastKnownLBSInfo()Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->a()Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    if-nez v1, :cond_0

    .line 81
    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    .line 85
    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    .line 86
    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    .line 87
    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getAltitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    .line 88
    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getBearing()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    .line 89
    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D

    .line 93
    :cond_0
    return-object v0
.end method

.method public getWifiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onLocationUpdate(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 0

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->setLBSLocation(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;)V

    .line 356
    return-void
.end method

.method public removeUpdates(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoListener;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    sget v2, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->k:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method

.method public requestLBSInfoUpdates(Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoListener;)V
    .locals 3

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    sget v2, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->i:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    sget v2, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->j:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    return-void
.end method

.method protected declared-synchronized setLBSLocation(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 3

    .prologue
    .line 347
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 348
    :try_start_0
    iput-object p1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    .line 349
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->b:Landroid/os/Handler;

    sget v2, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->i:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_0
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
