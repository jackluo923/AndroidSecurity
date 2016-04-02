.class final Lcom/alipay/android/app/ui/quickpay/window/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/az;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/az;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/az;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/az;->a:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v2, "mini_app_error"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/az;->a:Ljava/lang/Throwable;

    invoke-static {v3, v7}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V

    :cond_2
    const-string/jumbo v3, "msp_btn_ok"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/az;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    new-instance v5, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v6, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Exit:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v5, v6}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    aput-object v5, v4, v7

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    goto :goto_0
.end method
