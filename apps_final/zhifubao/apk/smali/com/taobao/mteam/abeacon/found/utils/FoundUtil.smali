.class public Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;
    .locals 10

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->d()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->a()I

    move-result v7

    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->g()I

    move-result v8

    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->h()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIII)V

    goto :goto_0
.end method

.method public static a(Lcom/taobao/mteam/ibeacon/IBeacon;)Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;
    .locals 10

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeacon;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeacon;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeacon;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeacon;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeacon;->c()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeacon;->g()I

    move-result v7

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeacon;->d()I

    move-result v8

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeacon;->e()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIII)V

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeacon;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->setDeviceFeature(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;)Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;
    .locals 10

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getBeaconID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getBeaconID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getDistance()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getRssi()I

    move-result v7

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getMajor()I

    move-result v8

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getMinor()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIII)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    return v0
.end method

.method public static b()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v1, "samsung"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v1, Landroid/os/Build;->TIME:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x7de

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
