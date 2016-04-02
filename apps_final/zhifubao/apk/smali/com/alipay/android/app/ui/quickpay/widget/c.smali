.class final Lcom/alipay/android/app/ui/quickpay/widget/c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->a(Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->b(Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->c(Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;)Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->d(Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;)F

    move-result v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->e(Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;)I

    move-result v1

    neg-int v0, v0

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->c(Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;)Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v2, p3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->stopDragWithVelocity(ZF)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->f(Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;)Z

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->d(Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;)F

    move-result v1

    neg-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->e(Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;)I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/c;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->c(Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;)Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v2, p3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->stopDragWithVelocity(ZF)Z

    goto :goto_0
.end method
