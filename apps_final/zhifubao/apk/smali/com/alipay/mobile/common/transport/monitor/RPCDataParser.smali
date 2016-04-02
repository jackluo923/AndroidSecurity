.class public Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;
.super Ljava/lang/Object;
.source "RPCDataParser.java"


# static fields
.field public static final BOUND_SYMBOL:Ljava/lang/String; = ","

.field public static final PLACE_HOLDER:Ljava/lang/String; = "-"

.field public static final TIME_MS:Ljava/lang/String; = "ms"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/monitor/DataContainer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-interface {p2, p1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    const/4 v1, 0x1

    if-ne v1, p3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;ZLjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    .line 105
    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v4, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v4}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    .line 112
    const-string/jumbo v1, "RPC"

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v1, "1.0"

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getNetType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4, p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "DNS_TIME"

    invoke-static {v1, v5, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 117
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "TCP_TIME"

    invoke-static {v1, v5, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 118
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "SSL_TIME"

    invoke-static {v1, v5, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 119
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "DATA_TIME"

    invoke-static {v1, v5, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 120
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "ALL_TIME"

    invoke-static {v1, v5, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 121
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "REQ_SIZE"

    invoke-static {v1, v5, v0, v2}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 122
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "RES_SIZE"

    invoke-static {v1, v5, v0, v2}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 123
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "UUID"

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->rpcUUID:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "API"

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v1, "ERROR"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    if-nez v1, :cond_3

    .line 129
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "RESULT"

    const-string/jumbo v6, "T"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 134
    :goto_1
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "ERROR"

    invoke-static {v5, v6, v0, v2}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 136
    const-string/jumbo v5, "DOWN"

    invoke-interface {v0, v5}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    if-nez v5, :cond_4

    .line 138
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "EXT1"

    const-string/jumbo v7, "F"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :goto_2
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "ATLS_DOWN"

    invoke-static {v5, v6, v0, v2}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 143
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "STALLED_TIME"

    invoke-static {v5, v6, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 144
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "SENT_TIME"

    invoke-static {v5, v6, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 145
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "WAIT_TIME"

    invoke-static {v5, v6, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 146
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "PROXY"

    invoke-static {v5, v6, v0, v2}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 147
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "TARGET_HOST"

    invoke-static {v5, v6, v0, v2}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 148
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "R_COOKIE"

    invoke-static {v5, v6, v0, v2}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 149
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "READ_TIME"

    invoke-static {v2, v5, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 156
    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    .line 157
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 162
    :cond_2
    const-string/jumbo v0, "RPC_PERF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_3
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "RESULT"

    const-string/jumbo v6, "F"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    .line 132
    goto/16 :goto_1

    .line 140
    :cond_4
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "EXT1"

    const-string/jumbo v7, "T"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method static isLogUp(Lcom/alipay/mobile/common/transport/context/TransportContext;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 85
    const/4 v1, 0x0

    .line 87
    iget v2, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->logRandom:I

    if-lez v2, :cond_1

    .line 88
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 89
    iget v3, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->logRandom:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 90
    if-nez v2, :cond_2

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    iget v2, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->logRandom:I

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static final monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 3

    .prologue
    .line 39
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->parserContext(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string/jumbo v1, "RPCDataParser"

    const-string/jumbo v2, "RPC\u76d1\u63a7\u65e5\u5fd7\u7edf\u8ba1\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parserContext(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 3

    .prologue
    .line 61
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->isLogUp(Lcom/alipay/mobile/common/transport/context/TransportContext;)Z

    move-result v1

    .line 64
    :try_start_0
    const-string/jumbo v0, "spdy"

    invoke-static {p0, v1, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    :try_start_1
    const-string/jumbo v0, "mrpc"

    invoke-static {p0, v1, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :goto_1
    :try_start_2
    const-string/jumbo v0, "https"

    invoke-static {p0, v1, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 81
    :goto_2
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string/jumbo v2, "RPCDataParser"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    const-string/jumbo v2, "RPCDataParser"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 77
    :catch_2
    move-exception v0

    .line 78
    const-string/jumbo v1, "RPCDataParser"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
