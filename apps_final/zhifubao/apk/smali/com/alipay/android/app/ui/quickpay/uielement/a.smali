.class final Lcom/alipay/android/app/ui/quickpay/uielement/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/a;->a:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/a;->a:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/a;->a:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->b(Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/a;->a:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->q()V

    :cond_0
    return-void
.end method
