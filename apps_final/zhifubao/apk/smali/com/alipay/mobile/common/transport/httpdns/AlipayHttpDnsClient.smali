.class public Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;
.super Ljava/lang/Object;
.source "AlipayHttpDnsClient.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;
.implements Lcom/alipay/mobile/common/transport/httpdns/DnsService;


# static fields
.field public static alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

.field static dnsSwitch:Z


# instance fields
.field dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

.field mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setDnsLocalManager(Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;)V

    .line 111
    return-void
.end method

.method private static a(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 178
    :try_start_0
    const-string/jumbo v0, "mobilegw.alipay.com"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mobilegwspdy.alipay.com"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 209
    :goto_0
    return-object v0

    .line 183
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MOBILEGW_PRE_SET_IPS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 188
    goto :goto_0

    .line 192
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, ","

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 197
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->ipToBytesByReg(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 202
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 203
    goto :goto_0

    .line 207
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/net/InetAddress;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getIpsByHttpDns(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 215
    if-nez v0, :cond_2

    .line 216
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v2

    .line 217
    const-string/jumbo v3, "HTTP_DNS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "queryLocalIPByHost HttpdnsIP=["

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-eqz v2, :cond_1

    const-wide/32 v3, 0x5265c00

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->isTimeOut(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIps()[Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v1, p1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->put2Cache(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V

    move-object v2, v0

    .line 226
    :goto_1
    if-eqz v2, :cond_3

    array-length v0, v2

    if-lez v0, :cond_3

    .line 227
    const-string/jumbo v0, "HTTP_DNS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "use httpdns,"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    array-length v0, v2

    new-array v0, v0, [Ljava/net/InetAddress;

    .line 229
    const/4 v1, 0x0

    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 230
    aget-object v3, v2, v1

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->ipToBytesByReg(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v0, v1

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 217
    :cond_0
    const-string/jumbo v1, "is null"

    goto :goto_0

    .line 222
    :cond_1
    const-string/jumbo v1, "HTTP_DNS"

    const-string/jumbo v2, "queryLocalIPByHost HttpdnsIP maybe timeout."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v2, v0

    goto :goto_1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string/jumbo v1, "HTTP_DNS"

    const-string/jumbo v2, "httpdns getAllByName exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    :cond_3
    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method public static dnsClientInit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 63
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;-><init>(Landroid/content/Context;)V

    .line 68
    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setManagerListener()V

    .line 69
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/HttpDnsMessageListener;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDnsMessageListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->addListener(Lcom/alipay/mobile/common/transport/httpdns/HttpDnsEventListener;)V

    .line 70
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setHosts(Ljava/lang/String;)V

    .line 76
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->isLoadedConfig()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isGrayscaleUser()Z

    move-result v1

    .line 82
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    .line 84
    if-lez v0, :cond_3

    .line 85
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 86
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 87
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    .line 93
    :cond_2
    :goto_1
    const-string/jumbo v2, "HTTP_DNS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "AlipayHttpDnsClient init,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string/jumbo v1, "HTTP_DNS"

    const-string/jumbo v2, "httpdns switch exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    :cond_3
    if-nez v0, :cond_2

    .line 90
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    goto :goto_1

    .line 97
    :cond_4
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isRCVersion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    return-object v0
.end method


# virtual methods
.method public deleteIP2Local()V
    .locals 3

    .prologue
    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "PAH_SND"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 338
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v1, "deleteIP2Local"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public deleteLocalIpsByHost(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "PAH_SND"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 318
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 320
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 323
    const-string/jumbo v1, "HTTP_DNS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteLocalIpsByHost host="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    const/4 v0, 0x1

    .line 327
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "host is null"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BLACK_LIST_DNS_HOST_NAME:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Blacklist host:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    if-eqz v0, :cond_2

    .line 151
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->b(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_2

    .line 163
    :goto_0
    return-object v0

    .line 158
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getAllByNameFromInetAddr(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 160
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_3

    .line 162
    const-string/jumbo v1, "HTTP_DNS"

    const-string/jumbo v2, "getAllByNameFromPreset Success."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_3
    throw v1
.end method

.method public getIpInfoByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getIpInfoByHttpDns(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "http_dns_last_time"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getLonggData(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "PAH_SND"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 250
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    const-string/jumbo v2, "HTTP_DNS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryLocalIPByHost hostName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , ipInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    :goto_0
    return-object v0

    .line 259
    :cond_0
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 260
    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;-><init>()V

    .line 261
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIp(Ljava/lang/String;)V

    .line 262
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtl(J)V

    .line 263
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTime(J)V

    .line 264
    const/4 v3, 0x3

    aget-object v2, v2, v3

    const-string/jumbo v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIps([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 266
    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    const-string/jumbo v2, "HTTP_DNS"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveLastUpdateTime()V
    .locals 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "http_dns_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;J)V

    .line 347
    return-void
.end method

.method public setErrorByHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setErrorByHost(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public storeIP2Local(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V
    .locals 6

    .prologue
    .line 282
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "PAH_SND"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTtl()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIps()[Ljava/lang/String;

    move-result-object v3

    .line 296
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const/4 v0, 0x1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 298
    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    const-string/jumbo v0, "HTTP_DNS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "storeIP2Local hostName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    goto :goto_0
.end method
