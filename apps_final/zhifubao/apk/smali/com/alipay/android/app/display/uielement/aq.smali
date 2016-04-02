.class final Lcom/alipay/android/app/display/uielement/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UICombobox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICombobox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/aq;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aq;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->g(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aq;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/aq;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->g(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aq;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->b(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aq;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/aq;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/UICombobox;->b(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
