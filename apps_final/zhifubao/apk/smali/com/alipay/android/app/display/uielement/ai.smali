.class final Lcom/alipay/android/app/display/uielement/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UICombobox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICombobox;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/ai;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/ai;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ai;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Lcom/alipay/android/app/display/uielement/UICombobox;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ai;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    const-string/jumbo v1, "show_toast"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ai;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    const-string/jumbo v1, "toast_message"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ai;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->s()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ai;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ai;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->b(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/ai;->b:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v2}, Lcom/alipay/android/app/display/uielement/UICombobox;->c(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/display/uielement/ai;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Lcom/alipay/android/app/display/uielement/UICombobox;Landroid/widget/TextView;Landroid/widget/ArrayAdapter;Landroid/content/Context;)V

    goto :goto_0
.end method
