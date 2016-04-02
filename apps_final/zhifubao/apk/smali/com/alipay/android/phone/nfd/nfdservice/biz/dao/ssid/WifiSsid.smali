.class public Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "WifiSsid"
.end annotation


# static fields
.field public static final AUTH_TYPE:Ljava/lang/String; = "authtype"

.field public static final DEVICE_STATUS_OFFLINE:Ljava/lang/String; = "-1"

.field public static final DEVICE_STATUS_ONLINE:Ljava/lang/String; = "0"

.field public static final LOCATION_X:Ljava/lang/String; = "locationx"

.field public static final LOCATION_Y:Ljava/lang/String; = "locationy"

.field public static final MATCH_TYPE:Ljava/lang/String; = "matchtype"

.field public static final SHOPNAME:Ljava/lang/String; = "name"

.field public static final SHOP_ID:Ljava/lang/String; = "shopid"

.field public static final SSID:Ljava/lang/String; = "ssid"

.field public static final SSID_ID:Ljava/lang/String; = "ssidid"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private authtype:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationx:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private locationy:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private matchtype:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private shopid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ssid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ssidid:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field

.field private status:Ljava/lang/String;
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
.method public getAuthType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->authtype:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationX()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->locationx:I

    return v0
.end method

.method public getLocationY()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->locationy:I

    return v0
.end method

.method public getMatchType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->matchtype:Ljava/lang/String;

    return-object v0
.end method

.method public getShopId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->shopid:Ljava/lang/String;

    return-object v0
.end method

.method public getShopName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getSsidId()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->ssidid:J

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->timestamp:J

    return-wide v0
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->authtype:Ljava/lang/String;

    return-void
.end method

.method public setLocationX(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->locationx:I

    return-void
.end method

.method public setLocationY(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->locationy:I

    return-void
.end method

.method public setMatchType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->matchtype:Ljava/lang/String;

    return-void
.end method

.method public setShopId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->shopid:Ljava/lang/String;

    return-void
.end method

.method public setShopName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->name:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->ssid:Ljava/lang/String;

    return-void
.end method

.method public setSsidId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->ssidid:J

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->status:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->timestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ssid_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->ssidid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";shopname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";matchtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->matchtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";authtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->authtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";shopid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->shopid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";locationx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->locationx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";locationy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->locationy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
