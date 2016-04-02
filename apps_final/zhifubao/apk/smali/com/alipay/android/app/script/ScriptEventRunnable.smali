.class public final Lcom/alipay/android/app/script/ScriptEventRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static mRunnable:Lcom/alipay/android/app/script/ScriptEventRunnable;

.field private static mRunning:Z


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;

.field private uncaught:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/app/script/ScriptEventRunnable$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/script/ScriptEventRunnable$1;-><init>(Lcom/alipay/android/app/script/ScriptEventRunnable;)V

    iput-object v0, p0, Lcom/alipay/android/app/script/ScriptEventRunnable;->uncaught:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mRunning:Z

    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/script/ScriptEventRunnable;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mRunnable:Lcom/alipay/android/app/script/ScriptEventRunnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/script/ScriptEventRunnable;

    invoke-direct {v0}, Lcom/alipay/android/app/script/ScriptEventRunnable;-><init>()V

    sput-object v0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mRunnable:Lcom/alipay/android/app/script/ScriptEventRunnable;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mRunnable:Lcom/alipay/android/app/script/ScriptEventRunnable;

    return-object v0
.end method

.method public static startThread()V
    .locals 2

    sget-boolean v0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mRunning:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/script/ScriptEventRunnable;->getInstance()Lcom/alipay/android/app/script/ScriptEventRunnable;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public final distory()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final run()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mRunning:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "lua thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/script/ScriptEventRunnable;->uncaught:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mLooper:Landroid/os/Looper;

    iget-object v0, p0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mLooper:Landroid/os/Looper;

    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/app/script/ScriptEventRunnable;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
