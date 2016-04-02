.class public Lcom/alibaba/motu/NativeCrashHandler;
.super Ljava/lang/Object;
.source "NativeCrashHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "motu"

.field private static sInstance:Lcom/alibaba/motu/NativeCrashHandler;


# instance fields
.field private final mApplication:Landroid/content/Context;

.field private mHandler:Lcom/alibaba/motu/NativeExceptionHandler;

.field private final mIsDebug:Z

.field private mLoaded:Z

.field private mRegisted:Z

.field private final motuPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    :try_start_0
    const-string/jumbo v0, "motu-crash"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "motu"

    const-string/jumbo v2, "load motu-crash fail"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, Lcom/alibaba/motu/NativeCrashHandler;->mLoaded:Z

    .line 18
    new-instance v0, Lcom/alibaba/motu/ImpHandler;

    invoke-direct {v0}, Lcom/alibaba/motu/ImpHandler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/motu/NativeCrashHandler;->mHandler:Lcom/alibaba/motu/NativeExceptionHandler;

    .line 20
    iput-boolean v1, p0, Lcom/alibaba/motu/NativeCrashHandler;->mRegisted:Z

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/motu/NativeCrashHandler;->mApplication:Landroid/content/Context;

    .line 42
    const-string/jumbo v0, "nativecrash"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/motu/NativeCrashHandler;->motuPath:Ljava/lang/String;

    .line 44
    iput-boolean p2, p0, Lcom/alibaba/motu/NativeCrashHandler;->mIsDebug:Z

    .line 45
    return-void
.end method

.method public static crash()V
    .locals 0

    .prologue
    .line 96
    invoke-static {}, Lcom/alibaba/motu/NativeCrashHandler;->testCrash()V

    .line 97
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/motu/NativeCrashHandler;
    .locals 2

    .prologue
    .line 56
    const-class v0, Lcom/alibaba/motu/NativeCrashHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/motu/NativeCrashHandler;->sInstance:Lcom/alibaba/motu/NativeCrashHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Z)Lcom/alibaba/motu/NativeCrashHandler;
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/alibaba/motu/NativeCrashHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/motu/NativeCrashHandler;->sInstance:Lcom/alibaba/motu/NativeCrashHandler;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/alibaba/motu/NativeCrashHandler;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/motu/NativeCrashHandler;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/alibaba/motu/NativeCrashHandler;->sInstance:Lcom/alibaba/motu/NativeCrashHandler;

    .line 51
    :cond_0
    sget-object v0, Lcom/alibaba/motu/NativeCrashHandler;->sInstance:Lcom/alibaba/motu/NativeCrashHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static native regist(Ljava/lang/String;ZI)Ljava/lang/String;
.end method

.method static native testCrash()V
.end method

.method static native unregist()Ljava/lang/String;
.end method


# virtual methods
.method public getNativeExceptionHandler()Lcom/alibaba/motu/NativeExceptionHandler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/motu/NativeCrashHandler;->mHandler:Lcom/alibaba/motu/NativeExceptionHandler;

    return-object v0
.end method

.method public final declared-synchronized getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/motu/NativeCrashHandler;->motuPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Z)V
    .locals 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/motu/NativeCrashHandler;->mRegisted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/motu/NativeCrashHandler;->motuPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/alibaba/motu/NativeCrashHandler;->regist(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/motu/NativeCrashHandler;->mRegisted:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/motu/NativeCrashHandler;->mLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
