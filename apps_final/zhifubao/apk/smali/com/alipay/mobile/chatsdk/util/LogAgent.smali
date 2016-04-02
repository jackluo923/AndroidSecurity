.class public Lcom/alipay/mobile/chatsdk/util/LogAgent;
.super Ljava/lang/Object;
.source "LogAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogAgent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FFC_1125_02(Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 28
    new-instance v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;

    const-string/jumbo v1, "FFC-0105-1"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000048"

    .line 29
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "autoClear"

    const-string/jumbo v7, ""

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string/jumbo v1, "autoClear"

    iput-object v1, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->seedID:Ljava/lang/String;

    .line 31
    iput-object p0, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->extParam1:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->extParam2:Ljava/lang/String;

    .line 33
    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/LogAgent;->log(Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;)V

    .line 34
    return-void
.end method

.method public static log(Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;)V
    .locals 17

    .prologue
    .line 13
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "LogAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "write log:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v1, Lcom/alipay/mobile/common/logagent/StorageManager;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->behaviorID:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    .line 16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->behaviorStatus:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->appID:Ljava/lang/String;

    const/4 v7, 0x0

    .line 17
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->currentViewID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->refViewID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->seedID:Ljava/lang/String;

    .line 18
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->url:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->extParam1:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->extParam2:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->extParam3:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->extParam4:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->extParam5:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/util/LogAgent$LogItem;->extParam6:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 14
    invoke-direct/range {v1 .. v14}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v1

    .line 23
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "LogAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "write log error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
