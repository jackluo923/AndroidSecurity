.class public Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;
.super Ljava/lang/Object;


# instance fields
.field public autoOpen:Z

.field public bizType:Ljava/lang/String;

.field public cacheTime:I

.field public canPush:Z

.field public displayPanel:Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;

.field public signalIntensity:I

.field public signalTime:I

.field public soundNotification:Z

.field public uuid:Ljava/lang/String;

.field public vibrationNotification:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;
    .locals 3

    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    new-instance v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;

    invoke-direct {v1}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;-><init>()V

    const-string/jumbo v2, "UUID"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->uuid:Ljava/lang/String;

    const-string/jumbo v2, "bizType"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->bizType:Ljava/lang/String;

    const-string/jumbo v2, "signalIntensity"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->signalIntensity:I

    const-string/jumbo v2, "signalTime"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->signalTime:I

    const-string/jumbo v2, "autoOpen"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->autoOpen:Z

    const-string/jumbo v2, "soundNotification"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->soundNotification:Z

    const-string/jumbo v2, "vibrationNotification"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->vibrationNotification:Z

    const-string/jumbo v2, "cacheTime"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->cacheTime:I

    const-string/jumbo v2, "canPush"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->canPush:Z

    const-string/jumbo v2, "displayPanel"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->parseJsonObject(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->displayPanel:Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->displayPanel:Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UUID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " No displayPanel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UUID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->displayPanel:Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cacheTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->cacheTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " gotoUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->displayPanel:Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->gotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
