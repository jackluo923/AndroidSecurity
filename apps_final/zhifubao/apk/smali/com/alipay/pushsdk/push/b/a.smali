.class public Lcom/alipay/pushsdk/push/b/a;
.super Ljava/lang/Object;
.source "PushLBSHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alipay/pushsdk/push/b/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/alipay/pushsdk/push/b/a;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alipay/pushsdk/push/b/a;->b:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 28
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/b/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    sget-object v1, Lcom/alipay/pushsdk/push/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLBSInfo loc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_1
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 48
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "LBS_LL_INFO"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 52
    :cond_0
    const-string/jumbo v0, "0,0.0,0.0,0.0"

    .line 55
    :cond_1
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    sget-object v1, Lcom/alipay/pushsdk/push/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getProviderInfo location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_2
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x3

    .line 63
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/a;->b:Landroid/content/Context;

    .line 64
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 63
    iput-object v0, p0, Lcom/alipay/pushsdk/push/b/a;->c:Landroid/net/wifi/WifiManager;

    .line 66
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/a;->c:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    .line 67
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/alipay/pushsdk/push/b/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "getWifiInfo mWifiManager is null."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    const-string/jumbo v0, ""

    .line 157
    :cond_1
    :goto_0
    return-object v0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/a;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    sget-object v0, Lcom/alipay/pushsdk/push/b/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "getWifiInfo wifi is not ENABLED."

    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/a;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 81
    if-eq v0, v7, :cond_6

    .line 82
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    sget-object v0, Lcom/alipay/pushsdk/push/b/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "getWifiInfo wifiState is not WIFI_STATE_ENABLED."

    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_0

    .line 88
    :cond_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    new-instance v3, Lcom/alipay/pushsdk/push/b/g;

    invoke-direct {v3}, Lcom/alipay/pushsdk/push/b/g;-><init>()V

    .line 92
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/a;->c:Landroid/net/wifi/WifiManager;

    .line 93
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_b

    .line 95
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/pushsdk/push/b/g;->b:Ljava/lang/String;

    .line 96
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/pushsdk/push/b/g;->a:Ljava/lang/String;

    .line 97
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, v3, Lcom/alipay/pushsdk/push/b/g;->c:I

    .line 101
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b/a;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_8

    .line 106
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 107
    sget-object v4, Lcom/alipay/pushsdk/push/b/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getWifiInfo lastScanResult size="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 120
    :cond_8
    new-instance v0, Lcom/alipay/pushsdk/push/b/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/b/b;-><init>(Lcom/alipay/pushsdk/push/b/a;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    const/4 v0, 0x1

    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 152
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    sget-object v1, Lcom/alipay/pushsdk/push/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getWifiInfo wifiinfoStr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_b
    const-string/jumbo v0, "no_connected_wifi"

    iput-object v0, v3, Lcom/alipay/pushsdk/push/b/g;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/pushsdk/push/b/g;->b:Ljava/lang/String;

    goto :goto_1

    .line 110
    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 111
    new-instance v5, Lcom/alipay/pushsdk/push/b/g;

    invoke-direct {v5}, Lcom/alipay/pushsdk/push/b/g;-><init>()V

    .line 112
    iget-object v6, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v6, v5, Lcom/alipay/pushsdk/push/b/g;->a:Ljava/lang/String;

    .line 113
    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v6, v5, Lcom/alipay/pushsdk/push/b/g;->b:Ljava/lang/String;

    .line 114
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    iput v0, v5, Lcom/alipay/pushsdk/push/b/g;->c:I

    .line 115
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 137
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/push/b/g;

    .line 138
    iget-object v5, v3, Lcom/alipay/pushsdk/push/b/g;->b:Ljava/lang/String;

    iget-object v6, v0, Lcom/alipay/pushsdk/push/b/g;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 139
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/b/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    if-ge v1, v7, :cond_a

    .line 143
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method
