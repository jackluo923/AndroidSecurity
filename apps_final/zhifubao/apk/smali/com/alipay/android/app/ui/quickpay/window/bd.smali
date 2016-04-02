.class final Lcom/alipay/android/app/ui/quickpay/window/bd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/bd;->b:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/bd;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bd;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bd;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/bd;->b:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->a(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bd;->b:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->b(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bd;->b:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->b(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->e()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bd;->b:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->c(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;)Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bd;->b:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->d(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;)Landroid/app/Activity;

    return-void
.end method
