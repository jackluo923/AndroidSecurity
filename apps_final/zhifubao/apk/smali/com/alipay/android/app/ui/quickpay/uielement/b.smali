.class final Lcom/alipay/android/app/ui/quickpay/uielement/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/b;->a:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/b;->a:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/b;->a:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/b;->a:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/b;->a:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
