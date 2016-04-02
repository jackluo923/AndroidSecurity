.class public Luk/co/senab/a/b/n;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Luk/co/senab/a/b/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Luk/co/senab/a/b/n;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Luk/co/senab/a/b/n;-><init>(Landroid/content/Context;C)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;C)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    if-eqz v0, :cond_1

    iget-object v1, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Luk/co/senab/a/b/o;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Luk/co/senab/a/b/o;

    invoke-virtual {v0}, Luk/co/senab/a/b/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Luk/co/senab/a/b/n;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Luk/co/senab/a/b/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Luk/co/senab/a/b/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/senab/a/b/b/c;

    :goto_1
    invoke-virtual {v1}, Luk/co/senab/a/b/j;->f()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p1, :cond_4

    const-string v0, "PullToRefreshAttacher"

    const-string v1, "Refreshable View is null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void

    :cond_2
    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Luk/co/senab/a/b/n;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p1}, Luk/co/senab/a/b/g;->a(Landroid/view/View;)Luk/co/senab/a/b/b/c;

    move-result-object v0

    :cond_5
    iget-object v1, v1, Luk/co/senab/a/b/j;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to setup the PullToRefreshLayout before using it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Luk/co/senab/a/b/h;)Luk/co/senab/a/b/j;
    .locals 1

    new-instance v0, Luk/co/senab/a/b/j;

    if-eqz p2, :cond_0

    :goto_0
    invoke-direct {v0, p1, p2}, Luk/co/senab/a/b/j;-><init>(Landroid/app/Activity;Luk/co/senab/a/b/h;)V

    return-object v0

    :cond_0
    new-instance p2, Luk/co/senab/a/b/h;

    invoke-direct {p2}, Luk/co/senab/a/b/h;-><init>()V

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Luk/co/senab/a/b/n;->c()V

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    invoke-virtual {v0, v1, v1}, Luk/co/senab/a/b/j;->a(ZZ)V

    return-void
.end method

.method final a([I)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Luk/co/senab/a/b/n;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Luk/co/senab/a/b/n;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Luk/co/senab/a/b/n;->a(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a([Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Luk/co/senab/a/b/n;->a(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final b()V
    .locals 3

    invoke-direct {p0}, Luk/co/senab/a/b/n;->c()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Luk/co/senab/a/b/n;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Luk/co/senab/a/b/n;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Luk/co/senab/a/b/n;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Luk/co/senab/a/b/n;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    new-instance v0, Luk/co/senab/a/b/o;

    invoke-virtual {p0}, Luk/co/senab/a/b/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Luk/co/senab/a/b/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getHeaderTransformer()Luk/co/senab/a/b/f;
    .locals 1

    invoke-direct {p0}, Luk/co/senab/a/b/n;->c()V

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    iget-object v0, v0, Luk/co/senab/a/b/j;->a:Luk/co/senab/a/b/f;

    return-object v0
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Luk/co/senab/a/b/n;->c()V

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    iget-object v0, v0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    iget-object v1, v0, Luk/co/senab/a/b/j;->a:Luk/co/senab/a/b/f;

    iget-object v0, v0, Luk/co/senab/a/b/j;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Luk/co/senab/a/b/f;->a(Landroid/app/Activity;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    invoke-virtual {v0}, Luk/co/senab/a/b/j;->c()V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Luk/co/senab/a/b/n;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Luk/co/senab/a/b/n;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    invoke-virtual {v0, p1}, Luk/co/senab/a/b/j;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Luk/co/senab/a/b/n;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    if-eqz v2, :cond_9

    iget-object v2, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    iput-boolean v1, v2, Luk/co/senab/a/b/j;->k:Z

    :cond_0
    iget-boolean v3, v2, Luk/co/senab/a/b/j;->k:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v2, Luk/co/senab/a/b/j;->i:Z

    if-nez v3, :cond_3

    invoke-virtual {v2, p1}, Luk/co/senab/a/b/j;->a(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    move v0, v1

    :cond_2
    :goto_1
    return v0

    :cond_3
    iget-object v3, v2, Luk/co/senab/a/b/j;->l:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v2, Luk/co/senab/a/b/j;->l:Landroid/view/View;

    iget-boolean v3, v2, Luk/co/senab/a/b/j;->i:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v2, Luk/co/senab/a/b/j;->n:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    iget v3, v2, Luk/co/senab/a/b/j;->g:F

    iget v4, v2, Luk/co/senab/a/b/j;->h:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v0}, Luk/co/senab/a/b/j;->d(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_4

    invoke-virtual {v2, v1, v1}, Luk/co/senab/a/b/j;->a(ZZ)V

    :cond_4
    iget-boolean v0, v2, Luk/co/senab/a/b/j;->i:Z

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Luk/co/senab/a/b/j;->e()V

    :cond_5
    invoke-virtual {v2}, Luk/co/senab/a/b/j;->d()V

    goto :goto_0

    :pswitch_1
    iget-boolean v3, v2, Luk/co/senab/a/b/j;->j:Z

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-boolean v3, v2, Luk/co/senab/a/b/j;->i:Z

    if-eqz v3, :cond_1

    iget v3, v2, Luk/co/senab/a/b/j;->g:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    iget v3, v2, Luk/co/senab/a/b/j;->g:F

    sub-float v3, v0, v3

    iget v4, v2, Luk/co/senab/a/b/j;->f:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_8

    iget-object v4, v2, Luk/co/senab/a/b/j;->l:Landroid/view/View;

    invoke-virtual {v2, v4}, Luk/co/senab/a/b/j;->d(Landroid/view/View;)F

    move-result v4

    iget v5, v2, Luk/co/senab/a/b/j;->h:F

    sub-float v5, v0, v5

    cmpg-float v6, v5, v4

    if-gez v6, :cond_6

    iget-object v6, v2, Luk/co/senab/a/b/j;->a:Luk/co/senab/a/b/f;

    div-float v4, v5, v4

    invoke-virtual {v6, v4}, Luk/co/senab/a/b/f;->a(F)V

    :goto_2
    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iput v0, v2, Luk/co/senab/a/b/j;->g:F

    goto :goto_0

    :cond_6
    iget-boolean v4, v2, Luk/co/senab/a/b/j;->n:Z

    if-eqz v4, :cond_7

    iget-object v4, v2, Luk/co/senab/a/b/j;->a:Luk/co/senab/a/b/f;

    invoke-virtual {v4}, Luk/co/senab/a/b/f;->g()V

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v1, v1}, Luk/co/senab/a/b/j;->a(ZZ)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Luk/co/senab/a/b/j;->e()V

    invoke-virtual {v2}, Luk/co/senab/a/b/j;->d()V

    goto/16 :goto_0

    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setHeaderViewListener(Luk/co/senab/a/b/a/a;)V
    .locals 1

    invoke-direct {p0}, Luk/co/senab/a/b/n;->c()V

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    iput-object p1, v0, Luk/co/senab/a/b/j;->e:Luk/co/senab/a/b/a/a;

    return-void
.end method

.method setPullToRefreshAttacher(Luk/co/senab/a/b/j;)V
    .locals 1

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    invoke-virtual {v0}, Luk/co/senab/a/b/j;->c()V

    :cond_0
    iput-object p1, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 2

    invoke-direct {p0}, Luk/co/senab/a/b/n;->c()V

    iget-object v0, p0, Luk/co/senab/a/b/n;->a:Luk/co/senab/a/b/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Luk/co/senab/a/b/j;->a(ZZ)V

    return-void
.end method
