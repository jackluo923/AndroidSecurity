.class public Lcom/alipay/mobile/common/utils/ConnectionUtil;
.super Ljava/lang/Object;
.source "ConnectionUtil.java"


# static fields
.field public static final TYPE_3GNET:Ljava/lang/String; = "3gnet"

.field public static final TYPE_3GWAP:Ljava/lang/String; = "3gwap"

.field public static final TYPE_CMNET:Ljava/lang/String; = "cmnet"

.field public static final TYPE_CMWAP:Ljava/lang/String; = "cmwap"

.field public static final TYPE_CTNET:Ljava/lang/String; = "ctnet"

.field public static final TYPE_CTWAP:Ljava/lang/String; = "ctwap"

.field public static final TYPE_UNINET:Ljava/lang/String; = "uninet"

.field public static final TYPE_UNIWAP:Ljava/lang/String; = "uniwap"

.field public static final TYPE_WIFI:Ljava/lang/String; = "wifi"

.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    sput-object v0, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 26
    sget-object v0, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "cmwap"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "cmnet"

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "uniwap"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "uninet"

    const-string/jumbo v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "ctnet"

    const-string/jumbo v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "ctwap"

    const-string/jumbo v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "3gnet"

    const-string/jumbo v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "3gwap"

    const-string/jumbo v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnType(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 55
    .line 57
    :try_start_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 58
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 62
    const-string/jumbo v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    const-string/jumbo v3, "MOBILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 67
    sget-object v2, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, -0x1

    .line 70
    const-string/jumbo v3, "777"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->isWapAPN()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    const/4 v0, 0x6

    goto :goto_0

    .line 74
    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    move v0, v1

    .line 84
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static getConnTypeName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/alipay/mobile/common/utils/ConnectionUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 120
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public static getWapIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    const-string/jumbo v0, "10.0.0.172"

    :cond_0
    return-object v0
.end method

.method public static getWapPort()I
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    .line 108
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x50

    :cond_0
    return v0
.end method

.method public static isWapAPN()Z
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getWapIP()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getWapPort()I

    move-result v1

    .line 96
    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
