.class public Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "WifiLocation"
.end annotation


# static fields
.field public static final LOCATION_X:Ljava/lang/String; = "locationx"

.field public static final LOCATION_Y:Ljava/lang/String; = "locationy"

.field public static final NEXTMOBILETIME:Ljava/lang/String; = "nextMobileTime"

.field public static final NEXTWIFITIME:Ljava/lang/String; = "nextWifiTime"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private locationx:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field

.field private locationy:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        uniqueCombo = true
    .end annotation
.end field

.field private nextMobileTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private nextWifiTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private timestamp:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationX()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->locationx:I

    return v0
.end method

.method public getLocationY()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->locationy:I

    return v0
.end method

.method public getNextMobileTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->nextMobileTime:J

    return-wide v0
.end method

.method public getNextWifiTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->nextWifiTime:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->timestamp:J

    return-wide v0
.end method

.method public setLocationX(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->locationx:I

    return-void
.end method

.method public setLocationY(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->locationy:I

    return-void
.end method

.method public setNextMobileTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->nextMobileTime:J

    return-void
.end method

.method public setNextWifiTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->nextWifiTime:J

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->timestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "locationx="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->locationx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";locationy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->locationy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";nextwifitime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->nextWifiTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";nextmobiletime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->nextMobileTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
