.class Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:I

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->b:I

    iput-boolean v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->c:Z

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->c:Z

    return-void
.end method

.method public declared-synchronized getBinder()Landroid/os/IBinder;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->a:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->b:I

    const-wide/16 v0, 0x3a98

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->b:I

    :goto_1
    iget-object v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->a:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget v1, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->b:I

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public isDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->c:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->a:Landroid/os/IBinder;

    iget v0, p0, Lcom/taobao/android/sso/SsoManager$ConnectionReceiver;->b:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
