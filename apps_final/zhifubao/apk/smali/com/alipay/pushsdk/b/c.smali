.class public final Lcom/alipay/pushsdk/b/c;
.super Ljava/lang/Object;
.source "Controller.java"


# static fields
.field private static a:Lcom/alipay/pushsdk/b/c;


# instance fields
.field private b:Lcom/alipay/pushsdk/b/d;

.field private c:Lcom/alipay/pushsdk/b/e;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/alipay/pushsdk/b/e;

    invoke-direct {v0, p1}, Lcom/alipay/pushsdk/b/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/b/c;->c:Lcom/alipay/pushsdk/b/e;

    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "controller"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 21
    new-instance v1, Lcom/alipay/pushsdk/b/d;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/alipay/pushsdk/b/d;-><init>(Landroid/os/Looper;Lcom/alipay/pushsdk/b/c;)V

    iput-object v1, p0, Lcom/alipay/pushsdk/b/c;->b:Lcom/alipay/pushsdk/b/d;

    .line 22
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/pushsdk/b/c;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/alipay/pushsdk/b/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/b/c;->a:Lcom/alipay/pushsdk/b/c;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alipay/pushsdk/b/c;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/pushsdk/b/c;->a:Lcom/alipay/pushsdk/b/c;

    .line 29
    :cond_0
    sget-object v0, Lcom/alipay/pushsdk/b/c;->a:Lcom/alipay/pushsdk/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lcom/alipay/pushsdk/b/e;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/pushsdk/b/c;->c:Lcom/alipay/pushsdk/b/e;

    return-object v0
.end method

.method public final a(Lcom/alipay/pushsdk/b/b;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/pushsdk/b/c;->b:Lcom/alipay/pushsdk/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/b/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/alipay/pushsdk/b/c;->b:Lcom/alipay/pushsdk/b/d;

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/b/d;->sendMessage(Landroid/os/Message;)Z

    .line 35
    return-void
.end method
