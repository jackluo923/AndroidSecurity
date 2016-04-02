.class final Lcom/alipay/android/app/ui/quickpay/util/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->b:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->b:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->a(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;)I

    move-result v0

    sget v1, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->d:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->b:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->a(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;)I

    move-result v0

    sget v1, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->b:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->b:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    sget v1, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->c:I

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->a(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;I)I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->b:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->b(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->b:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->c(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->b:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->b(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->b:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->c(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->b:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->c(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->b:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->a(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;)I

    move-result v0

    sget v1, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->b:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    sget v1, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils$a;->d:I

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->a(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;I)I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/k;->b:Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->d(Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;)V

    goto :goto_0
.end method
