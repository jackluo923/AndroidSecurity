.class public Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->a:Ljava/lang/String;

    const/16 v0, 0x4b0

    sput v0, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->b:I

    const/16 v0, 0x32

    sput v0, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_0

    const-string/jumbo v4, "MOBILECODEC_BEACON_SIGNAL_INTERVAL"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "configService MOBILECODEC_BEACON_SIGNAL_INTERVAL:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startScanBeacons period:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->b:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->c:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->b:I

    if-nez v0, :cond_8

    move v0, v2

    :goto_1
    return v0

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    if-nez v1, :cond_7

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "no config for model:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->a:Ljava/lang/String;

    const-string/jumbo v5, "error parse json:"

    invoke-static {v4, v5, v0}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "list"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v2

    :goto_4
    if-lt v4, v7, :cond_5

    :goto_5
    if-nez v1, :cond_3

    goto :goto_3

    :cond_5
    aget-object v8, v6, v4

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v1, "val"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v4, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->b:I

    sput v0, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->c:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v4, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "configService parse error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    sget v0, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(J)V

    sget v0, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->c:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b(J)V

    sget v0, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c(J)V

    sget v0, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->c:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->d(J)V

    move v0, v3

    goto/16 :goto_1
.end method
