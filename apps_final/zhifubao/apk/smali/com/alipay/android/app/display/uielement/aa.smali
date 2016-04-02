.class final Lcom/alipay/android/app/display/uielement/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UICheckBox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/aa;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aa;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->b(Lcom/alipay/android/app/display/uielement/UICheckBox;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aa;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    const-string/jumbo v1, "show_toast"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aa;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    const-string/jumbo v1, "toast_message"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aa;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->s()V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aa;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->c(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aa;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->c(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/widget/CheckBox;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aa;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->c(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aa;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    const-string/jumbo v1, "checked"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aa;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->d(Lcom/alipay/android/app/display/uielement/UICheckBox;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aa;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->e(Lcom/alipay/android/app/display/uielement/UICheckBox;)V

    goto :goto_1
.end method
