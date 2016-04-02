.class public Lcom/alipay/mobile/common/transport/TransportStrategy;
.super Ljava/lang/Object;
.source "TransportStrategy.java"


# static fields
.field public static final NET_CONTEXT:Ljava/lang/String; = "NET_CONTEXT"

.field public static final SWITCH_OPEN_STR:Ljava/lang/String; = "T"

.field public static final TAG:Ljava/lang/String; = "TransportStrategy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configInit(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 3

    .prologue
    .line 146
    :try_start_0
    const-string/jumbo v0, "TransportStrategy"

    const-string/jumbo v1, "RPC TRANSPORT CONFIG INIT"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {p0, p2}, Lcom/alipay/mobile/common/transport/TransportStrategy;->fillNetTypes(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 151
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MDAP_SEED1:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    iput v0, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->logRandom:I

    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GZIP_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->reqGzip:Z

    .line 153
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isGrayscaleUser()Z

    move-result v0

    iput-boolean v0, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->testUser:Z

    .line 154
    iput-object p1, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->setInitd(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string/jumbo v1, "TransportStrategy"

    const-string/jumbo v2, "RPC\u7f51\u7edc\u914d\u7f6e\u521d\u59cb\u65f6\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static fillCurrentReqInfo(ZLjava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;-><init>()V

    .line 42
    iput-boolean p0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->use:Z

    .line 43
    iput-object p1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    .line 44
    iput-object v0, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    .line 45
    return-void
.end method

.method public static fillNetTypes(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 1

    .prologue
    .line 201
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->net0:I

    .line 202
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->net1:I

    .line 203
    return-void
.end method

.method public static final getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    return-object v0
.end method

.method public static final getConnTimeout(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->CONN_TIME_OUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    return v0
.end method

.method public static final getHandshakTimeout()I
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->HANDSHAK_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    return v0
.end method

.method public static final getPreGWUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    const-string/jumbo v0, "https://mobilegwpre.alipay.com/mgw.htm"

    return-object v0
.end method

.method public static final getReadTimeout(Landroid/content/Context;)I
    .locals 5

    .prologue
    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 59
    if-nez p0, :cond_0

    .line 60
    const-string/jumbo v1, "TransportStrategy"

    const-string/jumbo v2, "context is null. reivew code please !"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->WIFI_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    .line 83
    :goto_0
    return v0

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 67
    const-string/jumbo v2, "TransportStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getReadTimeout networkType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    packed-switch v1, :pswitch_data_0

    .line 83
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->WIFI_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    goto :goto_0

    .line 72
    :pswitch_0
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SECOND_GEN_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    goto :goto_0

    .line 75
    :pswitch_1
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->THIRD_GEN_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    goto :goto_0

    .line 77
    :pswitch_2
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->WIFI_READ_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final getStrategyVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getSyncLogStrategy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SYNC_LOG_STRATEGY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAlipayUrl(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mobilegw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isEnabledAmnet()Z
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 228
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const-string/jumbo v0, "TransportStrategy"

    const-string/jumbo v1, "isEnabledAmnet is true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    .line 233
    :cond_0
    const-string/jumbo v0, "TransportStrategy"

    const-string/jumbo v1, "isEnabledAmnet is false"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isEnabledAmnet(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->update(Landroid/content/Context;)Z

    .line 219
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledAmnet()Z

    move-result v0

    return v0
.end method

.method public static isEnabledCacheAddress()Z
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->ENABLED_CACHE_ADDRESS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isEnabledRpcV2()Z
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 208
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPCV2_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string/jumbo v1, "T"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGrayscaleUser()Z
    .locals 4

    .prologue
    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GRAY_VALUE1:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GRAY_VALUE2:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isUse4Utdid(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static isUse4Utdid(Ljava/lang/String;II)Z
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 112
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;[I)Z

    move-result v0

    return v0
.end method

.method public static loadConfig(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getConfigureManager()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->isLoadedConfig()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->update(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 177
    :goto_0
    return v0

    .line 173
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    const-string/jumbo v2, "TransportStrategy"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final tryEnableMMTPForSettings(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 260
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v1

    .line 261
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isEnableAmnetSetting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    .line 262
    if-nez v2, :cond_0

    .line 263
    const-string/jumbo v1, "TransportStrategy"

    const-string/jumbo v2, "enableAmnetSetting is not exist!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return v0

    .line 267
    :cond_0
    const-string/jumbo v3, "TransportStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "enableAmnetSetting=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_3

    .line 271
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    .line 272
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->OPEN:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v4, "AT"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V

    .line 273
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v4, "64,64,64"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V

    .line 274
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NO_DOWN_HTTPS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v4, "1-1"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V

    .line 275
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPCV2_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v4, "T"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V

    .line 276
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V

    .line 277
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->LSW_GRAY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v4, "1-1"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 280
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 282
    const-string/jumbo v3, "mobilegw.alipay.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "amgw.alipay.com:443"

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V

    .line 298
    :goto_1
    const-string/jumbo v1, "TransportStrategy"

    const-string/jumbo v2, "settings config load finish!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x1

    goto :goto_0

    .line 284
    :cond_1
    const-string/jumbo v3, "mobilegwpre.alipay.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "amgwpre.alipay.com:443"

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 300
    :catch_0
    move-exception v1

    .line 301
    const-string/jumbo v2, "TransportStrategy"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :cond_2
    :try_start_1
    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":8901"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V

    goto :goto_1

    .line 290
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    .line 291
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->OPEN:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "F"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V

    .line 292
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "0,0,0"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V

    .line 293
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NO_DOWN_HTTPS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "0-1"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V

    .line 294
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPCV2_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "T"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V

    .line 295
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V

    .line 296
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->LSW_GRAY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v3, "1-1"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
