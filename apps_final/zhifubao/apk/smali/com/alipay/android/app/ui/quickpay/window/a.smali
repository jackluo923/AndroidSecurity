.class final Lcom/alipay/android/app/ui/quickpay/window/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/a;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/a;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/a;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    const-string/jumbo v1, "globalLayoutError"

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogAgent;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a(Z)V

    goto :goto_0
.end method
