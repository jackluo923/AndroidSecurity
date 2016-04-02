.class final Lcom/alipay/android/app/ui/quickpay/uielement/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/c;->a:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/c;->a:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/c;->a:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/c;->a:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    invoke-virtual {v1, p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/c;->a:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->F()Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    goto :goto_0
.end method
