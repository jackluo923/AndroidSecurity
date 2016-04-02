.class public final Lcom/alipay/mobile/publicsvc/common/proguard/c/a;
.super Ljava/lang/Object;
.source "LogAgent.java"


# direct methods
.method public static a(Lcom/alipay/mobile/publicsvc/common/proguard/c/b;)V
    .locals 17

    .prologue
    .line 17
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

    .line 18
    new-instance v1, Lcom/alipay/mobile/common/logagent/StorageManager;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->b:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    .line 20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->g:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->c:Ljava/lang/String;

    const/4 v7, 0x0

    .line 21
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->f:Ljava/lang/String;

    .line 22
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->h:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->i:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->j:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->k:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->l:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->m:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/publicsvc/common/proguard/c/b;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    .line 18
    invoke-direct/range {v1 .. v14}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v1

    .line 27
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
