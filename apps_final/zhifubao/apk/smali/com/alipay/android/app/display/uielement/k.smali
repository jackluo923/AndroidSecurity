.class final Lcom/alipay/android/app/display/uielement/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/BaseEditElement;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/k;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/k;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/k;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/BaseEditElement;->b:Lcom/alipay/android/app/widget/FormatBankcard;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/k;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Lcom/alipay/android/app/display/uielement/BaseEditElement;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/k;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/k;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    iget-object v1, v1, Lcom/alipay/android/app/display/uielement/BaseEditElement;->b:Lcom/alipay/android/app/widget/FormatBankcard;

    invoke-virtual {v1}, Lcom/alipay/android/app/widget/FormatBankcard;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Lcom/alipay/android/app/display/uielement/BaseEditElement;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/k;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->c(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V

    return-void
.end method
