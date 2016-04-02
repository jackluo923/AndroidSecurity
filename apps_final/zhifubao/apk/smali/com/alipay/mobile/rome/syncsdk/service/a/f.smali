.class public Lcom/alipay/mobile/rome/syncsdk/service/a/f;
.super Ljava/lang/Object;
.source "RegisterTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/service/a/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 41
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 49
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->a:Ljava/lang/String;

    const-string/jumbo v2, "RegisterTask: run "

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getCurrState()Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 52
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->a:Ljava/lang/String;

    const-string/jumbo v1, "RegisterTask: run: [ not connected state ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->a:Ljava/lang/String;

    const-string/jumbo v2, "sendRegisterPacket: "

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getProtocolVersion()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/c;->a(I)Lcom/alipay/mobile/rome/syncsdk/transport/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a(I)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->b(I)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v3, "osType"

    const-string/jumbo v4, "android"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "network"

    iget-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->getActiveNetType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "linkVersion"

    const-string/jumbo v4, "2.0.0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "action"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string/jumbo v3, "appVer"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "pId"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "appName"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->a:Ljava/lang/String;

    const-string/jumbo v5, "sendRegisterPacket: [ utdid is null ]"

    invoke-static {v4, v5}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "dId"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getCdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "linkExtInfo"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getCdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v0, 0x1

    const-string/jumbo v5, "linkToken"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "sessionId"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getCurrState()Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    move-result-object v3

    if-eq v2, v3, :cond_5

    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->a:Ljava/lang/String;

    const-string/jumbo v1, "RegisterTask: run: [ not connected state ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendRegisterPacket: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getReconnectInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startDelayedConnectTimer(I)V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    const-string/jumbo v3, "action"

    const-string/jumbo v4, "reconn"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RsendRegisterPacket: registerReq: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->getImsi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->getClinetKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "imei"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "imsi"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "cKey"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :cond_5
    if-eqz v0, :cond_7

    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->onRegisterSended()V

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setLastSendInitPacketTime(J)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnection()Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getPacketReplyTimeout()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isWifiNetType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getPacketReplyTimeout()I

    move-result v0

    :cond_6
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startInitReplayCheckTimer(JI)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->onDeviceBindSended()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method
