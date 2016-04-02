.class final Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;
.super Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

.field private d:I

.field private e:I

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$h;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    return-void
.end method

.method private e()I
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I
    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$1000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->d:I

    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v0, -0x1

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->d:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->e:I

    if-ne v0, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->d:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->e:I

    if-ge v0, v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I
    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$1100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->d()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$800(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->d:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$900(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->e:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    const/4 v1, 0x2

    # setter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I
    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$102(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->e()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->f:F

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->g:F

    return-void
.end method

.method public final a(F)V
    .locals 5

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->e()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->f:F

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->g:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->f:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->g:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    const/4 v1, 0x1

    # invokes: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Z)V
    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$700(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Z)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # invokes: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b()V
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$1200(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    return-void
.end method
