.class Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;
.super Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

.field private d:I

.field private e:I

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V
    .locals 0

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    .line 1237
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V

    .line 1238
    return-void
.end method

.method private e()I
    .locals 4

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1251
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1252
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->d:I

    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1253
    const/4 v0, -0x1

    .line 1254
    if-eqz v2, :cond_2

    .line 1255
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->d:I

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->e:I

    if-ne v0, v3, :cond_0

    .line 1256
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1269
    :goto_0
    return v0

    .line 1257
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->d:I

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->e:I

    if-ge v0, v3, :cond_1

    .line 1259
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1262
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1266
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->d()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->h(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->d:I

    .line 1243
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->e:I

    .line 1244
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;I)V

    .line 1245
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->e()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->f:F

    .line 1246
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->g:F

    .line 1247
    return-void
.end method

.method public final a(F)V
    .locals 5

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->e()I

    move-result v0

    .line 1275
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingLeft()I

    move-result v1

    .line 1276
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 1277
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    .line 1278
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    .line 1279
    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->f:F

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->g:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    .line 1280
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->f:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 1281
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->g:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1282
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->g(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V

    .line 1284
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->l(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V

    .line 1289
    return-void
.end method
