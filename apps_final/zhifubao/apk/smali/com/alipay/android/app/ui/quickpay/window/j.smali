.class final Lcom/alipay/android/app/ui/quickpay/window/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/j;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/j;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/j;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/j;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iget-object v1, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->i:Landroid/app/Activity;

    const-string/jumbo v0, "mini_keeppre_layout"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/j;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->d(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/j;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->e(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/j;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->c(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->q()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/j;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->c(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/j;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->c(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/j;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->c(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/j;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iput-object v2, v1, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->F:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    :cond_2
    const-string/jumbo v1, "#e0000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/k;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/window/k;-><init>(Lcom/alipay/android/app/ui/quickpay/window/j;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a(Z)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a(Z)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
