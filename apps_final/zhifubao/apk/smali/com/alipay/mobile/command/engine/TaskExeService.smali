.class public Lcom/alipay/mobile/command/engine/TaskExeService;
.super Landroid/app/Service;


# static fields
.field private static c:Landroid/content/IntentFilter;

.field private static d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static e:Lcom/alipay/mobile/command/trigger/BaseTrigger;

.field private static final synthetic f:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic g:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "TaskExeService.java"

    const-class v2, Lcom/alipay/mobile/command/engine/TaskExeService;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onStartCommand"

    const-string/jumbo v3, "com.alipay.mobile.command.engine.TaskExeService"

    const-string/jumbo v4, "android.content.Intent:int:int"

    const-string/jumbo v5, "intent:flags:startId"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/command/engine/TaskExeService;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onBind"

    const-string/jumbo v3, "com.alipay.mobile.command.engine.TaskExeService"

    const-string/jumbo v4, "android.content.Intent"

    const-string/jumbo v5, "intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "android.os.IBinder"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xe4

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/command/engine/TaskExeService;->g:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/command/engine/TaskExeService;->c:Landroid/content/IntentFilter;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/command/engine/TaskExeService;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/alipay/mobile/command/trigger/SysEventChangeTrigger;

    invoke-direct {v0}, Lcom/alipay/mobile/command/trigger/SysEventChangeTrigger;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/engine/TaskExeService;->e:Lcom/alipay/mobile/command/trigger/BaseTrigger;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/engine/TaskExeService;->c:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/command/engine/TaskExeService;->c:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/command/engine/TaskExeService;->c:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->b:J

    return-void
.end method

.method private static final synthetic a(Lcom/alipay/mobile/command/engine/TaskExeService;Landroid/content/Intent;II)I
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a()Lcom/alipay/mobile/command/engine/ScripterExecutor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a()Lcom/alipay/mobile/command/engine/ScripterExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->c()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "service_initial_flag"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_initial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->setSysInitialFlag(Z)V

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->hasSpace()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "trigger_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "trigger"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "triger action_type:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getOpTypeEnum(Ljava/lang/String;)Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "trigger_biz_context"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    :cond_1
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getOpTypeEnum(Ljava/lang/String;)Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->TIME:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/command/engine/TaskExeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.alipay.mobile.TIMER_AUTO_WAKEUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getOpTypeEnum(Ljava/lang/String;)Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    move-result-object v2

    iget-wide v3, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->b:J

    const-string/jumbo v0, "trigger_fm_context"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/alipay/mobile/command/engine/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/command/engine/e;-><init>(Lcom/alipay/mobile/command/engine/TaskExeService;Lcom/alipay/mobile/command/model/TriggerTypeEnum;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    return v9

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v1, "script"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "encode bizcontext Error"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "command"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "\u5f53\u524d\u8bbe\u5907\u65e0sd\u5361\u4fe1\u606f,\u65e0\u6cd5\u5b8c\u6210cmd\u64cd\u4f5c."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, ""

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :try_start_4
    sget-object v1, Lcom/alipay/mobile/command/engine/TaskExeService;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    rem-int/lit8 v1, v1, 0x14

    if-nez v1, :cond_5

    sget-object v1, Lcom/alipay/mobile/command/engine/TaskExeService;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "CMDCENTER\u517c\u5bb9\u6027\u95ee\u989882"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5
    sget-object v0, Lcom/alipay/mobile/command/engine/TaskExeService;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, ""

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic a()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "installApkCache"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "installApkOtpCache"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-lt v0, v2, :cond_3

    :cond_1
    return-void

    :cond_2
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    sget-object v0, Lcom/alipay/mobile/command/engine/TaskExeService;->g:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    :try_start_0
    const-string/jumbo v0, "service_triger"

    invoke-static {v0}, Lcom/alipay/mobile/command/util/ThreadPools;->applyDefaultThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/alipay/mobile/command/engine/TaskExeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandConfig;->initial(Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/mobile/command/engine/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/command/engine/g;-><init>(Lcom/alipay/mobile/command/engine/TaskExeService;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string/jumbo v0, "trigger"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "trigger service  onCreate"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a()Lcom/alipay/mobile/command/engine/ScripterExecutor;

    invoke-static {}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a()Lcom/alipay/mobile/command/engine/ScripterExecutor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a()Lcom/alipay/mobile/command/engine/ScripterExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->c()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/command/engine/TaskExeService;->stopSelf()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "trigger_time_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchCurrnetMiniTimeInIntervalModel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->b:J

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "trigger_time_key"

    iget-wide v2, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alipay/mobile/command/engine/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/command/engine/b;-><init>(Lcom/alipay/mobile/command/engine/TaskExeService;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alipay/mobile/command/engine/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/command/engine/c;-><init>(Lcom/alipay/mobile/command/engine/TaskExeService;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alipay/mobile/command/engine/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/command/engine/d;-><init>(Lcom/alipay/mobile/command/engine/TaskExeService;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/alipay/mobile/command/engine/TaskExeService;->e:Lcom/alipay/mobile/command/trigger/BaseTrigger;

    sget-object v1, Lcom/alipay/mobile/command/engine/TaskExeService;->c:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/command/engine/TaskExeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->initial()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "crash commandCenter erro."

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/command/engine/TaskExeService;->stopSelf()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "trigger_time_key"

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchCurrnetMiniTimeInIntervalModel()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->b:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "manager"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "service \u5173\u95ed."

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/command/engine/TaskExeService;->e:Lcom/alipay/mobile/command/trigger/BaseTrigger;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/command/engine/TaskExeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/alipay/mobile/command/trigger/CmdCenterTimerTrigger;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->close()V

    iget-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/command/util/ThreadPools;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-string/jumbo v0, "trigger"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "triger service onDestroy"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a()Lcom/alipay/mobile/command/engine/ScripterExecutor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a()Lcom/alipay/mobile/command/engine/ScripterExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->b()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "manager"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "trigger"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "task shutdown error."

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/alipay/mobile/command/engine/TaskExeService;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v6

    const/4 v2, 0x1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

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

    aget-object v2, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/command/engine/TaskExeService;->a(Lcom/alipay/mobile/command/engine/TaskExeService;Landroid/content/Intent;II)I

    move-result v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    const-string/jumbo v0, "trigger"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "triger Service unbind"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
