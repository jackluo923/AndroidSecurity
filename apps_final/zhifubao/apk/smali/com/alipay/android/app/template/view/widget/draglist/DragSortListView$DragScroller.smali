.class Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

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
.method public constructor <init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V
    .locals 1

    .prologue
    .line 2830
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->j:Z

    .line 2831
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 2834
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->j:Z

    if-nez v0, :cond_0

    .line 2836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->b:Z

    .line 2837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->j:Z

    .line 2838
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->g:J

    .line 2839
    iget-wide v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->g:J

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->c:J

    .line 2840
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->h:I

    .line 2841
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2843
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 2823
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->j:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 2827
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->h:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2848
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->j:Z

    .line 2850
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2858
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->b:Z

    if-eqz v0, :cond_0

    .line 2859
    iput-boolean v9, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->j:Z

    .line 2944
    :goto_0
    return-void

    .line 2865
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2866
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getLastVisiblePosition()I

    move-result v0

    .line 2867
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getCount()I

    move-result v3

    .line 2868
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 2869
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2871
    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->f(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v5

    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v6}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->s(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v7}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2872
    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v6}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->f(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v7}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->s(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v8}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2874
    iget v7, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->h:I

    if-nez v7, :cond_4

    .line 2875
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v3, v9}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2877
    if-nez v3, :cond_1

    .line 2878
    iput-boolean v9, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->j:Z

    goto :goto_0

    .line 2881
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 2882
    iput-boolean v9, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->j:Z

    goto :goto_0

    .line 2886
    :cond_2
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->t(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->u(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)F

    move-result v5

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 2887
    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v6}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->c:J

    .line 2886
    invoke-interface {v3, v5, v6, v7}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    iput v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->i:F

    .line 2903
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->d:J

    .line 2904
    iget-wide v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->d:J

    iget-wide v7, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->c:J

    sub-long/2addr v5, v7

    long-to-float v3, v5

    iput v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->f:F

    .line 2910
    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->i:F

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->f:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->e:I

    .line 2913
    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->e:I

    if-ltz v3, :cond_7

    .line 2914
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->e:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->e:I

    move v0, v1

    .line 2921
    :goto_2
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    sub-int v1, v0, v1

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2922
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->e:I

    add-int/2addr v1, v4

    .line 2924
    if-nez v0, :cond_3

    if-le v1, v2, :cond_3

    move v1, v2

    .line 2929
    :cond_3
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;Z)V

    .line 2931
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    sub-int/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setSelectionFromTop(II)V

    .line 2932
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->layoutChildren()V

    .line 2933
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->invalidate()V

    .line 2935
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v1, v9}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;Z)V

    .line 2938
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v1, v0, v3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;ILandroid/view/View;)V

    .line 2940
    iget-wide v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->d:J

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->c:J

    .line 2943
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2889
    :cond_4
    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    sub-int v7, v0, v1

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2890
    if-nez v6, :cond_5

    .line 2891
    iput-boolean v9, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->j:Z

    goto/16 :goto_0

    .line 2894
    :cond_5
    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v6, v4, v2

    if-gt v3, v6, :cond_6

    .line 2895
    iput-boolean v9, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->j:Z

    goto/16 :goto_0

    .line 2899
    :cond_6
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->t(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;

    move-result-object v3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v6}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->w(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)F

    move-result v6

    sub-float/2addr v5, v6

    .line 2900
    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-static {v6}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->c:J

    .line 2899
    invoke-interface {v3, v5, v6, v7}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->i:F

    goto/16 :goto_1

    .line 2917
    :cond_7
    neg-int v3, v4

    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->e:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->e:I

    goto/16 :goto_2
.end method
