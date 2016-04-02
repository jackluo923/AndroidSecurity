.class final Lcom/alipay/android/app/pay/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/pay/PageForBrowser;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/PageForBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/h;->a:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string/jumbo v0, "onServiceConnected"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/h;->a:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->c(Lcom/alipay/android/app/pay/PageForBrowser;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/h;->a:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->a(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/app/pay/PageForBrowser;->a(Lcom/alipay/android/app/pay/PageForBrowser;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "registerCallback"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/h;->a:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->b(Lcom/alipay/android/app/pay/PageForBrowser;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/pay/h;->a:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v2}, Lcom/alipay/android/app/pay/PageForBrowser;->a(Lcom/alipay/android/app/pay/PageForBrowser;)Lcom/alipay/android/app/IRemoteServiceCallback;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/pay/h;->a:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->c(Lcom/alipay/android/app/pay/PageForBrowser;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "onServiceDisconnected"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/h;->a:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->b(Lcom/alipay/android/app/pay/PageForBrowser;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/h;->a:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v1}, Lcom/alipay/android/app/pay/PageForBrowser;->a(Lcom/alipay/android/app/pay/PageForBrowser;)Lcom/alipay/android/app/IRemoteServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
