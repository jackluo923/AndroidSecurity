.class final Lcom/alipay/android/app/ui/quickpay/uielement/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ag;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ag;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ag;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ValueChanged:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ag;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ag;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->g(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ag;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->g(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ag;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ag;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ag;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ag;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
