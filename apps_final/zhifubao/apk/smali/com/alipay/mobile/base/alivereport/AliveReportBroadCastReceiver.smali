.class public Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AliveReportBroadCastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AliveReportBroadCastReceiver"

.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static mLastAliveReportTime:J


# instance fields
.field private mWillReportActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0()J
    .locals 2

    .prologue
    .line 43
    sget-wide v0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->mLastAliveReportTime:J

    return-wide v0
.end method

.method static synthetic access$1(J)V
    .locals 0

    .prologue
    .line 43
    sput-wide p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->mLastAliveReportTime:J

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "AliveReportBroadCastReceiver.java"

    const-class v2, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.mobile.base.alivereport.AliveReportBroadCastReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xb7

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static final synthetic onReceive_aroundBody0(Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string/jumbo v1, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    iget-boolean v0, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->mWillReportActive:Z

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliveReportBroadCastReceiver"

    const-string/jumbo v2, "\u6536\u5230\u7528\u6237\u56de\u5230\u5e94\u7528\u7684\u5e7f\u64ad"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliveReportBroadCastReceiver"

    const-string/jumbo v2, "receive send reportActive broadcast ,send reportActive to server"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iput-boolean v3, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->mWillReportActive:Z

    .line 191
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 192
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 193
    new-instance v2, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver$AliveReport;

    invoke-direct {v2}, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver$AliveReport;-><init>()V

    const-string/jumbo v3, "ReportActive"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 195
    const-class v0, Lcom/alipay/mobile/base/scene/UserSceneService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/scene/UserSceneService;

    .line 196
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/alipay/mobile/base/scene/UserSceneService;->setupRpcActiveScene()V

    .line 200
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "gotoForeground"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    const-string/jumbo v1, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-boolean v0, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->mWillReportActive:Z

    if-nez v0, :cond_3

    .line 204
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliveReportBroadCastReceiver"

    const-string/jumbo v2, "\u6536\u5230\u4e86\u7528\u6237\u79bb\u5f00\u5e94\u7528\u7684\u5e7f\u64ad\u7c7b\u578b"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "gotoBackground"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    const-string/jumbo v1, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".monitor.action.DYNAMIC_RELEASE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string/jumbo v1, "isForce"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->mWillReportActive:Z

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AliveReportBroadCastReceiver"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static final synthetic onReceive_aroundBody1$advice(Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 87
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    .line 88
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 91
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->onReceive_aroundBody0(Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 93
    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v5, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->onReceive_aroundBody1$advice(Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    return-void
.end method
