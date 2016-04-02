.class public Lcom/alipay/mobile/commonui/widget/RefreshLayout;
.super Landroid/widget/LinearLayout;


# static fields
.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final v:Landroid/view/animation/Interpolator;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:F

.field private e:F

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Landroid/widget/Scroller;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Landroid/view/VelocityTracker;

.field private t:I

.field private u:I

.field private w:I

.field private x:Lcom/alipay/mobile/commonui/widget/RefreshLayout$OnHeaderRefreshListener;

.field private y:Lcom/alipay/mobile/commonui/widget/RefreshLayout$OnFooterRefreshListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/commonui/widget/RefreshLayout$1;

    invoke-direct {v0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->v:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->d:F

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->e:F

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->f:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->g:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->p:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->q:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->r:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->w:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->setWillNotDraw(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->setGravity(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->j:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->t:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->u:I

    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->v:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->o:Landroid/widget/Scroller;

    return-void
.end method

.method private static a(II)I
    .locals 3

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    move p0, p1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    if-ne p0, v1, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    move p0, v0

    goto :goto_0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->h:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->i:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->s:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->s:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->w:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->w:I

    goto :goto_0
.end method


# virtual methods
.method public canChildScrollDown()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v0

    if-le v3, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getPaddingBottom()I

    move-result v3

    if-le v0, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public canChildScrollUp()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->o:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->o:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->scrollTo(II)V

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected ensureTarget()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFooterRefreshing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->q:Z

    return v0
.end method

.method public getFooterView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderRefreshing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->p:Z

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->ensureTarget()V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->f:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->g:Z

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    if-ne v2, v1, :cond_4

    :cond_3
    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->h:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->i:Z

    iput v4, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->r:I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->s:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->s:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_6

    iget-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->h:Z

    if-eqz v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->i:Z

    if-nez v3, :cond_0

    :cond_6
    packed-switch v2, :pswitch_data_0

    :cond_7
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->s:Landroid/view/VelocityTracker;

    if-nez v0, :cond_8

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->s:Landroid/view/VelocityTracker;

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->h:Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->m:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->k:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->n:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->l:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->r:I

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->i:Z

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->o:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->h:Z

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->r:I

    if-eq v2, v4, :cond_7

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->k:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->l:F

    sub-float v5, v2, v5

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->n:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollY()I

    move-result v7

    if-gez v7, :cond_a

    cmpg-float v7, v5, v8

    if-gez v7, :cond_a

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->h:Z

    cmpl-float v0, v5, v8

    if-lez v0, :cond_9

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->n:F

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->j:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    :goto_2
    iput v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->l:F

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->k:F

    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->n:F

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->j:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollY()I

    move-result v7

    if-lez v7, :cond_c

    cmpl-float v7, v5, v8

    if-lez v7, :cond_c

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->h:Z

    cmpl-float v0, v5, v8

    if-lez v0, :cond_b

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->n:F

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->j:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    :goto_3
    iput v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->l:F

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->k:F

    move v0, v1

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->n:F

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->j:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_3

    :cond_c
    cmpl-float v7, v5, v8

    if-lez v7, :cond_d

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->canChildScrollUp()Z

    move-result v7

    if-nez v7, :cond_e

    :cond_d
    cmpg-float v7, v5, v8

    if-gez v7, :cond_f

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->canChildScrollDown()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_e
    iput v3, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->k:F

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->l:F

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->i:Z

    goto/16 :goto_0

    :cond_f
    cmpl-float v7, v5, v8

    if-lez v7, :cond_10

    iget-object v7, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    if-eqz v7, :cond_11

    :cond_10
    cmpg-float v7, v5, v8

    if-gez v7, :cond_12

    iget-object v7, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    if-nez v7, :cond_12

    :cond_11
    iput v3, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->k:F

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->l:F

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->i:Z

    goto/16 :goto_0

    :cond_12
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->j:I

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_15

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v6

    cmpl-float v0, v0, v4

    if-lez v0, :cond_15

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->h:Z

    invoke-direct {p0, v1}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a(I)V

    cmpl-float v0, v5, v8

    if-lez v0, :cond_14

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->n:F

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->j:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_4
    iput v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->l:F

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->k:F

    :cond_13
    :goto_5
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->h:Z

    goto/16 :goto_1

    :cond_14
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->n:F

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->j:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_4

    :cond_15
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->j:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_13

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->i:Z

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->ensureTarget()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    add-int/2addr v0, v3

    add-int v5, v4, v1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    sub-int v2, v4, v2

    add-int/2addr v0, v3

    invoke-virtual {v5, v3, v2, v0, v4}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    add-int/2addr v0, v3

    add-int/2addr v2, v1

    invoke-virtual {v4, v3, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->ensureTarget()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a(II)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v3}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a(II)I

    move-result v0

    :goto_1
    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a(II)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v3}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a(II)I

    move-result v0

    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->d:F

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->e:F

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, -0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->s:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->s:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v4

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->o:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->m:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->k:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->n:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->l:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->r:I

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->h:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->r:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->l:F

    sub-float v5, v0, v2

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->l:F

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    float-to-int v2, v0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    float-to-int v3, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v5

    float-to-int v0, v0

    cmpl-float v6, v5, v1

    if-lez v6, :cond_6

    if-gt v0, v2, :cond_3

    move v0, v2

    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->scrollTo(II)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->d:F

    neg-float v0, v0

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->e:F

    goto :goto_3

    :cond_6
    cmpg-float v1, v5, v1

    if-gez v1, :cond_3

    if-lt v0, v3, :cond_3

    move v0, v3

    goto :goto_4

    :pswitch_2
    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->h:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->s:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->u:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->r:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollY()I

    move-result v2

    if-gez v2, :cond_9

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->d:F

    neg-float v3, v3

    mul-float/2addr v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->setHeaderRefreshing(Z)V

    :cond_7
    :goto_5
    iput v6, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->r:I

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a()V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->smoothScrollTo(III)V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollY()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->e:F

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->setFooterRefreshing(Z)V

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->smoothScrollTo(III)V

    goto :goto_5

    :pswitch_3
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->h:Z

    if-eqz v0, :cond_2

    iput v6, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->r:I

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public setFooterRefreshing(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->q:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->e:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->simpleScrollTo(II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->y:Lcom/alipay/mobile/commonui/widget/RefreshLayout$OnFooterRefreshListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->y:Lcom/alipay/mobile/commonui/widget/RefreshLayout$OnFooterRefreshListener;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/RefreshLayout$OnFooterRefreshListener;->onFooterFresh(Lcom/alipay/mobile/commonui/widget/RefreshLayout;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->simpleScrollTo(II)V

    goto :goto_0
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setHeaderRefreshing(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->p:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->d:F

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->simpleScrollTo(II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->x:Lcom/alipay/mobile/commonui/widget/RefreshLayout$OnHeaderRefreshListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->x:Lcom/alipay/mobile/commonui/widget/RefreshLayout$OnHeaderRefreshListener;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/RefreshLayout$OnHeaderRefreshListener;->onHeaderFresh(Lcom/alipay/mobile/commonui/widget/RefreshLayout;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->simpleScrollTo(II)V

    goto :goto_0
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setOnFooterRefreshListener(Lcom/alipay/mobile/commonui/widget/RefreshLayout$OnFooterRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->y:Lcom/alipay/mobile/commonui/widget/RefreshLayout$OnFooterRefreshListener;

    return-void
.end method

.method public setOnHeaderRefreshListener(Lcom/alipay/mobile/commonui/widget/RefreshLayout$OnHeaderRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->x:Lcom/alipay/mobile/commonui/widget/RefreshLayout$OnHeaderRefreshListener;

    return-void
.end method

.method public setScrollingWhileRefreshingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->g:Z

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a:Landroid/view/View;

    return-void
.end method

.method simpleScrollTo(II)V
    .locals 6

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollY()I

    move-result v2

    sub-int v3, p1, v1

    sub-int v4, p2, v2

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->a(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->o:Landroid/widget/Scroller;

    const/16 v5, 0xfa

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method smoothScrollTo(III)V
    .locals 6

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->getScrollY()I

    move-result v2

    sub-int v3, p1, v1

    sub-int v4, p2, v2

    if-nez p3, :cond_0

    const/4 p3, 0x1

    :cond_0
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/RefreshLayout;->o:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method
