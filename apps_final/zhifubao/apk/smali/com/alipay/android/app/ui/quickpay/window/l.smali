.class final Lcom/alipay/android/app/ui/quickpay/window/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;Landroid/widget/EditText;Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/l;->e:Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/l;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/window/l;->b:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    iput-object p4, p0, Lcom/alipay/android/app/ui/quickpay/window/l;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/alipay/android/app/ui/quickpay/window/l;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/l;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/l;->b:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->e()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/l;->e:Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->a(Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/l;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/l;->e:Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->b(Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/l;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/l;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
