.class public Lcom/alipay/pushsdk/push/ClientActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClientActionReceiver.java"


# static fields
.field public static a:I

.field private static final b:Ljava/lang/String;

.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private c:Lcom/alipay/pushsdk/push/NotificationService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "ClientActionReceiver.java"

    const-class v2, Lcom/alipay/pushsdk/push/ClientActionReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.pushsdk.push.ClientActionReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 35
    const-class v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 34
    sput-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    .line 37
    const/16 v0, 0x12c

    sput v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/NotificationService;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/ClientActionReceiver;)Lcom/alipay/pushsdk/push/NotificationService;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v11, 0x4

    .line 362
    invoke-static {p0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v4

    .line 364
    const-string/jumbo v0, "IPP_360_CFG_DATE"

    invoke-virtual {v4, v0}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    const-string/jumbo v2, "IPP_360_CFG_TIME"

    invoke-virtual {v4, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    :cond_0
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v1, "process360Ipp ippDate or ippTime empty return."

    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_1
    :goto_0
    return-void

    .line 374
    :cond_2
    const-string/jumbo v3, "IPP_360_LAST_PROTECT_MONTH"

    invoke-virtual {v4, v3}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    const-string/jumbo v5, "IPP_360_LAST_PROTECT_DATE"

    invoke-virtual {v4, v5}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 379
    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 380
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 381
    const/16 v9, 0xb

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 382
    const/16 v10, 0xc

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 384
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 385
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v1, "process360Ipp already protected today return."

    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_3
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 392
    const-string/jumbo v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 393
    array-length v0, v3

    if-lez v0, :cond_4

    array-length v0, v2

    if-eq v0, v12, :cond_5

    .line 394
    :cond_4
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v1, "process360Ipp ippDate or ippTime invalid return."

    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 401
    :goto_1
    array-length v10, v3

    if-lt v0, v10, :cond_6

    .line 410
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 411
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v1, "process360Ipp no need protect today return."

    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :cond_6
    :try_start_0
    aget-object v10, v3, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 404
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 401
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 417
    :cond_7
    aget-object v0, v2, v1

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 418
    aget-object v2, v2, v13

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 419
    array-length v2, v0

    if-ne v2, v12, :cond_8

    array-length v2, v5

    if-eq v2, v12, :cond_9

    .line 420
    :cond_8
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v1, "process360Ipp ippDate or ippTime invalid return."

    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 425
    :cond_9
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 431
    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 432
    const/4 v10, 0x1

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 433
    const/4 v10, 0x1

    aget-object v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 441
    :goto_3
    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v0, v3

    .line 442
    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    .line 443
    mul-int/lit8 v2, v9, 0x3c

    add-int/2addr v2, v6

    .line 444
    if-gt v0, v2, :cond_a

    if-gt v2, v1, :cond_a

    .line 447
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 448
    const-string/jumbo v1, "com.qihoo360.mobilesafe"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string/jumbo v1, "com.qihoo360.mobilesafe"

    const-string/jumbo v2, "com.qihoo360.mobilesafe.service.helper.GuardHelperService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string/jumbo v1, "p_from"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 454
    :goto_4
    const-string/jumbo v0, "IPP_360_LAST_PROTECT_MONTH"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 455
    const-string/jumbo v0, "IPP_360_LAST_PROTECT_DATE"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 456
    invoke-static {v14}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v1, "process360Ipp protect 360 done"

    invoke-static {v14, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 435
    :catch_0
    move-exception v0

    move v0, v1

    move v2, v1

    move v3, v1

    .line 438
    goto :goto_3

    .line 460
    :cond_a
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    sget-object v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v1, "process360Ipp not protect hours return."

    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v10

    goto/16 :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    .prologue
    .line 1
    sget-object v4, Lcom/alipay/pushsdk/push/ClientActionReceiver;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v4, v0, v1, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    sget-object v11, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "onReceive() action="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v11, v12}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/util/d;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v11, 0x3

    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x3

    sget-object v12, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "onReceive() networkInfo.isConnected()="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v12, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/util/d;->b(Landroid/content/Context;)Z

    move-result v11

    new-instance v12, Lcom/alipay/pushsdk/push/r;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/alipay/pushsdk/push/r;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    sget-object v13, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "isNotificationEnabled="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/alipay/pushsdk/push/r;->a()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", isNetConnected="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v13, v14}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/push/b;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/push/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/b;->d()V

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v13}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, ".push.action.KEEPLIVE"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->d()Lcom/alipay/pushsdk/push/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/l;->w()V

    const-string/jumbo v4, "30"

    const-string/jumbo v5, "41"

    const-string/jumbo v11, "3"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v11, "Monitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "onReceive at: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v12, ", Intent: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v12, 0x1

    aget-object v7, v7, v12

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", cost:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long/2addr v4, v9

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v11, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v4, "15"

    new-instance v5, Lcom/alipay/pushsdk/push/a;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/alipay/pushsdk/push/a;-><init>(Lcom/alipay/pushsdk/push/ClientActionReceiver;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v11, "ClientActionReceiver Triger Runnable"

    invoke-direct {v4, v5, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v13}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, ".push.action.CONNECT"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v12}, Lcom/alipay/pushsdk/push/r;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v12}, Lcom/alipay/pushsdk/push/r;->e()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x4

    sget-object v12, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "run settingStatus="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v12, v13}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v4, :cond_3

    if-nez v11, :cond_7

    invoke-static {}, Lcom/alipay/pushsdk/push/s;->a()I

    move-result v4

    if-gez v4, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->d()Lcom/alipay/pushsdk/push/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/l;->b()V

    const-string/jumbo v4, "30"

    const-string/jumbo v5, "11"

    const-string/jumbo v11, "1"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    :cond_9
    const-string/jumbo v4, "30"

    const-string/jumbo v5, "10"

    const-string/jumbo v11, "6"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v13}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, ".push.action.CHECK"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    sget v5, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/alipay/pushsdk/push/NotificationService;->a(I)V

    invoke-static {}, Lcom/alipay/pushsdk/push/b/e;->a()I

    move-result v4

    sget v5, Lcom/alipay/pushsdk/push/b/e;->c:I

    if-eq v4, v5, :cond_14

    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x4

    sget-object v5, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v13, "startLBSTimer state is not LBS_INFO_LL and stop LBS."

    invoke-static {v4, v5, v13}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_2
    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v5

    const-string/jumbo v13, "IPP_COUNT_WATCHDOG"

    invoke-virtual {v5, v13}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_c

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    :cond_c
    const/4 v13, 0x4

    invoke-static {v13}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x4

    sget-object v14, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "processTimingIpp curCnt="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", expectCnt=2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_d
    const/4 v13, 0x2

    if-lt v4, v13, :cond_10

    const-string/jumbo v4, "IPP_WEIBO_SWITCH"

    invoke-virtual {v5, v4}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_e

    const-string/jumbo v13, "on"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_e
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v13, "com.sina.weibo"

    invoke-virtual {v4, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "com.sina.weibo"

    const-string/jumbo v14, "com.sina.weibo.push.PushServiceProxy"

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "intent_come_from"

    const-string/jumbo v14, "alipay"

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "clientId"

    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/util/c;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/c;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/pushsdk/util/c;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x4

    sget-object v13, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v14, "processTimingIpp done Ipp Protecting Weibo"

    invoke-static {v4, v13, v14}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_4
    const/4 v4, 0x0

    :cond_10
    const-string/jumbo v13, "IPP_COUNT_WATCHDOG"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v13, v4}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a(Landroid/content/Context;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->d()Lcom/alipay/pushsdk/push/l;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v5

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->d()Lcom/alipay/pushsdk/push/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/connection/k;->c()Z

    move-result v4

    :cond_11
    new-instance v5, Lcom/alipay/pushsdk/push/r;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-direct {v5, v13}, Lcom/alipay/pushsdk/push/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/r;->a()Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/r;->e()Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    :goto_5
    const/4 v13, 0x3

    invoke-static {v13}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v13, 0x3

    sget-object v14, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "checkPushStatus linkStatus="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", settingStatus="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-ne v5, v4, :cond_1a

    const/4 v4, 0x0

    :goto_6
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x4

    sget-object v13, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "PushCheck checkPushStatus="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v13, v14}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->c:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->d()Lcom/alipay/pushsdk/push/l;

    move-result-object v5

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/l;->c()V

    const-string/jumbo v4, "16"

    const-string/jumbo v5, "20"

    const-string/jumbo v11, "7"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v5

    const-string/jumbo v13, "LBS_COUNT_WATCHDOG"

    invoke-virtual {v5, v13}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_15

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_15

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    :cond_15
    invoke-static {}, Lcom/alipay/pushsdk/push/b/e;->b()I

    move-result v13

    const/4 v14, 0x4

    invoke-static {v14}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v14

    if-eqz v14, :cond_16

    const/4 v14, 0x4

    sget-object v15, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "startLBSTimer curCnt="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", expectCnt="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-lt v4, v13, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/alipay/pushsdk/push/b/d;->a(Landroid/content/Context;)V

    const/4 v4, 0x0

    :cond_17
    const-string/jumbo v13, "LBS_COUNT_WATCHDOG"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v13, v4}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_18
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x4

    sget-object v13, Lcom/alipay/pushsdk/push/ClientActionReceiver;->b:Ljava/lang/String;

    const-string/jumbo v14, "processTimingIpp weiboSwitch if off. do nothing."

    invoke-static {v4, v13, v14}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_1a
    if-eqz v5, :cond_1b

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_1b
    const/4 v4, -0x1

    goto/16 :goto_6

    :pswitch_1
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/l;->t()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/l;->x()J

    move-result-wide v11

    sget v4, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    int-to-long v13, v4

    cmp-long v4, v11, v13

    if-gtz v4, :cond_3

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/l;->w()V

    const-string/jumbo v4, "16"

    const-string/jumbo v5, "41"

    const-string/jumbo v11, "3"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v12}, Lcom/alipay/pushsdk/push/r;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->d()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v4, v11, v13

    if-lez v4, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v11, v13, v11

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->c()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v13, v4

    sub-long v11, v13, v11

    const-wide/16 v13, 0x0

    cmp-long v4, v11, v13

    if-gtz v4, :cond_1c

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/l;->c()V

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/l;->b()V

    const-string/jumbo v4, "16"

    const-string/jumbo v5, "31"

    const-string/jumbo v11, "1"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v4, "16"

    const-string/jumbo v5, "30"

    const-string/jumbo v11, "5"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/l;->b()V

    const-string/jumbo v4, "16"

    const-string/jumbo v5, "01"

    const-string/jumbo v11, "1"

    invoke-static {v4, v5, v11}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
