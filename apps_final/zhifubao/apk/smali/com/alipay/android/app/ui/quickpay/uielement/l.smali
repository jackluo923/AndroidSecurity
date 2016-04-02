.class final Lcom/alipay/android/app/ui/quickpay/uielement/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UICell;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UICell;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/l;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UICell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/l;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UICell;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UICell;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/l;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UICell;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UICell;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/l;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UICell;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UICell;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
