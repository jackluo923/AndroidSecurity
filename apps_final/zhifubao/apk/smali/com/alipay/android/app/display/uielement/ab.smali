.class final Lcom/alipay/android/app/display/uielement/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UICheckBox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/ab;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ab;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->b(Lcom/alipay/android/app/display/uielement/UICheckBox;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ab;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    const-string/jumbo v1, "show_toast"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ab;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    const-string/jumbo v1, "toast_message"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ab;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->s()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ab;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ab;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    const-string/jumbo v2, "checked"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ab;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->c(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ab;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->e(Lcom/alipay/android/app/display/uielement/UICheckBox;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
