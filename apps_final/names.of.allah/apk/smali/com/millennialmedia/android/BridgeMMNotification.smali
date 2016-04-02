.class Lcom/millennialmedia/android/BridgeMMNotification;
.super Lcom/millennialmedia/android/MMJSObject;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private index:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/BridgeMMNotification;)I
    .locals 1

    iget v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->index:I

    return v0
.end method


# virtual methods
.method public declared-synchronized alert(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/millennialmedia/android/BridgeMMNotification$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/BridgeMMNotification$1;-><init>(Lcom/millennialmedia/android/BridgeMMNotification;Ljava/util/HashMap;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMNotification;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->index:I

    :cond_0
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->index:I

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->index:I

    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public vibrate(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "duration"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "duration"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v5

    double-to-long v1, v1

    :goto_0
    if-eqz v0, :cond_1

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Vibrating for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "The required permissions to vibrate are not set."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-wide v1, v3

    goto :goto_0
.end method
