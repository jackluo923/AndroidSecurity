.class public Lcom/alipay/android/app/widget/CustomListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;,
        Lcom/alipay/android/app/widget/CustomListView$OnXScrollListener;
    }
.end annotation


# instance fields
.field private a:F

.field private b:Landroid/widget/Scroller;

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;

.field private e:Lcom/alipay/android/app/widget/CustomListViewHeader;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Lcom/alipay/android/app/widget/CustomListViewFooter;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->n:Z

    invoke-direct {p0, p1}, Lcom/alipay/android/app/widget/CustomListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->n:Z

    invoke-direct {p0, p1}, Lcom/alipay/android/app/widget/CustomListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->n:Z

    invoke-direct {p0, p1}, Lcom/alipay/android/app/widget/CustomListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v0, v0, Lcom/alipay/android/app/widget/CustomListView$OnXScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->b:Landroid/widget/Scroller;

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/widget/CustomListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    const-string/jumbo v1, "xlistview_header_content"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    const-string/jumbo v1, "xlistview_header_time"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomListView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/widget/CustomListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/widget/i;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/widget/i;-><init>(Lcom/alipay/android/app/widget/CustomListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/alipay/android/app/widget/CustomListView;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/widget/CustomListView;->h:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/widget/CustomListView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/widget/CustomListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->d()V

    return-void
.end method

.method private b()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewHeader;->getVisiableHeight()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/android/app/widget/CustomListView;->h:I

    if-le v2, v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alipay/android/app/widget/CustomListView;->h:I

    if-le v2, v0, :cond_3

    iget v0, p0, Lcom/alipay/android/app/widget/CustomListView;->h:I

    move v3, v0

    :goto_1
    iput v1, p0, Lcom/alipay/android/app/widget/CustomListView;->p:I

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->b:Landroid/widget/Scroller;

    sub-int v4, v3, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->invalidate()V

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1
.end method

.method private c()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->getBottomMargin()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/widget/CustomListView;->p:I

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->b:Landroid/widget/Scroller;

    neg-int v4, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->invalidate()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->m:Z

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->d:Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->d:Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;

    invoke-interface {v0}, Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;->b()V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/widget/CustomListView;->p:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewHeader;->setVisiableHeight(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->postInvalidate()V

    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->a()V

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setBottomMargin(I)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iput p4, p0, Lcom/alipay/android/app/widget/CustomListView;->o:I

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const v6, 0x3fe66666    # 1.8f

    const/4 v5, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iput v1, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/alipay/android/app/widget/CustomListView;->h:I

    if-le v0, v1, :cond_1

    iput-boolean v4, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewHeader;->setState(I)V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->d:Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->d:Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;

    invoke-interface {v0}, Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;->a()V

    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->b()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v1}, Lcom/alipay/android/app/widget/CustomListViewHeader;->getVisiableHeight()I

    move-result v1

    if-gtz v1, :cond_3

    cmpl-float v1, v0, v5

    if-lez v1, :cond_6

    :cond_3
    div-float/2addr v0, v6

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    float-to-int v0, v0

    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v2}, Lcom/alipay/android/app/widget/CustomListViewHeader;->getVisiableHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/widget/CustomListViewHeader;->setVisiableHeight(I)V

    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/alipay/android/app/widget/CustomListView;->h:I

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/widget/CustomListViewHeader;->setState(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0, v3}, Lcom/alipay/android/app/widget/CustomListView;->setSelection(I)V

    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->a()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/widget/CustomListViewHeader;->setState(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/alipay/android/app/widget/CustomListView;->o:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->getBottomMargin()I

    move-result v1

    if-gtz v1, :cond_7

    cmpg-float v1, v0, v5

    if-gez v1, :cond_2

    :cond_7
    neg-float v0, v0

    div-float/2addr v0, v6

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->getBottomMargin()I

    move-result v1

    float-to-int v0, v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->m:Z

    if-nez v1, :cond_8

    const/16 v1, 0x32

    if-le v0, v1, :cond_9

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setBottomMargin(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/alipay/android/app/widget/CustomListView;->o:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->getBottomMargin()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_b

    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->d()V

    :cond_b
    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->c()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/widget/CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->n:Z

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPullLoadState(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->hide()V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->hide()V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    :pswitch_1
    iput-boolean v2, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->show()V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/widget/CustomListView;->m:Z

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->show()V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    new-instance v1, Lcom/alipay/android/app/widget/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/widget/j;-><init>(Lcom/alipay/android/app/widget/CustomListView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/alipay/android/app/widget/CustomListView;->m:Z

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->show()V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    new-instance v1, Lcom/alipay/android/app/widget/k;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/widget/k;-><init>(Lcom/alipay/android/app/widget/CustomListView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPullRefreshEnable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setXListViewListener(Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/widget/CustomListView;->d:Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;

    return-void
.end method

.method public stopLoadMore()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->m:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/alipay/android/app/widget/CustomListView;->m:Z

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->c()V

    :cond_0
    return-void
.end method

.method public stopRefresh()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->b()V

    :cond_0
    return-void
.end method
