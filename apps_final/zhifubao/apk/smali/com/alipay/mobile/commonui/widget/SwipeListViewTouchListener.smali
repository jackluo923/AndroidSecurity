.class public Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private A:Landroid/view/View;

.field private B:Z

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/util/List;

.field private G:Ljava/util/List;

.field private H:Z

.field private I:Ljava/util/List;

.field private J:I

.field private K:I

.field private a:I

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Rect;

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:J

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

.field private q:I

.field private r:Ljava/util/List;

.field private s:I

.field private t:F

.field private u:Z

.field private v:Z

.field private w:Landroid/view/VelocityTracker;

.field private x:I

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/commonui/widget/APSwipeListView;II)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->a:I

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->b:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->c:Z

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->d:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->e:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->f:Landroid/graphics/Rect;

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->l:F

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->m:F

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->n:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->o:I

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->r:Ljava/util/List;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->s:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->D:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->E:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->G:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->I:Ljava/util/List;

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->d:I

    iput p3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->e:I

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->g:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->h:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->i:I

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->j:J

    iget-wide v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->j:J

    iput-wide v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->k:J

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->a(Landroid/view/View;ZZI)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;ZZI)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->G:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->m:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    invoke-static {p1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->k:J

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$6;-><init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;ZIZ)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    return-void

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->l:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->m:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->l:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Lcom/alipay/mobile/commonui/widget/APSwipeListView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->A:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->z:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->z:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setLongClickable(Z)V

    iput-object v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->z:Landroid/view/View;

    iput-object v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->A:Landroid/view/View;

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    :cond_1
    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->G:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->c:Z

    return v0
.end method

