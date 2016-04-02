.class public Lcom/alipay/mobile/rome/syncsdk/service/a/a;
.super Ljava/lang/Object;
.source "BindUserTask.java"

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
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncsdk/service/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 37
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 45
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "BindUserTask: run "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getCurrState()Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 48
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "BindUserTask: run: [ not device binded state ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendBindUserPacket: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getProtocolVersion()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/c/c;->a(I)Lcom/alipay/mobile/rome/syncsdk/transport/c/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a(I)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->b(I)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "bind"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendBindUserPacket: [ userId or sessionId is null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendBindUserPacket: bindReq: [ JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v4, "linkToken"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getCurrState()Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    move-result-object v2

    if-eq v1, v2, :cond_3

    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "BindUserTask: run: [ not device binded state ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendBindUserPacket: [ Exception="

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

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->onUserBindSended()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setLastSendInitPacketTime(J)V

    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnection()Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getPacketReplyTimeout()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startInitReplayCheckTimer(JI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method
