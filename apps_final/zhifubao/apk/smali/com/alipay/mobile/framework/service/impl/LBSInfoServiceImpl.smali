.class public Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;
.super Lcom/alipay/mobile/framework/service/LBSInfoService;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private LAST_CHECKIN_TIME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mContinuousListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;",
            "Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

.field private userCheckInResponse:Lcom/alipay/mobilelbs/rpc/checkin/resp/UserCheckInResponse;

.field private userCheckInService:Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;

.field private userIpLocateRequest:Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;

.field private userLocateService:Lcom/alipay/mobilelbs/rpc/locate/LocateService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/framework/service/LBSInfoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/LBSInfoService;-><init>()V

    const-string/jumbo v0, "lastcheckintime"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->LAST_CHECKIN_TIME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildLocation(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildGSMInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInService:Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildCDMAInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildWifiInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->uploadLocation(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobilelbs/rpc/locate/LocateService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userLocateService:Lcom/alipay/mobilelbs/rpc/locate/LocateService;

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userIpLocateRequest:Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userIpLocateRequest:Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Lcom/alipay/mobilelbs/rpc/locate/LocateService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userLocateService:Lcom/alipay/mobilelbs/rpc/locate/LocateService;

    return-object v0
.end method

.method private buildCDMAInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;

    invoke-direct {v2}, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;-><init>()V

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    iput v3, v2, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->bsid:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    iput v3, v2, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->nid:I

    const/4 v3, -0x1

    iput v3, v2, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->rssi:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    iput v0, v2, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->sid:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method private buildGSMInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x5

    if-lt v1, v4, :cond_4

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v4, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;

    invoke-direct {v4}, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;-><init>()V

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iput v1, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mnc:I

    iput v2, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mcc:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    iput v5, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->cid:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->lac:I

    const/4 v0, -0x1

    iput v0, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->rssi:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-object v3

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_1

    new-instance v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;

    invoke-direct {v5}, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;-><init>()V

    iput v1, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mnc:I

    iput v2, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mcc:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v6

    iput v6, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->lac:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    iput v6, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->cid:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    iput v0, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->rssi:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v1, v0

    move v2, v0

    goto :goto_0
.end method

.method private declared-synchronized buildLocation(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    invoke-direct {v0}, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAltitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getBearing()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    iget-object v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    const-string/jumbo v2, "time"

    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildGSMInfo()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->gsmInfos:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildCDMAInfo()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->cdmaInfos:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildWifiInfo()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->wifiInfos:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit p0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    :try_start_4
    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    :try_start_5
    sget-object v1, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "buildGSMInfo error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v1, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "buildCDMAInfo error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v1

    sget-object v1, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "buildWifiInfo error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method private buildWifiInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;

    invoke-direct {v0}, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->rssi:I

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    return-object v1

    :cond_1
    const-string/jumbo v2, "no_connected_wifi"

    iput-object v2, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    new-instance v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;

    invoke-direct {v3}, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;-><init>()V

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    iput v0, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->rssi:I

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private uploadLocation(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    const-string/jumbo v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v3, Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInService:Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;

    new-instance v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    invoke-direct {v0}, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    const-string/jumbo v3, "Android-wallet"

    iput-object v3, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->appKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getUtDid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->utdid:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->apdid:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getMspTid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->mspTid:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->imei:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->imsi:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->force:Z

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    iput-object p1, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->location:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$2;-><init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "LBSInfoServiceImpl.upLoadLocation  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getLastKnownLBSInfo()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildLocation(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mTeleManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContinuousListenerMap:Ljava/util/Map;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public removeLBSInfoUpdatesContinuous(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContinuousListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdatesContinuous(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContinuousListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeUpdates(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public requestLBSInfoUpdates(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;-><init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    return-void
.end method

.method public requestLBSInfoUpdatesContinuous(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;JF)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v6, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;

    invoke-direct {v6, p0, p1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;-><init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContinuousListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdatesContinuous(Landroid/content/Context;ZJFLcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    goto :goto_0
.end method

.method public requestLBSInfoUpdatesEnhanceByIP(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;-><init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    return-void
.end method

.method public upLoadLocation()V
    .locals 11

    const-wide/16 v9, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.android.phone.businesscommon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->LAST_CHECKIN_TIME:Ljava/lang/String;

    invoke-interface {v0, v1, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "lastchecktime"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "timespan"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v1, v1, v9

    if-eqz v1, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x1b7740

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestLocationUpdates"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;-><init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->requestLBSInfoUpdates(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->LAST_CHECKIN_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method
