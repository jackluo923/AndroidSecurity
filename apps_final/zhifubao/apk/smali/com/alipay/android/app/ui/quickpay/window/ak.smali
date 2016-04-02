.class final Lcom/alipay/android/app/ui/quickpay/window/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/aj;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/ak;->a:Lcom/alipay/android/app/ui/quickpay/window/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ak;->a:Lcom/alipay/android/app/ui/quickpay/window/aj;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/aj;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/ak;->a:Lcom/alipay/android/app/ui/quickpay/window/aj;

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/window/aj;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->f(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ak;->a:Lcom/alipay/android/app/ui/quickpay/window/aj;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/aj;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ak;->a:Lcom/alipay/android/app/ui/quickpay/window/aj;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/aj;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/pay/Result;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