.method static synthetic access$602(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->H:Z

    return p1
.end method

.method static synthetic access$700(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->s:I

    return v0
.end method

.method static synthetic access$706(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->s:I

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;I)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->r:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;

    iget v0, v0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;->position:I

    aput v0, v2, v1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onDismiss([I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;

    iget-object v2, v0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    iget-object v2, v0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    iget-object v2, v0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->resetPendingDismisses()V

    return-void
.end method


# virtual methods
.method protected closeAnimate(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->a(Landroid/view/View;I)V

    return-void
.end method

.method closeOpenedItems()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getLastVisiblePosition()I

    move-result v3

    move v1, v2

    :goto_0
    if-gt v1, v3, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    sub-int v4, v1, v2

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->d:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->a(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected dismiss(I)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    sub-int v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->s:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->s:I

    if-lt p1, v1, :cond_0

    if-gt p1, v2, :cond_0

    invoke-virtual {p0, v3, p1, v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->performDismiss(Landroid/view/View;IZ)V

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->r:Ljava/util/List;

    new-instance v2, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;-><init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;ILandroid/view/View;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getCountSelected()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->I:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected getPositionsSelected()Ljava/util/List;
    .locals 3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->I:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getSwipeActionLeft()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->D:I

    return v0
.end method

.method public getSwipeActionRight()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->E:I

    return v0
.end method

.method protected handlerPendingDismisses(I)V
    .locals 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$10;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$10;-><init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;I)V

    iget-wide v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->k:J

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected isChecked(I)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->I:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListViewMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->H:Z

    return v0
.end method

.method protected isSwipeEnabled()Z
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$7;-><init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)V

    return-object v0
.end method

.method public move(F)V
    .locals 8

    const/high16 v7, -0x3d600000    # -80.0f

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-virtual {v0, v3, p1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onMove(IF)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->z:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->G:Ljava/util/List;

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->m:F

    add-float/2addr v0, v4

    :goto_0
    add-float/2addr v0, v3

    move v3, v0

    :cond_0
    cmpl-float v0, v3, v5

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->E:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->A:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_2
    cmpg-float v0, v3, v5

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->D:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->A:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_4
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->y:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->y:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    :cond_3
    :goto_5
    return-void

    :cond_4
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->l:F

    sub-float/2addr v0, v4

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->A:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->A:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_9
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    if-ne v0, v6, :cond_e

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    if-eqz v0, :cond_a

    cmpl-float v0, p1, v5

    if-lez v0, :cond_a

    const/high16 v0, 0x42a00000    # 80.0f

    cmpg-float v0, v3, v0

    if-ltz v0, :cond_d

    :cond_a
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    if-nez v0, :cond_b

    cmpg-float v0, p1, v5

    if-gez v0, :cond_b

    cmpl-float v0, v3, v7

    if-gtz v0, :cond_d

    :cond_b
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    if-eqz v0, :cond_c

    const/high16 v0, 0x42a00000    # 80.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_d

    :cond_c
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    if-nez v0, :cond_3

    cmpl-float v0, p1, v7

    if-lez v0, :cond_3

    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->z:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->z:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    goto :goto_5
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->isSwipeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    if-ge v0, v11, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    :cond_2
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->B:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    :cond_3
    iput v10, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getChildCount()I

    move-result v4

    new-array v0, v11, [I

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    aget v5, v0, v2

    sub-int v5, v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    aget v0, v0, v1

    sub-int v6, v3, v0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->f:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->d:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    iget-object v9, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    :cond_4
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-object v7, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->y:Landroid/view/View;

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->d:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->z:Landroid/view/View;

    new-instance v3, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$1;-><init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->b:Z

    if-eqz v3, :cond_5

    new-instance v3, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$2;-><init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->t:F

    iput v8, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->z:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->z:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setLongClickable(Z)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->e:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->e:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->e:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->e:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->A:Landroid/view/View;

    new-instance v2, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$3;-><init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_7
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v2, v1

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_2

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->u:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->t:F

    sub-float v5, v0, v4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_33

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->a:I

    if-ne v0, v10, :cond_32

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_32

    move v0, v3

    :goto_4
    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->a:I

    if-ne v4, v11, :cond_b

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_b

    move v0, v3

    :cond_b
    :goto_5
    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->h:I

    int-to-float v6, v6

    cmpg-float v6, v6, v0

    if-gtz v6, :cond_17

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->i:I

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_17

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    cmpg-float v0, v4, v0

    if-gez v0, :cond_17

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_13

    move v4, v1

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "swapRight: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " - swipingRight: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    if-eq v4, v0, :cond_14

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->D:I

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->E:I

    if-eq v0, v5, :cond_14

    move v5, v2

    :goto_7
    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->z:Landroid/view/View;

    iget v7, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "swap: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, " - swapRight: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, " - position: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    if-nez v0, :cond_c

    invoke-direct {p0, v6, v5, v4, v7}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->a(Landroid/view/View;ZZI)V

    :cond_c
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    if-ne v0, v1, :cond_d

    iget-object v8, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->y:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-nez v5, :cond_30

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->G:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->m:F

    sub-float/2addr v0, v4

    float-to-int v0, v0

    :goto_8
    move v4, v0

    :goto_9
    if-eqz v5, :cond_2f

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->s:I

    move v0, v2

    :goto_a
    invoke-static {v8}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v9

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v9, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->k:J

    invoke-virtual {v0, v9, v10}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$5;

    invoke-direct {v4, p0, v5, v8, v7}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$5;-><init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;ZLandroid/view/View;I)V

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    :cond_d
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    if-ne v0, v11, :cond_e

    invoke-static {v6}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->k:J

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$4;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$4;-><init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;)V

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    :cond_e
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    if-ne v0, v11, :cond_12

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->getCountSelected()I

    move-result v5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->I:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->I:Ljava/util/List;

    if-nez v6, :cond_1c

    move v0, v1

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v7, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_1d

    add-int/lit8 v0, v5, -0x1

    :goto_c
    if-nez v5, :cond_f

    if-ne v0, v1, :cond_f

    iget-object v7, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v7}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onChoiceStarted()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->closeOpenedItems()V

    iget v7, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->E:I

    iput v7, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->J:I

    iget v7, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->D:I

    iput v7, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->K:I

    iput v11, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->E:I

    iput v11, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->D:I

    :cond_f
    if-ne v5, v1, :cond_10

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onChoiceEnded()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->returnOldActions()V

    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v0, v5, :cond_11

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    if-nez v6, :cond_1e

    move v0, v1

    :goto_d
    invoke-virtual {v5, v4, v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->setItemChecked(IZ)V

    :cond_11
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    if-nez v6, :cond_1f

    :goto_e
    invoke-virtual {v0, v4, v1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onChoiceChanged(IZ)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->z:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->reloadChoiceStateInView(Landroid/view/View;I)V

    :cond_12
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->t:F

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->u:Z

    goto/16 :goto_0

    :cond_13
    move v4, v2

    goto/16 :goto_6

    :cond_14
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->G:Ljava/util/List;

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v4, :cond_15

    move v5, v2

    goto/16 :goto_7

    :cond_15
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->G:Ljava/util/List;

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    if-nez v4, :cond_16

    move v5, v2

    goto/16 :goto_7

    :cond_16
    move v5, v1

    goto/16 :goto_7

    :cond_17
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_31

    cmpl-float v0, v5, v3

    if-lez v0, :cond_18

    move v0, v1

    :goto_f
    move v4, v0

    move v5, v1

    goto/16 :goto_7

    :cond_18
    move v0, v2

    goto :goto_f

    :cond_19
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->l:F

    add-float/2addr v0, v4

    float-to-int v0, v0

    goto/16 :goto_8

    :cond_1a
    if-eqz v5, :cond_30

    if-eqz v4, :cond_1b

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->m:F

    sub-float/2addr v0, v4

    float-to-int v0, v0

    :goto_10
    move v4, v0

    goto/16 :goto_9

    :cond_1b
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->l:F

    add-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_10

    :cond_1c
    move v0, v2

    goto/16 :goto_b

    :cond_1d
    add-int/lit8 v0, v5, 0x1

    goto/16 :goto_c

    :cond_1e
    move v0, v2

    goto/16 :goto_d

    :cond_1f
    move v1, v2

    goto/16 :goto_e

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->B:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->t:F

    sub-float v5, v0, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->a:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    iget v9, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->changeSwipeMode(I)I

    move-result v0

    if-ltz v0, :cond_20

    move v6, v0

    :cond_20
    if-nez v6, :cond_22

    move v0, v3

    :goto_11
    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->g:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_21

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    if-ne v0, v10, :cond_21

    cmpg-float v0, v8, v7

    if-gez v0, :cond_21

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->u:Z

    cmpl-float v0, v5, v3

    if-lez v0, :cond_26

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deltaX: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " - swipingRight: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    iget-boolean v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onStartClose(IZ)V

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    :goto_13
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    if-ne v0, v11, :cond_21

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->A:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->u:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->G:Ljava/util/List;

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    int-to-float v0, v0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->m:F

    sub-float/2addr v0, v2

    :goto_14
    add-float/2addr v0, v5

    :goto_15
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->move(F)V

    move v2, v1

    goto/16 :goto_0

    :cond_22
    if-eq v6, v1, :cond_2e

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    iget v9, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    if-ne v6, v10, :cond_23

    cmpg-float v0, v5, v3

    if-gez v0, :cond_23

    move v0, v3

    goto/16 :goto_11

    :cond_23
    if-ne v6, v11, :cond_2e

    cmpl-float v0, v5, v3

    if-lez v0, :cond_2e

    move v0, v3

    goto/16 :goto_11

    :cond_24
    if-ne v6, v10, :cond_25

    cmpl-float v0, v5, v3

    if-lez v0, :cond_25

    move v0, v3

    goto/16 :goto_11

    :cond_25
    if-ne v6, v11, :cond_2e

    cmpg-float v0, v5, v3

    if-gez v0, :cond_2e

    move v0, v3

    goto/16 :goto_11

    :cond_26
    move v0, v2

    goto/16 :goto_12

    :cond_27
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->E:I

    if-ne v0, v1, :cond_28

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    :goto_16
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->x:I

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    iget-boolean v6, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    invoke-virtual {v0, v3, v4, v6}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onStartOpen(IIZ)V

    goto/16 :goto_13

    :cond_28
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    if-nez v0, :cond_29

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->D:I

    if-ne v0, v1, :cond_29

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    goto :goto_16

    :cond_29
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->E:I

    if-ne v0, v11, :cond_2a

    iput v11, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    goto :goto_16

    :cond_2a
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->v:Z

    if-nez v0, :cond_2b

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->D:I

    if-ne v0, v11, :cond_2b

    iput v11, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    goto :goto_16

    :cond_2b
    iput v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->C:I

    goto :goto_16

    :cond_2c
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->q:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->l:F

    add-float/2addr v0, v2

    goto/16 :goto_14

    :cond_2d
    move v0, v5

    goto/16 :goto_15

    :cond_2e
    move v0, v4

    goto/16 :goto_11

    :cond_2f
    move v0, v1

    goto/16 :goto_a

    :cond_30
    move v4, v2

    goto/16 :goto_9

    :cond_31
    move v4, v2

    move v5, v2

    goto/16 :goto_7

    :cond_32
    move v0, v4

    goto/16 :goto_4

    :cond_33
    move v0, v4

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected openAnimate(I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->a(Landroid/view/View;ZZI)V

    :cond_0
    return-void
.end method

.method protected performDismiss(Landroid/view/View;IZ)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->k:J

    invoke-virtual {v2, v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    if-eqz p3, :cond_0

    new-instance v3, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$8;

    invoke-direct {v3, p0, v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$8;-><init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;I)V

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    :cond_0
    new-instance v1, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$9;-><init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->r:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener$PendingDismissData;-><init>(Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;ILandroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected reloadChoiceStateInView(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->isChecked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->n:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->n:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->o:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->o:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public resetItems()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-gt v0, v1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->F:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->G:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->I:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected resetPendingDismisses()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected returnOldActions()V
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->J:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->E:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->K:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->D:I

    return-void
.end method

.method public setAnimationTime(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->k:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->j:J

    iput-wide v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->k:J

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->B:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLeftOffset(F)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->l:F

    return-void
.end method

.method public setRightOffset(F)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->m:F

    return-void
.end method

.method public setSwipeActionLeft(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->D:I

    return-void
.end method

.method public setSwipeActionRight(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->E:I

    return-void
.end method

.method public setSwipeClosesAllItemsWhenListMoves(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->c:Z

    return-void
.end method

.method protected setSwipeDrawableChecked(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->n:I

    return-void
.end method

.method protected setSwipeDrawableUnchecked(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->o:I

    return-void
.end method

.method public setSwipeMode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->a:I

    return-void
.end method

.method public setSwipeOpenOnLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->b:Z

    return-void
.end method

.method protected unselectedChoiceStates()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getFirstVisiblePosition()I

    move-result v3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getLastVisiblePosition()I

    move-result v4

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->I:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lt v1, v3, :cond_0

    if-gt v1, v4, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    sub-int v5, v1, v3

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->d:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->reloadChoiceStateInView(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->I:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->p:Lcom/alipay/mobile/commonui/widget/APSwipeListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onChoiceEnded()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->returnOldActions()V

    return-void
.end method
