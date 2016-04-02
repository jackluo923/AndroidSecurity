.class public Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;
.super Ljava/lang/Object;


# instance fields
.field public content:Ljava/lang/String;

.field public gotoUrl:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field public subTitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJsonObject(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;
    .locals 2

    new-instance v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;-><init>()V

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->title:Ljava/lang/String;

    const-string/jumbo v1, "subTitle"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->subTitle:Ljava/lang/String;

    const-string/jumbo v1, "imgUrl"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->imgUrl:Ljava/lang/String;

    const-string/jumbo v1, "iconUrl"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->iconUrl:Ljava/lang/String;

    const-string/jumbo v1, "content"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->content:Ljava/lang/String;

    const-string/jumbo v1, "gotoUrl"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->gotoUrl:Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->title:Ljava/lang/String;

    :cond_0
    iget-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->subTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->subTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->subTitle:Ljava/lang/String;

    :cond_1
    iget-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->imgUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->imgUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->imgUrl:Ljava/lang/String;

    :cond_2
    iget-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->iconUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->iconUrl:Ljava/lang/String;

    :cond_3
    iget-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->content:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->content:Ljava/lang/String;

    :cond_4
    iget-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->gotoUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->gotoUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->gotoUrl:Ljava/lang/String;

    :cond_5
    return-object v0
.end method
