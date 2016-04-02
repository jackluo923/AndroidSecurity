.class final Lcom/alipay/android/app/ui/quickpay/uielement/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar$SelectionChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/aj;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/aj;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;

    invoke-static {v0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/aj;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;)Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/aj;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->setSelection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/aj;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/aj;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->c(Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/aj;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/aj;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->a(Z)V

    goto :goto_0
.end method
