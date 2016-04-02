.class public final Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;
.super Ljava/lang/Object;
.source "CacheAddressHelper.java"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 130
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->b:Ljava/lang/reflect/Method;

    .line 137
    :goto_0
    return-object v0

    .line 134
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 135
    const-string/jumbo v1, "put"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const-class v3, [Ljava/net/InetAddress;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 136
    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 137
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->b:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private static final b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->a:Ljava/lang/Object;

    .line 149
    :goto_0
    return-object v0

    .line 146
    :cond_0
    const-class v0, Ljava/net/InetAddress;

    const-string/jumbo v1, "addressCache"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 147
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 148
    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static final setAddressCache(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledCacheAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->setAddressCache(Ljava/lang/String;[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string/jumbo v1, "CacheAddressHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAddressCache an exception occurs.  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final setAddressCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 48
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledCacheAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->b()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/net/InetAddress;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->ipToBytesByReg(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string/jumbo v1, "CacheAddressHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAddressCache an exception occurs. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final setAddressCache(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 4

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledCacheAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->b()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string/jumbo v1, "CacheAddressHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAddressCache an exception occurs. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final setAddressCache(Ljava/net/URI;)V
    .locals 4

    .prologue
    .line 69
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledCacheAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->setAddressCache(Ljava/lang/String;[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string/jumbo v1, "CacheAddressHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAddressCache an exception occurs.  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final setAddressCache(Ljava/net/URL;)V
    .locals 4

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledCacheAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->setAddressCache(Ljava/lang/String;[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string/jumbo v1, "CacheAddressHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAddressCache an exception occurs.  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
