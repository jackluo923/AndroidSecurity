.class final Lcom/alipay/android/app/ui/quickpay/uielement/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/k;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/k;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/k;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/k;->a:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/k;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/k;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/k;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/k;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/k;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/k;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/k;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->F()Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    goto :goto_1
.end method
