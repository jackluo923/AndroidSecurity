.class Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;
.super Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

.field private d:F

.field private e:F


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->d:F

    .line 1210
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->e:F

    .line 1211
    return-void
.end method

.method public final a(F)V
    .locals 4

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1216
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->d()V

    .line 1223
    :goto_0
    return-void

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->e:F

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 1219
    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1218
    invoke-static {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;I)V

    .line 1220
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->f(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1221
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->g(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V

    goto :goto_0
.end method
