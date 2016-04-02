.class final Lcom/alipay/android/app/ui/quickpay/window/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/ay;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    iput p2, p0, Lcom/alipay/android/app/ui/quickpay/window/ay;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ay;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/ay;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->h(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/window/ay;->a:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Lcom/alipay/android/app/ui/quickpay/window/IUIForm;I)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
