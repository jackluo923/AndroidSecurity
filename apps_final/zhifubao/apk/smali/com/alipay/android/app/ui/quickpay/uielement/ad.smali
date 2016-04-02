.class final Lcom/alipay/android/app/ui/quickpay/uielement/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ad;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ad;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/ae;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ae;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/ad;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->justInitIconListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ad;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->onFocusChange(Landroid/view/View;Z)V

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ad;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->c(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ad;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->c(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ad;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->e(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ad;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->d(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V

    goto :goto_0
.end method
