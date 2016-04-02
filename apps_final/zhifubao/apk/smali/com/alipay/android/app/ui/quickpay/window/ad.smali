.class final Lcom/alipay/android/app/ui/quickpay/window/ad;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/event/ActionType;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/ad;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/ad;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/window/ad;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ad;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/ad;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ad;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->b(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)V

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
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

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ad;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->c(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ad;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/ad;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    :goto_1
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

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ad;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/ad;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
