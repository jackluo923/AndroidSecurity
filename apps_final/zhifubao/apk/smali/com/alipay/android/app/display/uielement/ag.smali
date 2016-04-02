.class final Lcom/alipay/android/app/display/uielement/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UICheckBox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICheckBox;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/ag;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    iput-boolean p2, p0, Lcom/alipay/android/app/display/uielement/ag;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ag;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    const-string/jumbo v1, "toast_message"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ag;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    const-string/jumbo v1, "show_toast"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ag;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    iget-boolean v1, p0, Lcom/alipay/android/app/display/uielement/ag;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Lcom/alipay/android/app/display/uielement/UICheckBox;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/app/display/uielement/ag;->a:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "msp_unenable_color"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ag;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ag;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/android/app/display/uielement/ag;->a:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ag;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->f(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ag;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->f(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ag;->b:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->n()Lcom/alipay/android/app/display/uielement/ElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->g()I

    move-result v0

    goto :goto_1
.end method
