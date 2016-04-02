.class final Lcom/alipay/android/app/ui/quickpay/window/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/av;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/av;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/av;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/av;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->b(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->c()V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->c()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/av;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/av;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/av;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/av;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    return-void
.end method
