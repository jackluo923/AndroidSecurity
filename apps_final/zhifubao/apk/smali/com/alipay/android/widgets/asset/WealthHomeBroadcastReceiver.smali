.class public Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WealthHomeBroadcastReceiver.java"


# static fields
.field private static h:J

.field private static final synthetic r:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

.field private b:Z

.field private c:Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;

.field private g:J

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

.field private p:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

.field private q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "WealthHomeBroadcastReceiver.java"

    const-class v2, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.widgets.asset.WealthHomeBroadcastReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x74

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->r:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 65
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->h:J

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->b:Z

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->f:Landroid/os/Handler;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->g:J

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->i:Z

    .line 67
    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->j:I

    .line 75
    new-instance v0, Lcom/alipay/android/widgets/asset/n;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/n;-><init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->q:Ljava/lang/Runnable;

    .line 93
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string/jumbo v0, "WealthHome"

    return-object v0
.end method

.method static synthetic a(J)V
    .locals 0

    .prologue
    .line 65
    sput-wide p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->h:J

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 421
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    .line 422
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 421
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 424
    const-string/jumbo v0, "registBindToCard"

    .line 425
    const-string/jumbo v2, "registbindtype"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 426
    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 430
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "WealthHome"

    const-string/jumbo v3, "openWap addTransaction"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v1, Lcom/alipay/android/widgets/asset/r;

    invoke-direct {v1, p0}, Lcom/alipay/android/widgets/asset/r;-><init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->addTransaction(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;)Ljava/lang/String;

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-direct {p0, v1}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 457
    const-class v2, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 461
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "WealthHome"

    const-string/jumbo v4, "openWapActivity addTransaction"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v2, Lcom/alipay/android/widgets/asset/s;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/widgets/asset/s;-><init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->addTransaction(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;)Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->p:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 363
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    const-string/jumbo v2, "showFullScreenAdvert"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->o:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    const-string/jumbo v3, "SHOW"

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "u"

    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "st"

    const-string/jumbo v2, "NO"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sb"

    const-string/jumbo v2, "NO"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "transaction_id"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "WealthHome"

    const-string/jumbo v4, "ready to show h5 page"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/LogAgentUtil;->a()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    const-string/jumbo v2, "h5Service start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 479
    const-string/jumbo v1, "true"

    .line 480
    const-string/jumbo v2, "BANKCARD_ADD_LOGIN_INTRO_ENABLE"

    invoke-static {v2}, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 481
    if-nez v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v0

    .line 484
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "WealthHome"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isOpenWap="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->b:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-boolean v1, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->b:Z

    if-eqz v1, :cond_3

    .line 488
    const/4 v1, 0x5

    .line 490
    :try_start_0
    const-string/jumbo v2, "BANKCARD_ADD_LOGIN_INTRO_TIMES"

    invoke-static {v2}, Lcom/alipay/mobile/base/config/SwitchConfigUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_2

    .line 493
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 500
    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    .line 501
    :try_start_2
    invoke-static {p1}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I

    move-result v2

    .line 503
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "WealthHome"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u8df3\u8fc7\u8fd0\u8425\u9875\u9762:showWap="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->b:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 504
    const-string/jumbo v6, ",userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 505
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 503
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 506
    if-ge v2, v1, :cond_0

    .line 516
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->b:Z

    goto :goto_0

    .line 494
    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 512
    :catch_1
    move-exception v0

    .line 513
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "WealthHome"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I
    .locals 4

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 523
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "BANKCARD_ADD_LOGIN_INTRO_TIMES"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 524
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-static {v1, v2}, Lcom/alipay/asset/common/util/ShareStoreForAsset;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 530
    :goto_0
    return v0

    .line 526
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 65
    sget-wide v0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->h:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->j:I

    return v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->i:Z

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    const-string/jumbo v2, "scheduleFullScreenAdvert"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->p:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 309
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 310
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "WealthHome"

    const-string/jumbo v4, "show adlist"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-class v2, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 314
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "WealthHome"

    const-string/jumbo v4, "advert addTransaction"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v2, Lcom/alipay/android/widgets/asset/p;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/widgets/asset/p;-><init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->addTransaction(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;)Ljava/lang/String;

    move-result-object v0

    .line 315
    iput-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->e:Ljava/lang/String;

    .line 324
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->i:Z

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 395
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadRpcHomeInfo:isLogin="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->g:J

    sub-long/2addr v0, v2

    .line 399
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "WealthHome"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u4e0a\u6b21\u95f4\u9694\u65f6\u95f4="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 401
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    const-string/jumbo v2, "\u95f4\u9694\u65f6\u95f4\u5927\u4e8e10000,\u6267\u884crpc"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->g:J

    .line 403
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->f:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widgets/asset/q;

    invoke-direct {v1, p0}, Lcom/alipay/android/widgets/asset/q;-><init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)V

    .line 411
    const-wide/16 v2, 0x14

    .line 403
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 414
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->n:Z

    return-void
