.class public final Lcom/alipay/android/phone/nfd/nfdservice/ui/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ConvertUtils"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a(Landroid/net/wifi/WifiManager;Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;
    .locals 3

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    invoke-direct {v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;-><init>()V

    iget v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    iput v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->networkId:I

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->mac:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->k:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->wifiState:Landroid/net/NetworkInfo$DetailedState;

    iget v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    iput v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->rssi:I

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a()I

    move-result v0

    iput v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->signalLevel:I

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->ssid:Ljava/lang/String;

    iget v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->c:I

    iput v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->security:I

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->ordinal()I

    move-result v0

    iput v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->pskType:I

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->k:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget-object v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/a/a;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;Landroid/net/wifi/WifiInfo;Landroid/net/DhcpInfo;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "accessPoint2NfdWifiInfo finish. nfdWifiInfo=["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;Landroid/net/wifi/WifiInfo;Landroid/net/DhcpInfo;)V
    .locals 1

    iget v0, p2, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->dns1:Ljava/lang/String;

    iget v0, p2, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->dns2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->linkSpeed:I

    iget v0, p2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->routerIpAdress:Ljava/lang/String;

    return-void
.end method
