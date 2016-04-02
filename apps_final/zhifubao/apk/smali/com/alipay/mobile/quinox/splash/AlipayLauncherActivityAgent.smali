.class public Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;
.super Lcom/alipay/mobile/framework/LauncherActivityAgent;
.source "AlipayLauncherActivityAgent.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AlipayLauncherActivityAgent"

.field private static hasStartup:Z


# instance fields
.field private mLaunchRouter:Ljava/lang/Object;

.field private mWelcomeSplasher:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->hasStartup:Z

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/framework/LauncherActivityAgent;-><init>()V

    return-void
.end method

.method static attackTimeSend(Ljava/lang/Object;J)V
    .locals 5

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 157
    const-string/jumbo v1, "attackTimeSend"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 158
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 159
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static doEntryToDefaultBundle(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "entryToDefaultBundle"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/net/Uri;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 146
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 147
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static doStartEntry(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AlipayLauncherActivityAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "doStartEntry(router="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "doStartEntry"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 125
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static doStartMain(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "startMain"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 136
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static isFirstDeploy(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 107
    .line 109
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 110
    const-string/jumbo v2, "isFirstDeploy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 111
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 112
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 114
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public attachMicroApplicationContext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/LauncherActivityAgent;->attachMicroApplicationContext(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x390

    if-ne p2, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mLaunchRouter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->doStartMain(Ljava/lang/Object;)V

    .line 98
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/LauncherActivityAgent;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->startTime:J

    sub-long/2addr v0, v2

    .line 84
    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mLaunchRouter:Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->attackTimeSend(Ljava/lang/Object;J)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mWelcomeSplasher:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mWelcomeSplasher:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->destroy()V

    .line 89
    :cond_1
    invoke-super {p0}, Lcom/alipay/mobile/framework/LauncherActivityAgent;->onDestroy()V

    .line 90
    return-void
.end method

.method public postInit(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 60
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "com.alipay.mobile.commonbiz.biz.LaunchRouter"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/app/Activity;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 63
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mLaunchRouter:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mWelcomeSplasher:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mLaunchRouter:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->setLaunchRouter(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mLaunchRouter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->isFirstDeploy(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mWelcomeSplasher:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->showFirstDeployImage()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mWelcomeSplasher:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AlipayLauncherActivityAgent"

    const-string/jumbo v2, "doStartEntry() from AlipayLauncherActivityAgent (vs WelcomeSplasher)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mLaunchRouter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->doStartEntry(Ljava/lang/Object;)V

    .line 77
    :cond_1
    sput-boolean v4, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->hasStartup:Z

    .line 78
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipayLauncherActivityAgent"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public preInit(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/LauncherActivityAgent;->preInit(Landroid/app/Activity;)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->startTime:J

    .line 34
    new-instance v0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mWelcomeSplasher:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    .line 35
    sget-boolean v0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->hasStartup:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mWelcomeSplasher:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->skipPreview()V

    .line 43
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    const-string/jumbo v1, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

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

    .line 49
    const-string/jumbo v1, "isForce"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_1
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->mWelcomeSplasher:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->startWelcome()V

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipayLauncherActivityAgent"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