.end method

.method static synthetic f(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->c()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->c:Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->r:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->o:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v7

    invoke-static {}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a()Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    new-instance v0, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

    invoke-direct {v0, v7}, Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->c:Lcom/alipay/android/widgets/asset/utils/BindCardProcessor;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_9

    const-string/jumbo v1, "FULL_SCREEN_AD_RPCTIME_TIMEOUT"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v8, "WealthHome"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "rpctime:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->o:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onReceive, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->o:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->o:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->k:Z

    const-string/jumbo v0, "logonId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "com.alipay.security.withPwd"

    const/4 v7, 0x1

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v0, "switchaccount"

    const/4 v8, 0x0

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v9

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    const-string/jumbo v11, "WealthHome"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "userInfo is null:"

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v9, :cond_a

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v11, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    if-nez v7, :cond_2

    if-eqz v8, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->b()V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Ljava/lang/String;)Z

    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->d()V

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "convenient"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->l:Z

    :cond_4
    if-eqz v1, :cond_b

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/misc/ExtStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "true"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->m:Z

    :cond_5
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v8, "WealthHome"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "gestureAppearMode:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",gesturepwd:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",skipstr:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",userinfo gesture skip:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isGestureSkip()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v8, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v8, "WealthHome"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "convenient:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->l:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",skipGesture:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->m:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v8, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->i:Z

    if-eqz v1, :cond_e

    if-eqz v7, :cond_e

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v7, "WealthHome"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "{[info=login sucess,logonId="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, "]}"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    const-string/jumbo v7, "\u7528\u6237\u767b\u5f55\u5b8c\u6210\uff0c\u51c6\u5907\u67e5\u8be2\u9996\u9875Rpc"

    invoke-interface {v0, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registBindToCard"

    const-string/jumbo v1, "registbindtype"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p2}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a(Landroid/content/Intent;)V

    :cond_6
    :goto_4
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->m:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->l:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->k:Z

    :goto_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    const-string/jumbo v7, "getAdvertisementFromRemote"

    invoke-interface {v0, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->o:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    const-string/jumbo v1, "AFTER_LOGIN"

    new-instance v7, Lcom/alipay/android/widgets/asset/o;

    invoke-direct {v7, p0}, Lcom/alipay/android/widgets/asset/o;-><init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)V

    invoke-virtual {v0, v1, v7}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getSpaceInfoByCode(Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    :cond_7
    :goto_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.android.main.avatar.action.changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "closeShowWapAfter20s(),showWap="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->b:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->b:Z

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "state=onResume"

    const-string/jumbo v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->q:Ljava/lang/Runnable;

    const-wide/16 v7, 0x4e20

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    const-string/jumbo v7, "closeShowWapAfter20s()"

    invoke-interface {v0, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x1

    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", cost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr v0, v5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v7, "WealthHome"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_b
    :try_start_2
    invoke-virtual {v9}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/misc/ExtStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->m:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v7, "WealthHome"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive is null"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_c
    :try_start_3
    invoke-virtual {v9}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/misc/ExtStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isGestureSkip()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p2}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_e
    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->m:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->l:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->k:Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    const-string/jumbo v7, "{[info=registerLoginMsgService],[msg=\u6d88\u606f\u63a5\u6536\u4e3a\u81ea\u52a8\u767b\u5f55\u6216\u5931\u8d25\u767b\u9646]}"

    invoke-interface {v0, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_f
    const/4 v0, 0x1

    goto :goto_9

    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v7, "WealthHome"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive-Data:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v8, "WealthHome"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "userinfo isnewuser:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isNewUser()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",avatar:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v8, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "state=settingGestureSucessAction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v7, "state=validateGestureSucessAction"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v8, "WealthHome"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "receive gesture, isSettingGesture:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",validateGesture:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",convenient:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->l:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_12

    iget-boolean v7, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->l:Z

    if-nez v7, :cond_12

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v8, "WealthHome"

    const-string/jumbo v9, "isLogin"

    invoke-interface {v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_11

    if-eqz v0, :cond_12

    :cond_11
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->m:Z

    iget-boolean v7, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->n:Z

    if-eqz v7, :cond_14

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->c()V

    :cond_12
    :goto_a
    if-nez v1, :cond_13

    if-eqz v0, :cond_7

    :cond_13
    invoke-direct {p0, p2}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a(Landroid/content/Intent;)V

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v7, "WealthHome"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u9a8c\u8bc1\u624b\u52bf\u5b8c\u6210\uff0c\u51c6\u5907\u67e5\u8be2\u9996\u9875Rpc:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->d()V

    goto/16 :goto_7

    :cond_14
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->k:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_a
.end method
