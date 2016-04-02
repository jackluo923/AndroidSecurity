.class public Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_FEATURE:Ljava/lang/String; = "iBeacon"

.field private static final MBEACON_FEATURE:Ljava/lang/String; = "jBeacon"


# instance fields
.field private beaconID:Ljava/lang/String;

.field private deviceFeature:Ljava/lang/String;

.field private distance:D

.field private macAddress:Ljava/lang/String;

.field protected major:I

.field protected minor:I

.field private name:Ljava/lang/String;

.field private rssi:I

.field private serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->deviceFeature:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->deviceFeature:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->beaconID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->deviceFeature:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->beaconID:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->serialNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->macAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->name:Ljava/lang/String;

    iput-wide p5, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->distance:D

    iput p7, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->rssi:I

    iput p8, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->major:I

    iput p9, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->minor:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->deviceFeature:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->beaconID:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->serialNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->macAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->name:Ljava/lang/String;

    iput p5, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->major:I

    iput p6, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->minor:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->beaconID:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->beaconID:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->beaconID:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->beaconID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getBeaconID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->beaconID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceFeature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->deviceFeature:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->distance:D

    return-wide v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->minor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->rssi:I

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->beaconID:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->beaconID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isIBeacon()Z
    .locals 2

    const-string/jumbo v0, "iBeacon"

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getDeviceFeature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMBeacon()Z
    .locals 2

    const-string/jumbo v0, "jBeacon"

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getDeviceFeature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBeaconID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->beaconID:Ljava/lang/String;

    return-void
.end method

.method public setDeviceFeature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->deviceFeature:Ljava/lang/String;

    return-void
.end method

.method public setDistance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->distance:D

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->macAddress:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->rssi:I

    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BeaconInfo{beaconID=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->beaconID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serialNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", macAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->distance:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", major="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", minor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceFeature=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->deviceFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
