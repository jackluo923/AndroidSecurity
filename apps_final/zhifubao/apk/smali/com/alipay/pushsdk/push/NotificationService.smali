.class public Lcom/alipay/pushsdk/push/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/alipay/pushsdk/push/l;

.field private static final synthetic o:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic p:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic q:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private final b:I

.field private d:Landroid/app/AlarmManager;

.field private e:Landroid/app/PendingIntent;

.field private f:Landroid/support/v4/content/LocalBroadcastManager;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Ljava/util/concurrent/ExecutorService;

.field private j:Lcom/alipay/pushsdk/push/d;

.field private k:Lcom/alipay/pushsdk/push/e;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "NotificationService.java"

    const-class v2, Lcom/alipay/pushsdk/push/NotificationService;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onStartCommand"

    const-string/jumbo v3, "com.alipay.pushsdk.push.NotificationService"

    const-string/jumbo v4, "android.content.Intent:int:int"

    const-string/jumbo v5, "intent:flags:startId"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x93

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/push/NotificationService;->o:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onBind"

    const-string/jumbo v3, "com.alipay.pushsdk.push.NotificationService"

    const-string/jumbo v4, "android.content.Intent"

    const-string/jumbo v5, "intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "android.os.IBinder"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x20a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/push/NotificationService;->p:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "set"

    const-string/jumbo v3, "android.app.AlarmManager"

    const-string/jumbo v4, "int:long:android.app.PendingIntent"

    const-string/jumbo v5, "type:triggerAtMillis:operation"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x23e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/NotificationService;->q:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 47
    const-class v0, Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 46
    sput-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/pushsdk/push/NotificationService;->c:Lcom/alipay/pushsdk/push/l;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->b:I

    .line 57
    iput-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->d:Landroid/app/AlarmManager;

    .line 58
    iput-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/PendingIntent;

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->m:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/NotificationService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    return-object v0
.end method

.method public static d()Lcom/alipay/pushsdk/push/l;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->c:Lcom/alipay/pushsdk/push/l;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Lcom/alipay/pushsdk/push/l;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->c:Lcom/alipay/pushsdk/push/l;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->i:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method protected final a(I)V
    .locals 10

    .prologue
    const/4 v4, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x0

    .line 545
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startAlarmTimer ELAPSED_REALTIME_WAKEUP! nextTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 551
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 552
    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".push.action.CHECK"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const/16 v1, 0x64

    invoke-static {p0, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/PendingIntent;

    .line 559
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->d:Landroid/app/AlarmManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 560
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 561
    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 562
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->c:Lcom/alipay/pushsdk/push/l;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->d:Landroid/app/AlarmManager;

    int-to-long v1, p1

    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/PendingIntent;

    .line 562
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/pushsdk/push/l;->a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)Z

    move-result v0

    .line 564
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 565
    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startAlarmTimer() setReflectTimer ret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_2
    if-eqz v0, :cond_4

    .line 584
    :cond_3
    :goto_0
    return-void

    .line 574
    :cond_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->d:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 575
    int-to-long v3, p1

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/PendingIntent;

    sget-object v4, Lcom/alipay/pushsdk/push/NotificationService;->q:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1, v2}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, p0, v0, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v5

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v4

    invoke-static {v5, v6, v7, v8, v4}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallAlarmManagerSetPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 580
    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 581
    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Lcom/alipay/pushsdk/push/d;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->j:Lcom/alipay/pushsdk/push/d;

    return-object v0
.end method

