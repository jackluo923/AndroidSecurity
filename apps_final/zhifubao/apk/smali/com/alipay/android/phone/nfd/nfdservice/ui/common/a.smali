.class public final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

.field public e:Z

.field public f:I

.field public g:Landroid/net/wifi/WifiConfiguration;

.field public h:Landroid/net/wifi/ScanResult;

.field public i:I

.field public j:Landroid/net/wifi/WifiInfo;

.field public k:Landroid/net/NetworkInfo$DetailedState;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->e:Z

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->b(Landroid/net/wifi/ScanResult;)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AP(SSID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Capabilities:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->c:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "WPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->e:Z

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->c(Landroid/net/wifi/ScanResult;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->h:Landroid/net/wifi/ScanResult;

    return-void
.end method

.method constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    iput-boolean v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->e:Z

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->b:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->c:I

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->g:Landroid/net/wifi/WifiConfiguration;

    return-void

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdNetWorkUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;)I
    .locals 4

    const/4 v1, 0x1

    const v3, 0x7fffffff

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    if-eq v2, v3, :cond_3

    iget v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    if-eq v2, v3, :cond_0

    :cond_3
    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    if-ne v2, v3, :cond_4

    iget v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    if-eq v2, v0, :cond_5

    iget v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    if-eq v2, v0, :cond_0

    :cond_5
    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    if-ne v2, v0, :cond_6

    iget v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    if-eq v2, v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AccessPoint"

    invoke-static {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static b(Landroid/net/wifi/ScanResult;)I
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/net/wifi/ScanResult;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "WPA2-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    :goto_0
    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Received abnormal flag string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method final a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->k:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v0, "AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update 1 to set new state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->k:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to AP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    iput-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->k:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v0, "AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update 2 to set new state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->k:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to AP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Landroid/net/wifi/ScanResult;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->c:I

    invoke-static {p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->b(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_3

    const v0, 0x7fffffff

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    :cond_1
    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->c(Landroid/net/wifi/ScanResult;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final a(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdNetWorkUtil;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateNetworkId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " networkId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    const/16 v5, 0x22

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->g:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->g:Landroid/net/wifi/WifiConfiguration;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->b:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdNetWorkUtil;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_1
    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->c:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->l:Ljava/lang/String;

    const-string/jumbo v2, "[0-9A-Fa-f]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->l:Ljava/lang/String;

    aput-object v2, v1, v4

    goto :goto_0

    :cond_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->l:Ljava/lang/String;

    const-string/jumbo v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->l:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    const-string/jumbo v1, "security SECURITY_EAP case, not supported & not implemented yet"

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x0

    :cond_0
    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AccessPoint[ssid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bssid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " rssi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " signal level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->k:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->j:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
