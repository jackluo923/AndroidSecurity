.class final Lcom/alipay/android/app/pay/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/pay/PageForBrowser;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/PageForBrowser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    iput-object p2, p0, Lcom/alipay/android/app/pay/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->b(Lcom/alipay/android/app/pay/PageForBrowser;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->c(Lcom/alipay/android/app/pay/PageForBrowser;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->c(Lcom/alipay/android/app/pay/PageForBrowser;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v0, "before pay"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->b(Lcom/alipay/android/app/pay/PageForBrowser;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/j;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ret = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "after pay"

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/pay/PageForBrowser;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/alipay/android/app/pay/j;->b:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PageForBrowser;->d(Lcom/alipay/android/app/pay/PageForBrowser;)Z

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
