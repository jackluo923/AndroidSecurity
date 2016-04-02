.class final Lcom/alipay/android/app/ui/quickpay/uielement/w;
.super Lcom/alipay/android/app/ui/quickpay/event/MiniReadBankCardArgs;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/w;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/event/MiniReadBankCardArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReadSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/w;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/w;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/w;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/w;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setSelection(I)V

    :cond_0
    return-void
.end method
