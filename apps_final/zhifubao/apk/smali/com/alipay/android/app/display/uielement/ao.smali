.class final Lcom/alipay/android/app/display/uielement/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UICombobox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICombobox;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/ao;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    iput-boolean p2, p0, Lcom/alipay/android/app/display/uielement/ao;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ao;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->f(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ao;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    const-string/jumbo v1, "toast_message"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ao;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    const-string/jumbo v1, "show_toast"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ao;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    iget-boolean v1, p0, Lcom/alipay/android/app/display/uielement/ao;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Lcom/alipay/android/app/display/uielement/UICombobox;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ao;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->f(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/display/uielement/ao;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ao;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->f(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/app/display/uielement/ao;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-boolean v0, p0, Lcom/alipay/android/app/display/uielement/ao;->a:Z

    if-nez v0, :cond_2

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
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ao;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->b(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ao;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->g(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ao;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->n()Lcom/alipay/android/app/display/uielement/ElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->g()I

    move-result v0

    goto :goto_1
.end method
