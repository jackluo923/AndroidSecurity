.class final Lcom/alipay/android/app/ui/quickpay/window/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/ba;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/ba;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/ba;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/ba;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "mini_net_error_weak"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string/jumbo v1, "mini_redo"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "mini_cancel"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/ba;->b:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v8, [Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    new-instance v6, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v7, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->None:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v6, v7}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    aput-object v6, v4, v9

    new-array v6, v8, [Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    new-instance v7, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v8, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Redo:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v7, v8}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    aput-object v7, v6, v9

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    goto :goto_0
.end method
