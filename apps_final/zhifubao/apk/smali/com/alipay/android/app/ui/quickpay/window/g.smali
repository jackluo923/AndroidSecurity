.class final Lcom/alipay/android/app/ui/quickpay/window/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/g;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/g;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/g;->a:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b()Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->e()V

    :cond_0
    return-void
.end method
