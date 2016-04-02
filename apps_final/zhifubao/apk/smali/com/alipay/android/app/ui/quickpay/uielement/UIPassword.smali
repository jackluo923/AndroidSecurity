.class public Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;
.super Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;-><init>()V

    return-void
.end method


# virtual methods
.method protected final O()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->P()V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->f()V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->j()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final bridge synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method protected final a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->m()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mini_input_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v1, "minpwd_red"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mini_ui_input_bg_red"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->I()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a()Z

    move-result v0

    goto :goto_0
.end method

.method protected final p()I
    .locals 1

    const-string/jumbo v0, "mini_ui_password"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
