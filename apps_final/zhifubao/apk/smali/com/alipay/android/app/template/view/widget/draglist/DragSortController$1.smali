.class Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DragSortController.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;

    .line 445
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 450
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->a(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->b(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->c(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getWidth()I

    move-result v0

    .line 452
    div-int/lit8 v0, v0, 0x5

    .line 453
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)F

    move-result v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->e(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)I

    move-result v1

    neg-int v0, v0

    if-le v1, v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->c(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v2, p3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 462
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->f(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)V

    .line 464
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->d(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)F

    move-result v1

    neg-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->e(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController$1;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->c(Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;)Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v2, p3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->stopDragWithVelocity(ZF)Z

    goto :goto_0
.end method
