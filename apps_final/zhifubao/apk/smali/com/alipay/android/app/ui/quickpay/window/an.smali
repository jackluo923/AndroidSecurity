.class final Lcom/alipay/android/app/ui/quickpay/window/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/am;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/am;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/an;->a:Lcom/alipay/android/app/ui/quickpay/window/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/an;->a:Lcom/alipay/android/app/ui/quickpay/window/am;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/am;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->g(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/an;->a:Lcom/alipay/android/app/ui/quickpay/window/am;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/am;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/an;->a:Lcom/alipay/android/app/ui/quickpay/window/am;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/am;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/an;->a:Lcom/alipay/android/app/ui/quickpay/window/am;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/am;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/an;->a:Lcom/alipay/android/app/ui/quickpay/window/am;

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/window/am;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->f(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
