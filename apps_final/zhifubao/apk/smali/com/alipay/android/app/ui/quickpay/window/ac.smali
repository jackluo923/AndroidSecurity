.class final Lcom/alipay/android/app/ui/quickpay/window/ac;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/event/ActionType;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/ac;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/ac;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/window/ac;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ac;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/ac;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/ac;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v0, v0, v5

    const-string/jumbo v3, "cookie"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "from_mcashier"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ac;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    invoke-static {}, Lcom/alipay/android/app/pay/Result;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ac;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/ac;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
