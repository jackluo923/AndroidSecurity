.class final Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

.field private b:Z

.field private c:J

.field private d:J

.field private e:I

.field private f:F

.field private g:J

.field private h:I

.field private i:F

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->g:J

    iget-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->g:J

    iput-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c:J

    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->h:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->h:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    return-void
.end method

.method public final run()V
    .locals 10

    const/4 v9, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->b:Z

    if-eqz v0, :cond_0

    iput-boolean v9, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v3

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingTop()I

    move-result v2

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I
    invoke-static {v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$600(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v5

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I
    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->y:I
    invoke-static {v7}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I
    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$600(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I
    invoke-static {v7}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->y:I
    invoke-static {v8}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->h:I

    if-nez v7, :cond_4

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v3, v9}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    iput-boolean v9, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v2, :cond_2

    iput-boolean v9, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;
    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->H:F
    invoke-static {v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F

    move-result v5

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->I:F
    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2200(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c:J

    invoke-interface {v3, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;->a(F)F

    move-result v3

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->i:F

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->d:J

    iget-wide v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->d:J

    iget-wide v7, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c:J

    sub-long/2addr v5, v7

    long-to-float v3, v5

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->f:F

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->i:F

    iget v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->f:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    if-ltz v3, :cond_7

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    sub-int v1, v0, v1

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    add-int/2addr v1, v4

    if-nez v0, :cond_3

    if-le v1, v2, :cond_3

    move v1, v2

    :cond_3
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    const/4 v5, 0x1

    # setter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ae:Z
    invoke-static {v4, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2602(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Z)Z

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    sub-int/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setSelectionFromTop(II)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->layoutChildren()V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->invalidate()V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # setter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ae:Z
    invoke-static {v1, v9}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2602(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Z)Z

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # invokes: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(ILandroid/view/View;Z)V
    invoke-static {v1, v0, v3, v9}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2700(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;ILandroid/view/View;Z)V

    iget-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->d:J

    iput-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c:J

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    sub-int v7, v0, v1

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_5

    iput-boolean v9, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v6, v4, v2

    if-gt v3, v6, :cond_6

    iput-boolean v9, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;
    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

    move-result-object v3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->G:F
    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    # getter for: Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->J:F
    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c:J

    invoke-interface {v3, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;->a(F)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->i:F

    goto/16 :goto_1

    :cond_7
    neg-int v3, v4

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    goto/16 :goto_2
.end method
