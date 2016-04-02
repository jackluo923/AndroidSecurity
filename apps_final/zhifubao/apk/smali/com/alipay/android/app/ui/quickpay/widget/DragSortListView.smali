.class public Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;
.super Landroid/widget/ListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragSortListener;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$g;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$f;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$h;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;
    }
.end annotation


# static fields
.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4


# instance fields
.field private A:[Landroid/view/View;

.field private B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

.field private C:F

.field private D:F

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

.field private V:Landroid/view/MotionEvent;

.field private W:I

.field private Z:F

.field private a:Landroid/view/View;

.field private aa:F

.field private ab:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

.field private ac:Z

.field private ad:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;

.field private ae:Z

.field private af:Z

.field private ag:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;

.field private ah:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$g;

.field private ai:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$f;

.field private aj:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;

.field private ak:Z

.field private al:F

.field private am:Z

.field private an:Z

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:I

.field private e:Z

.field private f:Landroid/database/DataSetObserver;

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;

.field private s:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

.field private t:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 14

    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->e:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->z:I

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->A:[Landroid/view/View;

    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->C:F

    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->D:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->K:F

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/d;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->S:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->Z:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aa:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ac:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ae:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->af:Z

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ag:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->al:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->am:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->an:Z

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ac:Z

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ac:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ad:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g:F

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g:F

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->Z:F

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->Z:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->l:Z

    const v0, 0x3ea8f5c3    # 0.33f

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDragScrollStart(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->K:F

    const-string/jumbo v0, "drag_handle"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)V

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->b()V

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->a()V

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->c()V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$g;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$g;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ah:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$g;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aj:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->V:Landroid/view/MotionEvent;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/e;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/e;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->f:Landroid/database/DataSetObserver;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(II)I
    .locals 6

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFooterViewsCount()I

    move-result v1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, p2

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getDividerHeight()I

    move-result v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    sub-int/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(I)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(I)I

    move-result v3

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    iget v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-gt v4, v5, :cond_5

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-ne p1, v4, :cond_4

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    iget v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ne p1, v4, :cond_3

    add-int v1, p2, v3

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    sub-int p2, v1, v3

    :cond_2
    :goto_1
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-gt p1, v1, :cond_7

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    sub-int v0, v1, v0

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0

    :cond_3
    sub-int/2addr v3, v2

    add-int/2addr v3, p2

    sub-int p2, v3, v1

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-le p1, v3, :cond_2

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-gt p1, v3, :cond_2

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-le p1, v4, :cond_6

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-gt p1, v4, :cond_6

    add-int/2addr p2, v1

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-eq v1, v4, :cond_2

    sub-int v1, v3, v2

    add-int/2addr p2, v1

    goto :goto_1

    :cond_7
    sub-int v0, v2, v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0
.end method

.method private static a(III)I
    .locals 2

    sub-int v1, p2, p1

    add-int/lit8 v0, p0, -0x1

    if-ge v0, p1, :cond_1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lt v0, p2, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7

    const/4 v1, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    move v2, v0

    move v0, v4

    :goto_0
    sub-int v3, v2, v0

    if-lez v3, :cond_1

    add-int v3, v0, v2

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    if-ge v6, p1, :cond_0

    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v5, :cond_2

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_2

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eq v0, v5, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_4

    :cond_3
    move v2, v1

    :goto_2
    if-ne v2, v1, :cond_5

    :goto_3
    return v4

    :cond_4
    move v2, v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    :goto_4
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    if-ge v5, p2, :cond_8

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_6

    if-ne v5, v0, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    aput v1, p3, v3

    aput v0, p4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v5, 0x1

    move v1, v5

    goto :goto_5

    :cond_8
    if-ne v0, p2, :cond_9

    move v0, p1

    :cond_9
    aput v1, p3, v3

    aput v0, p4, v3

    add-int/lit8 v0, v3, 0x1

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    aget v1, p3, v4

    if-ne v1, p1, :cond_a

    add-int/lit8 v1, v0, -0x1

    aget v1, p4, v1

    if-ne v1, p1, :cond_a

    add-int/lit8 v1, v0, -0x1

    aget v1, p3, v1

    aput v1, p3, v4

    add-int/lit8 v0, v0, -0x1

    :cond_a
    move v4, v0

    goto :goto_3
.end method

.method private a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    return-void
.end method

.method private a(ILandroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getDividerHeight()I

    move-result v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-le p1, v6, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v1, v0

    add-int v0, v1, v3

    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2, v4, v1, v5, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {v2, v4, v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    sub-int/2addr v0, v1

    sub-int v1, v0, v3

    goto :goto_0
.end method

.method private a(ILandroid/view/View;Z)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-eq p1, v0, :cond_5

    const/4 v0, -0x2

    :goto_0
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-ne p1, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ge p1, v0, :cond_6

    move-object v0, p2

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;->setGravity(I)V

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v0, 0x0

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    :cond_3
    if-eq v0, v1, :cond_4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(II)I

    move-result v0

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-le p1, v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->M:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->O:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->P:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->M:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->M:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->O:I

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->P:I

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->M:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->p:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->q:I

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->z:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getListPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->K:F

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    return v0
.end method

.method static synthetic access$1000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    return v0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    return p1
.end method

.method static synthetic access$1100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    return v0
.end method

.method static synthetic access$1200(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b()V

    return-void
.end method

.method static synthetic access$1300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    return v0
.end method

.method static synthetic access$1400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    return v0
.end method

.method static synthetic access$1500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ak:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->al:F

    return v0
.end method

.method static synthetic access$1602(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;F)F
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->al:F

    return p1
.end method

.method static synthetic access$1616(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;F)F
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->al:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->al:F

    return v0
.end method

.method static synthetic access$1700(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h()V

    return-void
.end method

.method static synthetic access$1800(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;ILandroid/view/View;Z)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 2

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    return v0
.end method

.method static synthetic access$2100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->H:F

    return v0
.end method

.method static synthetic access$2200(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->I:F

    return v0
.end method

.method static synthetic access$2300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->G:F

    return v0
.end method

.method static synthetic access$2500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->J:F

    return v0
.end method

.method static synthetic access$2602(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ae:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->o:I

    return v0
.end method

.method static synthetic access$3000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->P:I

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->o:I

    return p1
.end method

.method static synthetic access$3100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->y:I

    return v0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    return v0
.end method

.method static synthetic access$900(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    return v0
.end method

.method private b(II)I
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getDividerHeight()I

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->l:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aa:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ne p1, v3, :cond_5

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-ne v1, v3, :cond_3

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    add-int p2, v2, v0

    :cond_0
    :goto_1
    return p2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    sub-int p2, v0, v2

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-ne p1, v3, :cond_7

    if-eqz v0, :cond_6

    add-int/2addr p2, v2

    goto :goto_1

    :cond_6
    add-int/2addr p2, v1

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-ne p1, v0, :cond_0

    add-int v0, p2, v1

    sub-int p2, v0, v2

    goto :goto_1
.end method

.method private b(ILandroid/view/View;Z)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_0

    :cond_5
    invoke-direct {p0, p2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->s:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->s:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    sub-int v0, v3, v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;->a(II)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h()V

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c()V

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a()V

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->f()V

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->t:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->t:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;->a(I)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h()V

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c()V

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a()V

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    goto :goto_0
.end method

.method private c(I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ag:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->a(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->A:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->A:[Landroid/view/View;

    :cond_3
    if-ltz v1, :cond_5

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->A:[Landroid/view/View;

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->A:[Landroid/view/View;

    aput-object v0, v2, v1

    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ag:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->a(II)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->A:[Landroid/view/View;

    aget-object v1, v2, v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setSelectionFromTop(II)V

    :cond_1
    return-void
.end method

.method private c(ILandroid/view/View;Z)V
    .locals 17

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ae:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->M:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c:Landroid/graphics/Point;

    invoke-interface {v2, v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;->a(Landroid/graphics/Point;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingLeft()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_10

    if-le v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iput v3, v2, Landroid/graphics/Point;->x:I

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFooterViewsCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingTop()I

    move-result v2

    if-ge v6, v3, :cond_2

    sub-int v2, v3, v6

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-gt v6, v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v8

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v3

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-lt v7, v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_5
    if-ge v4, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->y:I

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->y:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    sub-int v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v3, v4, v2

    sub-int v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getDividerHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    if-ge v6, v4, :cond_13

    move v2, v3

    move v3, v4

    :goto_2
    if-ltz v2, :cond_8

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(I)I

    move-result v4

    if-nez v2, :cond_12

    sub-int/2addr v5, v7

    sub-int v4, v5, v4

    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFooterViewsCount()I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aa:F

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->l:Z

    if-eqz v13, :cond_17

    sub-int v13, v4, v3

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    if-ge v14, v4, :cond_15

    :goto_4
    const/high16 v14, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->Z:F

    mul-float/2addr v14, v15

    int-to-float v13, v13

    mul-float/2addr v13, v14

    float-to-int v13, v13

    int-to-float v14, v13

    add-int/2addr v3, v13

    sub-int v13, v4, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    if-ge v15, v3, :cond_16

    add-int/lit8 v4, v2, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    sub-int/2addr v3, v13

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v3, v14

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aa:F

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-ge v3, v5, :cond_18

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    move v2, v5

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-ne v3, v8, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-ne v3, v11, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aa:F

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_21

    :cond_a
    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    if-eq v2, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->r:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->r:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    :cond_b
    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    const/4 v3, 0x1

    move v8, v3

    :goto_8
    if-eqz v8, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->f()V

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(I)I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_1f

    sub-int v2, v3, v4

    sub-int v4, v5, v4

    :goto_9
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    sub-int/2addr v7, v11

    :cond_c
    move/from16 v0, p1

    if-gt v0, v9, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move/from16 v0, p1

    if-le v0, v2, :cond_1e

    sub-int v2, v7, v4

    add-int/lit8 v2, v2, 0x0

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setSelectionFromTop(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->layoutChildren()V

    :cond_d
    if-nez v8, :cond_e

    if-eqz p3, :cond_f

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->invalidate()V

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ae:Z

    return-void

    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    if-ge v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iput v3, v2, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    add-int/2addr v2, v4

    if-le v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :cond_12
    add-int/2addr v4, v7

    sub-int/2addr v5, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    if-ge v6, v4, :cond_8

    move v3, v4

    goto/16 :goto_2

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v8

    move v6, v5

    move v5, v2

    move v2, v3

    move v3, v4

    :goto_b
    if-ge v2, v8, :cond_8

    add-int/lit8 v4, v8, -0x1

    if-ne v2, v4, :cond_14

    add-int v4, v6, v7

    add-int/2addr v4, v5

    goto/16 :goto_3

    :cond_14
    add-int v4, v7, v5

    add-int/2addr v6, v4

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(I)I

    move-result v5

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    if-lt v11, v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_b

    :cond_15
    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    if-lt v3, v13, :cond_17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    sub-int/2addr v4, v15

    int-to-float v4, v4

    div-float/2addr v4, v14

    add-float/2addr v4, v13

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aa:F

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v7

    if-lt v3, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    goto/16 :goto_6

    :cond_19
    move/from16 v0, p1

    if-ne v0, v10, :cond_1c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move/from16 v0, p1

    if-gt v0, v4, :cond_1a

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1b

    sub-int v2, v3, v5

    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_a

    :cond_1b
    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move/from16 v0, p1

    if-gt v0, v2, :cond_1d

    rsub-int/lit8 v2, v7, 0x0

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_1e

    rsub-int/lit8 v2, v4, 0x0

    goto/16 :goto_a

    :cond_1e
    move v2, v6

    goto/16 :goto_a

    :cond_1f
    move v2, v3

    move v4, v5

    goto/16 :goto_9

    :cond_20
    move v8, v3

    goto/16 :goto_8

    :cond_21
    move v3, v6

    goto/16 :goto_7
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g:F

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h:F

    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->am:Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ag:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->a()V

    return-void
.end method

.method private e()V
    .locals 6

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    int-to-float v3, v0

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->C:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->H:F

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->D:F

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->G:F

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->H:F

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->E:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->G:F

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->F:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->H:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->I:F

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->G:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->J:F

    return-void
.end method

.method private f()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    if-gt v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    add-int v4, v1, v0

    invoke-direct {p0, v4, v3, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(ILandroid/view/View;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->y:I

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;->a(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c()V

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h()V

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a()V

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->f()V

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/16 v6, 0x1f

    const/4 v4, 0x0

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getWidth()I

    move-result v2

    if-gez v0, :cond_2

    neg-int v0, v0

    :cond_2
    if-ge v0, v2, :cond_4

    sub-int v0, v2, v0

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, v0

    :goto_0
    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h:F

    mul-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v4, v4, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v3, v7

    int-to-float v4, v8

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, v7

    int-to-float v3, v8

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v0, v1, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ab:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ab:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public isDragEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->e:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iput-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->e:Z

    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->am:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    if-ge p2, p1, :cond_3

    move v0, p1

    move v1, p2

    :goto_0
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v5, v0, [I

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v6, v0, [I

    invoke-static {v3, v1, v4, v5, v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v3

    if-ne v3, v8, :cond_1

    aget v0, v5, v2

    aget v7, v6, v2

    if-ne v0, v7, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ge p1, p2, :cond_2

    move v0, v2

    :goto_1
    if-eq v0, v3, :cond_0

    aget v7, v5, v0

    invoke-static {v7, v1, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(III)I

    move-result v7

    invoke-virtual {p0, v7, v8}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setItemChecked(IZ)V

    aget v7, v6, v0

    invoke-static {v7, v1, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(III)I

    move-result v7

    invoke-virtual {p0, v7, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_2
    if-eq v0, v3, :cond_0

    aget v1, v5, v0

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setItemChecked(IZ)V

    aget v1, v6, v0

    invoke-virtual {p0, v1, v8}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, p2

    move v1, p1

    goto :goto_0
.end method

.method public moveItem(II)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->s:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->s:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;->a(II)V

    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x4

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->cancelDrag()V

    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->stopDrag(Z)Z

    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->n:I

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->o:I

    sub-int v2, v1, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Z)V

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->y:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->y:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->b()I

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->P:I

    if-le v0, v3, :cond_4

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->F:I

    if-le v0, v3, :cond_4

    if-eq v2, v4, :cond_4

    if-eq v2, v5, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c()V

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a(I)V

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->P:I

    if-ge v1, v3, :cond_6

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->E:I

    if-ge v1, v3, :cond_6

    if-eqz v2, :cond_6

    if-eq v2, v5, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c()V

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a(I)V

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->E:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->F:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ac:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ad:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->b()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Landroid/view/MotionEvent;)V

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->S:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v3, v1, 0xff

    if-nez v3, :cond_2

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->af:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v1, :cond_5

    move v1, v0

    :goto_1
    if-eq v3, v0, :cond_3

    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    :cond_3
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->am:Z

    move v1, v0

    :goto_2
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    if-eqz v1, :cond_6

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d()V

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    iput v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->e:Z

    :cond_1
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->z:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->e()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->af:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->af:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->S:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->S:Z

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Landroid/view/MotionEvent;)V

    :cond_3
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-nez v2, :cond_5

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    if-eqz v0, :cond_0

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v2, v2, [I

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    new-array v3, v3, [I

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, p1, v4, v2, v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v5

    move v0, v1

    :goto_0
    if-eq v0, v5, :cond_0

    aget v6, v2, v0

    if-eq v6, p1, :cond_3

    aget v6, v3, v0

    aget v7, v2, v0

    if-ge v6, v7, :cond_2

    aget v6, v3, v0

    if-gt v6, p1, :cond_3

    :cond_2
    aget v6, v2, v0

    invoke-static {v6, p1, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(III)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setItemChecked(IZ)V

    :cond_3
    aget v6, v3, v0

    invoke-static {v6, p1, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(III)I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ak:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->removeItem(IF)V

    return-void
.end method

.method public removeItem(IF)V
    .locals 3

    const/4 v2, 0x4

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-ne v0, v2, :cond_3

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    iput p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->al:F

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ah:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ah:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$g;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$g;->c()V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ae:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ab:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->f:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    instance-of v0, p1, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDropListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;)V

    :cond_0
    instance-of v0, p1, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDragListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;)V

    :cond_1
    instance-of v0, p1, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setRemoveListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ab:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ab:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    return-void
.end method

.method public setDragListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->r:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;

    return-void
.end method

.method public setDragScrollProfile(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDragScrollStarts(FF)V

    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->D:F

    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->C:F

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->e()V

    :cond_0
    return-void

    :cond_1
    iput p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->D:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->C:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragSortListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDropListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;)V

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDragListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;)V

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setRemoveListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;)V

    return-void
.end method

.method public setDropListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->s:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h:F

    return-void
.end method

.method public setFloatViewManager(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->K:F

    return-void
.end method

.method public setRemoveListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->t:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;->a(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    iput v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    or-int/2addr v1, p3

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g()V

    iput p4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->n:I

    iput p5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->o:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->Q:I

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->M:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->n:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->o:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ac:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ad:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->a()V

    :cond_5
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->requestLayout()V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ai:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ai:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$f;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$f;->c()V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ak:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c()V

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->removeItem(IF)V

    :goto_0
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ac:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ad:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c()V

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aj:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aj:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->c()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ak:Z

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