.method public final c()Lcom/alipay/pushsdk/push/e;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->k:Lcom/alipay/pushsdk/push/e;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 1
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->p:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onBind at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", Intent: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onBind()..."

    invoke-static {v6, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x3

    .line 75
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 76
    iput-object p0, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->refreshDebugMode()V

    .line 80
    :goto_1
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()..."

    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/k;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/k;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate() flagGuard="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 91
    sget-object v1, Lcom/alipay/pushsdk/push/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    .line 93
    const/16 v1, 0x708

    .line 92
    invoke-static {v0, v1, v7}, Lcom/alibaba/android/proc/SoManager;->getInstance(Landroid/content/Context;IZ)Lcom/alibaba/android/proc/SoManager;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/alibaba/android/proc/SoManager;->start()V

    .line 95
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onCreate() soManager is started."

    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_2
    new-instance v0, Lcom/alipay/pushsdk/push/i;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->i:Ljava/util/concurrent/ExecutorService;

    .line 106
    new-instance v0, Lcom/alipay/pushsdk/push/d;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/d;-><init>(Lcom/alipay/pushsdk/push/NotificationService;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->j:Lcom/alipay/pushsdk/push/d;

    .line 107
    new-instance v0, Lcom/alipay/pushsdk/push/e;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/e;-><init>(Lcom/alipay/pushsdk/push/NotificationService;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->k:Lcom/alipay/pushsdk/push/e;

    .line 110
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/c;->b(Landroid/content/Context;)V

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_3

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const/16 v1, 0x1688

    invoke-virtual {p0, v1, v0}, Lcom/alipay/pushsdk/push/NotificationService;->startForeground(ILandroid/app/Notification;)V

    .line 115
    :cond_3
    new-instance v0, Lcom/alipay/pushsdk/push/l;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/l;-><init>(Lcom/alipay/pushsdk/push/NotificationService;)V

    sput-object v0, Lcom/alipay/pushsdk/push/NotificationService;->c:Lcom/alipay/pushsdk/push/l;

    .line 116
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCreate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->c:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_4
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "start()..."

    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lcom/alipay/pushsdk/push/h;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/h;->a()V

    new-instance v0, Lcom/alipay/pushsdk/push/i;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/pushsdk/push/s;->c()V

    .line 121
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    .line 123
    const-string/jumbo v1, "onCreate DelayedPushMessageManager initManager now."

    .line 122
    invoke-static {v6, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/b;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/push/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/b;->a()V

    .line 127
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->d:Landroid/app/AlarmManager;

    .line 129
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/support/v4/content/LocalBroadcastManager;

    .line 130
    new-instance v0, Lcom/alipay/pushsdk/deliver/NotificationReceiver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v2, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/deliver/NotificationReceiver;-><init>(Ljava/lang/String;)V

    .line 130
    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/ClientActionReceiver;-><init>(Lcom/alipay/pushsdk/push/NotificationService;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".push.action.CONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".push.action.KEEPLIVE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".push.action.CHECK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/pushsdk/push/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->a(I)V

    .line 136
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCreate() executorService isShutdown="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v6, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_7
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->i:Ljava/util/concurrent/ExecutorService;

    .line 143
    :cond_8
    return-void

    .line 78
    :cond_9
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initDebugMode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    const-string/jumbo v0, ""

    :goto_2
    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->refreshDebugMode()V

    goto/16 :goto_1

    :cond_b
    :try_start_3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alipay/pushsdk/util/log/LogUtil;->refreshDebugMode()V

    throw v0
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 480
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 481
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()..."

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->stopForeground(Z)V

    .line 490
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/b;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/push/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/b;->b()V

    .line 492
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "stop()..."

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->d:Landroid/app/AlarmManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->d:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    iput-object v6, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Landroid/content/BroadcastReceiver;

    :try_start_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    iput-object v6, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->c:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->c()V

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "stop() executorService will be shutdown!"

    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 493
    invoke-static {}, Lcom/alipay/pushsdk/util/log/c;->a()V

    .line 495
    new-instance v0, Lcom/alipay/pushsdk/push/r;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/r;-><init>(Landroid/content/Context;)V

    .line 497
    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->c:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 498
    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->c:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 499
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/r;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 500
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 501
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy() will restart this service."

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 505
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".push.action.START_PUSHSERVICE"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    new-instance v1, Lcom/alipay/pushsdk/AliPushAppInfo;

    invoke-direct {v1}, Lcom/alipay/pushsdk/AliPushAppInfo;-><init>()V

    .line 510
    const-string/jumbo v2, "16"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/AliPushAppInfo;->setTrigger(Ljava/lang/String;)V

    .line 511
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 512
    const-string/jumbo v3, "appinfo_parcelable"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 513
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 518
    :cond_7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Ljava/lang/String;

    .line 519
    return-void

    .line 492
    :catch_0
    move-exception v0

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 531
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onRebind()..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x4

    .line 1
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->o:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-array v1, v10, [Ljava/lang/Object;

    aput-object p1, v1, v7

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v11

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onStartCommand at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", Intent: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStartCommand Received start id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ".intent.action.COCKROACH"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "cockroach"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "cockroach-PPreotect"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onStartCommand data isn\'t expected and do something"

    invoke-static {v6, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    const-string/jumbo v1, "push"

    const-string/jumbo v2, "proc_guard"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStartCommand getMonitorLogger push,proc_guard,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", osVERSION="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", MODEL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    new-instance v1, Lcom/alipay/pushsdk/push/i;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->n:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/i;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/i;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->m:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1, v8}, Lcom/alipay/pushsdk/push/i;->a(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->c:Lcom/alipay/pushsdk/push/l;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/push/l;->a(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refreshUserId mUserId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mUtdId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/NotificationService;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onStartCommand trigerEvent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", utdId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/NotificationService;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lcom/alipay/pushsdk/push/f;

    invoke-direct {v1, p0, v0}, Lcom/alipay/pushsdk/push/f;-><init>(Lcom/alipay/pushsdk/push/NotificationService;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v2, "NotificationService Triger Runnable"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "configRequest()..."

    invoke-static {v9, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/pushsdk/push/c;

    invoke-direct {v1, p0}, Lcom/alipay/pushsdk/push/c;-><init>(Lcom/alipay/pushsdk/push/NotificationService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_7
    invoke-static {v11}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_8
    const-string/jumbo v0, "appinfo_parcelable"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/AliPushAppInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/alipay/pushsdk/AliPushAppInfo;->getTrigger()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onStartCommand() pushAppInfo is null."

    invoke-static {v10, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "10"

    goto/16 :goto_0

    :cond_b
    move-object v0, v7

    goto/16 :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 538
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onUnbind()..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
