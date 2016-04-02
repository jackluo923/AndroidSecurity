.class final Lcom/alipay/android/app/ui/quickpay/window/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/ax;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/ax;->a:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    iput p3, p0, Lcom/alipay/android/app/ui/quickpay/window/ax;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ax;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ax;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/ax;->a:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/window/ax;->b:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Lcom/alipay/android/app/ui/quickpay/window/IUIForm;I)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/ax;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->g(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/util/ExceptionUtils;->a(ILjava/lang/Throwable;)V

    const-string/jumbo v1, "tl"

    const-string/jumbo v2, "0010021"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
