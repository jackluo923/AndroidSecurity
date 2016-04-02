.class public Lcom/alipay/pushsdk/push/d/a;
.super Ljava/lang/Object;
.source "CfgPacketListenerImpl.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/d/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/pushsdk/push/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/alipay/pushsdk/push/d/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 26
    sput-object v0, Lcom/alipay/pushsdk/push/d/a;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/l;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/pushsdk/push/d/a;->b:Lcom/alipay/pushsdk/push/l;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/c/a;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 38
    new-instance v0, Lcom/alipay/pushsdk/push/g;

    .line 39
    const/16 v1, 0xe

    .line 38
    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/g;-><init>(I)V

    .line 41
    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/connection/c;->a(Lcom/alipay/pushsdk/push/c/a;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 42
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/c/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 45
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v0, "ServerCfg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string/jumbo v2, "STestCfg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/d/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "processPacket() ServerCfg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", SpeedTestCfg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    :cond_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "keepLiveTime"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/connection/m;->c(I)V

    const-string/jumbo v0, "reconnectTime"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/connection/m;->b(I)V

    const-string/jumbo v0, "ctrlLBSState"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/b/e;->a(I)V

    if-lez v0, :cond_1

    const-string/jumbo v0, "ctrlLBSFreq"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/b/e;->b(I)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/d/a;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    const-string/jumbo v3, "LBS_LL_INFO"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    const-string/jumbo v0, "ctrlNdkProt"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v3, Lcom/alipay/pushsdk/push/k;

    iget-object v4, p0, Lcom/alipay/pushsdk/push/d/a;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/pushsdk/push/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/k;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    sget-object v6, Lcom/alipay/pushsdk/push/d/a;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "parseCfgLinkHold() ctrlProcGuard="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", curGuardCtrl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/alipay/pushsdk/push/k;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_d

    :cond_3
    iget-object v4, p0, Lcom/alipay/pushsdk/push/d/a;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x708

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/alibaba/android/proc/SoManager;->getInstance(Landroid/content/Context;IZ)Lcom/alibaba/android/proc/SoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/proc/SoManager;->start()V

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    sget-object v5, Lcom/alipay/pushsdk/push/d/a;->a:Ljava/lang/String;

    const-string/jumbo v6, "parseCfgLinkHold() soManager is started."

    invoke-static {v4, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {v3, v0}, Lcom/alipay/pushsdk/push/k;->a(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v3, "serverList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    new-instance v4, Lcom/alipay/pushsdk/push/q;

    iget-object v5, p0, Lcom/alipay/pushsdk/push/d/a;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/pushsdk/push/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/alipay/pushsdk/push/q;->c(Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v4, "heartTimeout"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/alipay/pushsdk/push/connection/m;->a(I)V

    :cond_7
    const-string/jumbo v4, "ctrlSelf"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    const-string/jumbo v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alipay/pushsdk/push/connection/m;->a(Z)V

    :goto_2
    const-string/jumbo v4, "ctrlAlways"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string/jumbo v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/alipay/pushsdk/push/connection/m;->b(Z)V

    :goto_3
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x4

    sget-object v4, Lcom/alipay/pushsdk/push/d/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "parseCfgLinkHold ctrlAlways="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->h()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ctrlSelf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->g()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x4

    sget-object v4, Lcom/alipay/pushsdk/push/d/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "parseCfgLinkHold ctrlLBSState="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/b/e;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ctrlLBSFreq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/alipay/pushsdk/push/b/e;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ctrlProcGuard="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    sget-object v2, Lcom/alipay/pushsdk/push/d/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parseCfgLinkHold() reconnectTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s, keepLiveTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->m()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s, serverList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    :cond_a
    :goto_4
    if-eqz v1, :cond_10

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "org.rome.push.action.CFG_SPEEDTEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "STestCfg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/d/a;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/d/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "dispatchCfgSpeedTest() sendLoacalBroadcast for speedTest."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 66
    :cond_b
    :goto_5
    return-void

    .line 57
    :cond_c
    :try_start_3
    sget v0, Lcom/alipay/pushsdk/push/b/e;->a:I

    invoke-static {v0}, Lcom/alipay/pushsdk/push/b/e;->a(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    :try_start_4
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x2

    sget-object v3, Lcom/alipay/pushsdk/push/d/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parseCfgLinkHold() got JSONException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 60
    :catch_1
    move-exception v0

    .line 61
    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 62
    sget-object v1, Lcom/alipay/pushsdk/push/d/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket() got JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 57
    :cond_d
    :try_start_5
    sget-object v5, Lcom/alipay/pushsdk/push/k;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/k;->a()V

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    sget-object v5, Lcom/alipay/pushsdk/push/d/a;->a:Ljava/lang/String;

    const-string/jumbo v6, "parseCfgLinkHold() deleteGuardFile is doned."

    invoke-static {v4, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/alipay/pushsdk/push/connection/m;->a(Z)V

    goto/16 :goto_2

    :cond_f
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/alipay/pushsdk/push/connection/m;->b(Z)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    .line 58
    :cond_10
    const/4 v0, 0x4

    :try_start_6
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/d/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "dispatchCfgSpeedTest() there isn\'t speedTest config."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5
.end method
