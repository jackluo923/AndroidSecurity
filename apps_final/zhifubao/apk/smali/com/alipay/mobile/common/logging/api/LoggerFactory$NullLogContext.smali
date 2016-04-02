.class Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullLogContext;
.super Ljava/lang/Object;
.source "LoggerFactory.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/LogContext;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullLogContext;-><init>()V

    return-void
.end method


# virtual methods
.method public appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 0

    .prologue
    .line 357
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 358
    return-void
.end method

.method public flush(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 295
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 296
    return-void
.end method

.method public flush(Z)V
    .locals 0

    .prologue
    .line 300
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 301
    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 382
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 394
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReleaseCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReleaseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 418
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 388
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 389
    return-void
.end method

.method public putContextParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 263
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 264
    return-void
.end method

.method public putLocalParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 279
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 280
    return-void
.end method

.method public removeContextParam(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 268
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 269
    return-void
.end method

.method public removeLocalParam(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 284
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 285
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 429
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 430
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 337
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 338
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 342
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 343
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 327
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 328
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 332
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 333
    return-void
.end method

.method public setReleaseCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 316
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 317
    return-void
.end method

.method public setReleaseType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 306
    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 352
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 353
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 348
    return-void
.end method

.method public setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V
    .locals 0

    .prologue
    .line 377
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 378
    return-void
.end method

.method public takedownExceptionHandler()V
    .locals 0

    .prologue
    .line 372
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 373
    return-void
.end method

.method public traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 434
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 435
    return-void
.end method

.method public updateLogStrategyCfg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 367
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 368
    return-void
.end method

.method public upload(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 362
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$400()V

    .line 363
    return-void
.end method
