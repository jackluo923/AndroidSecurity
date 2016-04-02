.class public Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# static fields
.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4


# instance fields
.field private A:[Landroid/view/View;

.field private B:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;

.field private C:F

.field private D:F

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;

.field private V:Landroid/view/MotionEvent;

.field private W:I

.field private Z:F

.field private a:Landroid/view/View;

.field private aa:F

.field private ab:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;

.field private ac:Z

.field private ad:Z

.field private ae:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$HeightCache;

.field private af:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveAnimator;

.field private ag:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;

.field private ah:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;

.field private ai:Z

.field private aj:F

.field private ak:Z

.field private al:Z

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

.field private r:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragListener;

.field private s:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;

.field private t:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3eaaaaab

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 451
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    .line 80
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c:Landroid/graphics/Point;

    .line 90
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e:Z

    .line 101
    iput v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->g:F

    .line 102
    iput v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->h:F

    .line 127
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->l:Z

    .line 183
    iput-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->u:Z

    .line 194
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    .line 201
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->w:I

    .line 217
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->z:I

    .line 223
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->A:[Landroid/view/View;

    .line 235
    iput v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->C:F

    .line 242
    iput v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->D:F

    .line 266
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->K:F

    .line 274
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$1;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->L:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;

    .line 338
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->R:I

    .line 344
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->S:Z

    .line 349
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->T:Z

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->U:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;

    .line 374
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->W:I

    .line 381
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->Z:F

    .line 390
    iput v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->aa:F

    .line 413
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ac:Z

    .line 420
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ad:Z

    .line 434
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$HeightCache;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$HeightCache;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ae:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$HeightCache;

    .line 443
    iput v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->aj:F

    .line 1689
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ak:Z

    .line 2171
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->al:Z

    .line 452
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3eaaaaab

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 446
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    .line 80
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c:Landroid/graphics/Point;

    .line 90
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e:Z

    .line 101
    iput v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->g:F

    .line 102
    iput v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->h:F

    .line 127
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->l:Z

    .line 183
    iput-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->u:Z

    .line 194
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    .line 201
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->w:I

    .line 217
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->z:I

    .line 223
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->A:[Landroid/view/View;

    .line 235
    iput v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->C:F

    .line 242
    iput v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->D:F

    .line 266
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->K:F

    .line 274
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$1;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->L:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;

    .line 338
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->R:I

    .line 344
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->S:Z

    .line 349
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->T:Z

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->U:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;

    .line 374
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->W:I

    .line 381
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->Z:F

    .line 390
    iput v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->aa:F

    .line 413
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ac:Z

    .line 420
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ad:Z

    .line 434
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$HeightCache;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$HeightCache;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ae:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$HeightCache;

    .line 443
    iput v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->aj:F

    .line 1689
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ak:Z

    .line 2171
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->al:Z

    .line 447
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->init()V

    .line 448
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)F
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->K:F

    return v0
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 831
    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 837
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(II)I
    .locals 6

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 912
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFooterViewsCount()I

    move-result v1

    .line 918
    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, p2

    .line 965
    :goto_0
    return v0

    .line 922
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 926
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x:I

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->w:I

    sub-int/2addr v1, v2

    .line 927
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c(I)I

    move-result v2

    .line 928
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(I)I

    move-result v3

    .line 933
    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-gt v4, v5, :cond_5

    .line 936
    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    if-ne p1, v4, :cond_4

    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    if-eq v4, v5, :cond_4

    .line 937
    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-ne p1, v4, :cond_3

    .line 938
    add-int v1, p2, v3

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x:I

    sub-int p2, v1, v3

    .line 959
    :cond_2
    :goto_1
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-gt p1, v1, :cond_7

    .line 960
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x:I

    sub-int v0, v1, v0

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0

    .line 940
    :cond_3
    sub-int/2addr v3, v2

    .line 941
    add-int/2addr v3, p2

    sub-int p2, v3, v1

    goto :goto_1

    .line 943
    :cond_4
    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    if-le p1, v3, :cond_2

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-gt p1, v3, :cond_2

    .line 944
    sub-int/2addr p2, v1

    goto :goto_1

    .line 950
    :cond_5
    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-le p1, v4, :cond_6

    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    if-gt p1, v4, :cond_6

    .line 951
    add-int/2addr p2, v1

    goto :goto_1

    .line 952
    :cond_6
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    if-eq v1, v4, :cond_2

    .line 953
    sub-int v1, v3, v2

    .line 954
    add-int/2addr p2, v1

    goto :goto_1

    .line 962
    :cond_7
    sub-int v0, v2, v0

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0
.end method

.method private static a(III)I
    .locals 2

    .prologue
    .line 2742
    sub-int v1, p2, p1

    .line 2744
    add-int/lit8 v0, p0, -0x1

    .line 2745
    if-ge v0, p1, :cond_1

    .line 2746
    add-int/2addr v0, v1

    .line 2750
    :cond_0
    :goto_0
    return v0

    .line 2747
    :cond_1
    if-lt v0, p2, :cond_0

    .line 2748
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x0

    .line 2694
    .line 2696
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    move v2, v5

    :goto_0
    sub-int v3, v1, v2

    if-gtz v3, :cond_3

    :goto_1
    if-ge v2, v4, :cond_0

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-ge v1, p2, :cond_0

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    if-eq v2, v4, :cond_1

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-lt v1, p2, :cond_2

    :cond_1
    move v2, v0

    .line 2697
    :cond_2
    if-ne v2, v0, :cond_6

    .line 2738
    :goto_2
    return v5

    .line 2696
    :cond_3
    add-int v3, v2, v1

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    if-ge v6, p1, :cond_4

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2700
    :cond_6
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 2702
    add-int/lit8 v0, v1, 0x1

    move v4, v5

    .line 2703
    :goto_3
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    invoke-virtual {p0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_a

    .line 2717
    :cond_7
    if-ne v0, p2, :cond_8

    move v0, p1

    .line 2724
    :cond_8
    aput v1, p3, v4

    .line 2725
    aput v0, p4, v4

    .line 2726
    add-int/lit8 v0, v4, 0x1

    .line 2728
    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    .line 2729
    aget v1, p3, v5

    if-ne v1, p1, :cond_9

    add-int/lit8 v1, v0, -0x1

    aget v1, p4, v1

    if-ne v1, p1, :cond_9

    .line 2734
    add-int/lit8 v1, v0, -0x1

    aget v1, p3, v1

    aput v1, p3, v5

    .line 2735
    add-int/lit8 v0, v0, -0x1

    :cond_9
    move v5, v0

    .line 2738
    goto :goto_2

    .line 2704
    :cond_a
    invoke-virtual {p0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2705
    if-ne v2, v0, :cond_b

    .line 2707
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_3

    .line 2709
    :cond_b
    aput v1, p3, v4

    .line 2710
    aput v0, p4, v4

    .line 2711
    add-int/lit8 v1, v4, 0x1

    .line 2713
    add-int/lit8 v0, v2, 0x1

    move v4, v1

    move v1, v2

    move v2, v3

    goto :goto_3

    :cond_c
    move v2, v3

    goto :goto_3
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1483
    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    .line 1484
    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    .line 1485
    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    .line 1486
    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i:I

    .line 1487
    return-void
.end method

.method private a(ILandroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 732
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 735
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    .line 736
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 738
    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingLeft()I

    move-result v4

    .line 740
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    .line 744
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 746
    iget v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-le p1, v6, :cond_1

    .line 747
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v1, v0

    .line 748
    add-int v0, v1, v3

    .line 756
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 757
    invoke-virtual {p2, v4, v1, v5, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 758
    invoke-virtual {v2, v4, v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 759
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 760
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 763
    :cond_0
    return-void

    .line 750
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    sub-int/2addr v0, v1

    .line 751
    sub-int v1, v0, v3

    goto :goto_0
.end method

.method private a(ILandroid/view/View;Z)V
    .locals 3

    .prologue
    .line 1881
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1883
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    if-eq p1, v0, :cond_5

    .line 1884
    const/4 v0, -0x2

    .line 1889
    :goto_0
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_0

    .line 1890
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1891
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1895
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    if-ne p1, v0, :cond_2

    .line 1896
    :cond_1
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-ge p1, v0, :cond_6

    move-object v0, p2

    .line 1897
    check-cast v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;->setGravity(I)V

    .line 1905
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 1906
    const/4 v0, 0x0

    .line 1908
    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1909
    const/4 v0, 0x4

    .line 1912
    :cond_3
    if-eq v0, v1, :cond_4

    .line 1913
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1915
    :cond_4
    return-void

    .line 1886
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b(II)I

    move-result v0

    goto :goto_0

    .line 1898
    :cond_6
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-le p1, v0, :cond_2

    move-object v0, p2

    .line 1899
    check-cast v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 1670
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1671
    if-eqz v0, :cond_0

    .line 1672
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->M:I

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->O:I

    .line 1673
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->N:I

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->P:I

    .line 1675
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->M:I

    .line 1676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->N:I

    .line 1677
    if-nez v0, :cond_1

    .line 1678
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->M:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->O:I

    .line 1679
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->N:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->P:I

    .line 1681
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->M:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->p:I

    .line 1682
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->N:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->q:I

    .line 1683
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2092
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2093
    if-nez v0, :cond_0

    .line 2094
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2095
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2097
    :cond_0
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->z:I

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getListPaddingLeft()I

    move-result v2

    .line 2098
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2097
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2100
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    .line 2101
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2105
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2106
    return-void

    .line 2103
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;F)V
    .locals 0

    .prologue
    .line 443
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->aj:F

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->o:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 1878
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;Z)V
    .locals 0

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ac:Z

    return-void
.end method

.method private b(II)I
    .locals 4

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getDividerHeight()I

    .line 2006
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->l:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 2007
    :goto_0
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x:I

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->w:I

    sub-int/2addr v1, v2

    .line 2008
    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->aa:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 2012
    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-ne p1, v3, :cond_5

    .line 2013
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    if-ne v1, v3, :cond_3

    .line 2014
    if-eqz v0, :cond_2

    .line 2015
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->w:I

    add-int p2, v2, v0

    .line 2038
    :cond_0
    :goto_1
    return p2

    .line 2006
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2017
    :cond_2
    iget p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x:I

    goto :goto_1

    .line 2019
    :cond_3
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    if-ne v0, v1, :cond_4

    .line 2021
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x:I

    sub-int p2, v0, v2

    goto :goto_1

    .line 2023
    :cond_4
    iget p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->w:I

    goto :goto_1

    .line 2025
    :cond_5
    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    if-ne p1, v3, :cond_7

    .line 2026
    if-eqz v0, :cond_6

    .line 2027
    add-int/2addr p2, v2

    goto :goto_1

    .line 2029
    :cond_6
    add-int/2addr p2, v1

    goto :goto_1

    .line 2031
    :cond_7
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    if-ne p1, v0, :cond_0

    .line 2033
    add-int v0, p2, v1

    sub-int p2, v0, v2

    goto :goto_1
.end method

.method private b(ILandroid/view/View;Z)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1969
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-ne p1, v1, :cond_1

    .line 1995
    :cond_0
    :goto_0
    return v0

    .line 1974
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_3

    .line 1980
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1982
    if-eqz v0, :cond_4

    .line 1983
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_4

    .line 1984
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1977
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 1988
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1990
    if-eqz v0, :cond_5

    if-eqz p3, :cond_0

    .line 1991
    :cond_5
    invoke-direct {p0, p2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(Landroid/view/View;)V

    .line 1992
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->o:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;ILandroid/view/View;)I
    .locals 1

    .prologue
    .line 1968
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 1492
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    .line 1494
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->s:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i:I

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1495
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1496
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->s:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i:I

    sub-int v0, v3, v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;->drop(II)V

    .line 1499
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i()V

    .line 1501
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c()V

    .line 1502
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a()V

    .line 1503
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->f()V

    .line 1506
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    .line 1507
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    .line 1511
    :goto_0
    return-void

    .line 1509
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 1523
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    .line 1526
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->t:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->t:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;->remove(I)V

    .line 1530
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i()V

    .line 1532
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c()V

    .line 1533
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a()V

    .line 1536
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    .line 1537
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    .line 1541
    :goto_0
    return-void

    .line 1539
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;I)V
    .locals 0

    .prologue
    .line 194
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    return-void
.end method

.method private c(I)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1918
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-ne p1, v1, :cond_1

    .line 1964
    :cond_0
    :goto_0
    return v0

    .line 1922
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1924
    if-eqz v1, :cond_2

    .line 1927
    invoke-direct {p0, p1, v1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    goto :goto_0

    .line 1931
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ae:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$HeightCache;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$HeightCache;->a(I)I

    move-result v0

    .line 1932
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1937
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1938
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 1941
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 1942
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->A:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 1943
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->A:[Landroid/view/View;

    .line 1946
    :cond_3
    if-ltz v1, :cond_5

    .line 1947
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->A:[Landroid/view/View;

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 1948
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1949
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->A:[Landroid/view/View;

    aput-object v0, v2, v1

    .line 1959
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    .line 1962
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ae:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$HeightCache;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$HeightCache;->a(II)V

    goto :goto_0

    .line 1951
    :cond_4
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->A:[Landroid/view/View;

    aget-object v1, v2, v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1955
    :cond_5
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->y:I

    return v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1544
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1546
    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-ge v2, v1, :cond_1

    .line 1549
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1551
    if-eqz v2, :cond_0

    .line 1552
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1555
    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setSelectionFromTop(II)V

    .line 1557
    :cond_1
    return-void
.end method

.method private c(ILandroid/view/View;Z)V
    .locals 17

    .prologue
    .line 2312
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ac:Z

    .line 2314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->U:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->M:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->N:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->U:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c:Landroid/graphics/Point;

    invoke-interface {v2, v3, v4, v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingLeft()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_10

    if-le v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    iput v3, v2, Landroid/graphics/Point;->x:I

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFooterViewsCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingTop()I

    move-result v2

    if-ge v6, v3, :cond_2

    sub-int v2, v3, v6

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->R:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-gt v6, v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getCount()I

    move-result v8

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getCount()I

    move-result v3

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-lt v7, v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_5
    if-ge v4, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->y:I

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->y:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d:I

    .line 2316
    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    .line 2317
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    .line 2319
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    sub-int v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v3, v4, v2

    sub-int v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getDividerHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d:I

    if-ge v6, v4, :cond_14

    move v2, v3

    move v3, v4

    :goto_2
    if-gez v2, :cond_12

    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFooterViewsCount()I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->aa:F

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->l:Z

    if-eqz v13, :cond_18

    sub-int v13, v4, v3

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d:I

    if-ge v14, v4, :cond_16

    :goto_4
    const/high16 v14, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->Z:F

    mul-float/2addr v14, v15

    int-to-float v13, v13

    mul-float/2addr v13, v14

    float-to-int v13, v13

    int-to-float v14, v13

    add-int/2addr v3, v13

    sub-int v13, v4, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d:I

    if-ge v15, v3, :cond_17

    add-int/lit8 v4, v2, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d:I

    sub-int/2addr v3, v13

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v3, v14

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->aa:F

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    if-ge v3, v5, :cond_19

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    move v2, v5

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    if-ne v3, v8, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    if-ne v3, v11, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->aa:F

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_22

    :cond_a
    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i:I

    if-eq v2, v4, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->r:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragListener;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->r:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i:I

    sub-int/2addr v4, v5

    sub-int v5, v2, v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragListener;->drag(II)V

    :cond_b
    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i:I

    const/4 v3, 0x1

    move v8, v3

    .line 2321
    :goto_8
    if-eqz v8, :cond_d

    .line 2322
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->f()V

    .line 2323
    const/4 v6, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c(I)I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_20

    sub-int v2, v3, v4

    sub-int v4, v5, v4

    :goto_9
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->w:I

    sub-int/2addr v7, v11

    :cond_c
    move/from16 v0, p1

    if-gt v0, v9, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    move/from16 v0, p1

    if-le v0, v2, :cond_1f

    sub-int v2, v7, v4

    add-int/lit8 v2, v2, 0x0

    .line 2326
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setSelectionFromTop(II)V

    .line 2327
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->layoutChildren()V

    .line 2330
    :cond_d
    if-nez v8, :cond_e

    if-eqz p3, :cond_f

    .line 2331
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->invalidate()V

    .line 2334
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ac:Z

    .line 2335
    return-void

    .line 2314
    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    if-ge v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    iput v3, v2, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x:I

    add-int/2addr v2, v4

    if-le v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 2319
    :cond_12
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(I)I

    move-result v4

    if-nez v2, :cond_13

    sub-int/2addr v5, v7

    sub-int v4, v5, v4

    goto/16 :goto_3

    :cond_13
    add-int/2addr v4, v7

    sub-int/2addr v5, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d:I

    if-ge v6, v4, :cond_8

    move v3, v4

    goto/16 :goto_2

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getCount()I

    move-result v8

    move v6, v5

    move v5, v2

    move v2, v3

    move v3, v4

    :goto_b
    if-ge v2, v8, :cond_8

    add-int/lit8 v4, v8, -0x1

    if-ne v2, v4, :cond_15

    add-int v4, v6, v7

    add-int/2addr v4, v5

    goto/16 :goto_3

    :cond_15
    add-int v4, v7, v5

    add-int/2addr v6, v4

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(I)I

    move-result v5

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d:I

    if-lt v11, v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_b

    :cond_16
    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d:I

    if-lt v3, v13, :cond_18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d:I

    sub-int/2addr v4, v15

    int-to-float v4, v4

    div-float/2addr v4, v14

    add-float/2addr v4, v13

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->aa:F

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v7

    if-lt v3, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    goto/16 :goto_6

    .line 2323
    :cond_1a
    move/from16 v0, p1

    if-ne v0, v10, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    move/from16 v0, p1

    if-gt v0, v4, :cond_1b

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_a

    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1c

    sub-int v2, v3, v5

    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_a

    :cond_1c
    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    move/from16 v0, p1

    if-gt v0, v2, :cond_1e

    rsub-int/lit8 v2, v7, 0x0

    goto/16 :goto_a

    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_1f

    rsub-int/lit8 v2, v4, 0x0

    goto/16 :goto_a

    :cond_1f
    move v2, v6

    goto/16 :goto_a

    :cond_20
    move v2, v3

    move v4, v5

    goto/16 :goto_9

    :cond_21
    move v8, v3

    goto/16 :goto_8

    :cond_22
    move v3, v6

    goto/16 :goto_7
.end method

.method static synthetic c(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 2311
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic d(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1659
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->W:I

    .line 1660
    iput-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->T:Z

    .line 1661
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1662
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    .line 1664
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->g:F

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->h:F

    .line 1665
    iput-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ak:Z

    .line 1666
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ae:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$HeightCache;->a()V

    .line 1667
    return-void
.end method

.method static synthetic e(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 1831
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 1832
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1833
    int-to-float v2, v1

    .line 1835
    int-to-float v3, v0

    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->C:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->H:F

    .line 1836
    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->D:F

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->G:F

    .line 1838
    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->H:F

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->E:I

    .line 1839
    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->G:F

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->F:I

    .line 1841
    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->H:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->I:F

    .line 1842
    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->G:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->J:F

    .line 1843
    return-void
.end method

.method static synthetic f(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->N:I

    return v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1852
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1853
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    .line 1855
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1856
    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1858
    :goto_0
    if-le v0, v2, :cond_0

    .line 1864
    return-void

    .line 1859
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1860
    if-eqz v3, :cond_1

    .line 1861
    add-int v4, v1, v0

    invoke-direct {p0, v4, v3, v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(ILandroid/view/View;Z)V

    .line 1858
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(Landroid/view/View;)V

    .line 2111
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x:I

    .line 2112
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->y:I

    .line 2114
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V
    .locals 0

    .prologue
    .line 2300
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->h()V

    return-void
.end method

.method static synthetic h(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i:I

    return v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 2301
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2302
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2304
    if-nez v1, :cond_0

    .line 2309
    :goto_0
    return-void

    .line 2308
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->c(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    return v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2404
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2405
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->U:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2406
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->U:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2408
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    .line 2409
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->invalidate()V

    .line 2411
    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->w:I

    return v0
.end method

.method static synthetic k(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->x:I

    return v0
.end method

.method static synthetic l(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V
    .locals 0

    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b()V

    return-void
.end method

.method static synthetic m(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    return v0
.end method

.method static synthetic n(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    return v0
.end method

.method static synthetic o(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ai:Z

    return v0
.end method

.method static synthetic p(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)F
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->aj:F

    return v0
.end method

.method static synthetic q(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V
    .locals 0

    .prologue
    .line 2402
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i()V

    return-void
.end method

.method static synthetic r(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V
    .locals 2

    .prologue
    .line 1513
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b(I)V

    return-void
.end method

.method static synthetic s(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d:I

    return v0
.end method

.method static synthetic t(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->L:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic u(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)F
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->H:F

    return v0
.end method

.method static synthetic v(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)F
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->I:F

    return v0
.end method

.method static synthetic w(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->G:F

    return v0
.end method

.method static synthetic x(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)F
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->J:F

    return v0
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1468
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->B:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->c()V

    .line 1470
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i()V

    .line 1471
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a()V

    .line 1472
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->f()V

    .line 1474
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    .line 1475
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/16 v6, 0x1f

    const/4 v4, 0x0

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v1, 0x0

    .line 767
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 769
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    if-eqz v0, :cond_1

    .line 771
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-eq v0, v2, :cond_0

    .line 772
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 774
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    if-eq v0, v2, :cond_1

    .line 775
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 781
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 782
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 784
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 786
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getWidth()I

    move-result v2

    .line 787
    if-gez v0, :cond_2

    .line 788
    neg-int v0, v0

    .line 790
    :cond_2
    if-ge v0, v2, :cond_4

    .line 791
    sub-int v0, v2, v0

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 792
    mul-float/2addr v0, v0

    .line 797
    :goto_0
    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->h:F

    mul-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v5, v0

    .line 799
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 801
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 802
    invoke-virtual {p1, v4, v4, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 805
    int-to-float v3, v7

    int-to-float v4, v8

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 808
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, v7

    int-to-float v3, v8

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 811
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 812
    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 813
    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 816
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 818
    invoke-virtual {p1, v0, v1, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 822
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 823
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 824
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 826
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 794
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->h:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ab:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    .line 607
    const/4 v0, 0x0

    .line 609
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ab:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public init()V
    .locals 14

    .prologue
    .line 456
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->w:I

    .line 467
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->g:F

    .line 468
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->g:F

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->h:F

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->u:Z

    .line 472
    const/4 v0, 0x0

    .line 473
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 472
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->Z:F

    .line 475
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->Z:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->l:Z

    .line 477
    const v0, 0x3ea8f5c3    # 0.33f

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setDragScrollStart(F)V

    .line 481
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->K:F

    .line 484
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "drag_handle"

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 492
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;

    .line 497
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 498
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 496
    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;IIIII)V

    .line 499
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->setRemoveEnabled(Z)V

    .line 500
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->setSortEnabled(Z)V

    .line 501
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortController;->setBackgroundColor(I)V

    .line 503
    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->U:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;

    .line 504
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 508
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->B:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;

    .line 510
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveAnimator;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveAnimator;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->af:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveAnimator;

    .line 515
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ah:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;

    .line 519
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 520
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 519
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->V:Landroid/view/MotionEvent;

    .line 523
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$2;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->f:Landroid/database/DataSetObserver;

    .line 541
    return-void

    .line 475
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 2489
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->u:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2131
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2133
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2134
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e:Z

    if-nez v0, :cond_0

    .line 2138
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->g()V

    .line 2140
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2141
    iput-boolean v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e:Z

    .line 2143
    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    .line 1686
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ak:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2626
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 2629
    if-ge p2, p1, :cond_3

    move v0, p1

    move v1, p2

    .line 2633
    :goto_0
    add-int/lit8 v4, v0, 0x1

    .line 2635
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v5, v0, [I

    .line 2636
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v6, v0, [I

    .line 2637
    invoke-static {v3, v1, v4, v5, v6}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v3

    .line 2638
    if-ne v3, v8, :cond_1

    aget v0, v5, v2

    aget v7, v6, v2

    if-ne v0, v7, :cond_1

    .line 2656
    :cond_0
    return-void

    .line 2644
    :cond_1
    if-ge p1, p2, :cond_2

    move v0, v2

    .line 2645
    :goto_1
    if-eq v0, v3, :cond_0

    .line 2646
    aget v7, v5, v0

    invoke-static {v7, v1, v4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(III)I

    move-result v7

    invoke-virtual {p0, v7, v8}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setItemChecked(IZ)V

    .line 2647
    aget v7, v6, v0

    invoke-static {v7, v1, v4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(III)I

    move-result v7

    invoke-virtual {p0, v7, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setItemChecked(IZ)V

    .line 2645
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 2651
    :goto_2
    if-eq v0, v3, :cond_0

    .line 2652
    aget v1, v5, v0

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setItemChecked(IZ)V

    .line 2653
    aget v1, v6, v0

    invoke-virtual {p0, v1, v8}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setItemChecked(IZ)V

    .line 2651
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, p2

    move v1, p1

    goto :goto_0
.end method

.method public moveItem(II)V
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->s:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    .line 1456
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1457
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->s:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;->drop(II)V

    .line 1461
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 1119
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1124
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1693
    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->u:Z

    if-nez v1, :cond_1

    .line 1694
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1741
    :cond_0
    :goto_0
    return v0

    .line 1697
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(Landroid/view/MotionEvent;)V

    .line 1698
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->S:Z

    .line 1700
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v3, v1, 0xff

    .line 1702
    if-nez v3, :cond_3

    .line 1703
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    if-eqz v1, :cond_2

    .line 1705
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ad:Z

    goto :goto_0

    .line 1708
    :cond_2
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->T:Z

    .line 1714
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    if-nez v1, :cond_4

    .line 1716
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1719
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ak:Z

    move v1, v0

    .line 1723
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 1729
    :pswitch_0
    if-eqz v1, :cond_6

    .line 1730
    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->W:I

    .line 1737
    :cond_4
    :goto_2
    if-eq v3, v0, :cond_5

    const/4 v1, 0x3

    if-ne v3, v1, :cond_0

    .line 1738
    :cond_5
    iput-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->T:Z

    goto :goto_0

    .line 1726
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d()V

    goto :goto_2

    .line 1732
    :cond_6
    const/4 v1, 0x2

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->W:I

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_1

    .line 1723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 2118
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2120
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2121
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2122
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->g()V

    .line 2124
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e:Z

    .line 2126
    :cond_1
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->z:I

    .line 2127
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 1847
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1848
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e()V

    .line 1849
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1608
    iget-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ad:Z

    if-eqz v2, :cond_1

    .line 1609
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ad:Z

    .line 1655
    :cond_0
    :goto_0
    return v0

    .line 1613
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->u:Z

    if-nez v2, :cond_2

    .line 1614
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1619
    :cond_2
    iget-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->S:Z

    .line 1620
    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->S:Z

    .line 1622
    if-nez v2, :cond_3

    .line 1623
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(Landroid/view/MotionEvent;)V

    .line 1627
    :cond_3
    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    if-ne v2, v3, :cond_b

    .line 1628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_4
    :goto_1
    move v0, v1

    .line 1629
    goto :goto_0

    .line 1628
    :pswitch_0
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->cancelDrag()V

    :cond_5
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d()V

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    if-ne v2, v3, :cond_6

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->stopDrag(Z)Z

    :cond_6
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->n:I

    sub-int/2addr v2, v5

    iput v2, v4, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->o:I

    sub-int v4, v3, v4

    iput v4, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->h()V

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d:I

    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->y:I

    add-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d:I

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->y:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->B:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;

    invoke-virtual {v4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->b()I

    move-result v4

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->P:I

    if-le v2, v5, :cond_8

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->F:I

    if-le v2, v5, :cond_8

    if-eq v4, v1, :cond_8

    if-eq v4, v6, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->B:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->c()V

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->B:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a(I)V

    goto :goto_1

    :cond_8
    iget v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->P:I

    if-ge v3, v5, :cond_a

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->E:I

    if-ge v3, v5, :cond_a

    if-eqz v4, :cond_a

    if-eq v4, v6, :cond_9

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->B:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->c()V

    :cond_9
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->B:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a(I)V

    goto :goto_1

    :cond_a
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->E:I

    if-lt v3, v0, :cond_4

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->F:I

    if-gt v2, v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->B:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->B:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->c()V

    goto/16 :goto_1

    .line 1635
    :cond_b
    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    if-nez v2, :cond_c

    .line 1636
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    .line 1641
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1643
    packed-switch v2, :pswitch_data_1

    .line 1649
    :pswitch_3
    if-eqz v0, :cond_0

    .line 1650
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->W:I

    goto/16 :goto_0

    .line 1646
    :pswitch_4
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->d()V

    goto/16 :goto_0

    .line 1628
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 1643
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2672
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2674
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2690
    :cond_0
    return-void

    .line 2676
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 2677
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 2678
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 2680
    invoke-static {v0, p1, v4, v2, v3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v5

    move v0, v1

    .line 2681
    :goto_0
    if-eq v0, v5, :cond_0

    .line 2682
    aget v6, v2, v0

    if-eq v6, p1, :cond_3

    aget v6, v3, v0

    aget v7, v2, v0

    if-ge v6, v7, :cond_2

    aget v6, v3, v0

    if-gt v6, p1, :cond_3

    .line 2686
    :cond_2
    aget v6, v2, v0

    invoke-static {v6, p1, v4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(III)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setItemChecked(IZ)V

    .line 2688
    :cond_3
    aget v6, v3, v0

    invoke-static {v6, p1, v4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a(III)I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setItemChecked(IZ)V

    .line 2681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1

    .prologue
    .line 1397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ai:Z

    .line 1398
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->removeItem(IF)V

    .line 1399
    return-void
.end method

.method public removeItem(IF)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1409
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    if-ne v0, v2, :cond_3

    .line 1411
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    if-nez v0, :cond_1

    .line 1413
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    .line 1414
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    .line 1415
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    .line 1416
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i:I

    .line 1417
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1418
    if-eqz v0, :cond_1

    .line 1419
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1423
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    .line 1424
    iput p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->aj:F

    .line 1426
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->T:Z

    if-eqz v0, :cond_2

    .line 1427
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->W:I

    packed-switch v0, :pswitch_data_0

    .line 1437
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->af:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveAnimator;

    if-eqz v0, :cond_4

    .line 1438
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->af:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveAnimator;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveAnimator;->c()V

    .line 1443
    :cond_3
    :goto_1
    return-void

    .line 1429
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1432
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1440
    :cond_4
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b(I)V

    goto :goto_1

    .line 1427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2043
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ac:Z

    if-nez v0, :cond_0

    .line 2044
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 2046
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 578
    if-eqz p1, :cond_3

    .line 579
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;-><init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ab:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;

    .line 580
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->f:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 582
    instance-of v0, p1, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 583
    check-cast v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setDropListener(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;)V

    .line 585
    :cond_0
    instance-of v0, p1, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 586
    check-cast v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setDragListener(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragListener;)V

    .line 588
    :cond_1
    instance-of v0, p1, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    .line 589
    check-cast p1, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setRemoveListener(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;)V

    .line 595
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ab:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 596
    return-void

    .line 592
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ab:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$AdapterWrapper;

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .prologue
    .line 2485
    iput-boolean p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->u:Z

    .line 2486
    return-void
.end method

.method public setDragListener(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragListener;)V
    .locals 0

    .prologue
    .line 2471
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->r:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragListener;

    .line 2472
    return-void
.end method

.method public setDragScrollProfile(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;)V
    .locals 0

    .prologue
    .line 2568
    if-eqz p1, :cond_0

    .line 2569
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->L:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;

    .line 2571
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0

    .prologue
    .line 1753
    invoke-virtual {p0, p1, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setDragScrollStarts(FF)V

    .line 1754
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1767
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1768
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->D:F

    .line 1773
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1774
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->C:F

    .line 1779
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1780
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->e()V

    .line 1782
    :cond_0
    return-void

    .line 1770
    :cond_1
    iput p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->D:F

    goto :goto_0

    .line 1776
    :cond_2
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->C:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragSortListener;)V
    .locals 0

    .prologue
    .line 2555
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setDropListener(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;)V

    .line 2556
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setDragListener(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragListener;)V

    .line 2557
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setRemoveListener(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;)V

    .line 2558
    return-void
.end method

.method public setDropListener(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;)V
    .locals 0

    .prologue
    .line 2505
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->s:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;

    .line 2506
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    .prologue
    .line 549
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->h:F

    .line 550
    return-void
.end method

.method public setFloatViewManager(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;)V
    .locals 0

    .prologue
    .line 2467
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->U:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;

    .line 2468
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    .prologue
    .line 563
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->K:F

    .line 564
    return-void
.end method

.method public setRemoveListener(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;)V
    .locals 0

    .prologue
    .line 2519
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->t:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;

    .line 2520
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2201
    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->T:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->U:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 2210
    :cond_0
    :goto_0
    return v0

    .line 2205
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->U:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2207
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2210
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2238
    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->T:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 2239
    iget-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->u:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 2297
    :cond_1
    :goto_0
    return v0

    .line 2243
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2244
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2247
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    .line 2248
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->j:I

    .line 2249
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->k:I

    .line 2250
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    .line 2251
    iput v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->i:I

    .line 2254
    iput v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->v:I

    .line 2255
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->R:I

    .line 2256
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->R:I

    or-int/2addr v1, p3

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->R:I

    .line 2258
    iput-object p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    .line 2259
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->g()V

    .line 2261
    iput p4, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->n:I

    .line 2262
    iput p5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->o:I

    .line 2263
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->N:I

    iput v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->Q:I

    .line 2266
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->M:I

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->n:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 2267
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->N:I

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->o:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 2270
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2272
    if-eqz v1, :cond_4

    .line 2273
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2282
    :cond_4
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->W:I

    packed-switch v1, :pswitch_data_0

    .line 2291
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->requestLayout()V

    .line 2293
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ag:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;

    if-eqz v1, :cond_1

    .line 2294
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ag:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$LiftAnimator;->c()V

    goto :goto_0

    .line 2284
    :pswitch_0
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2287
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1

    .prologue
    .line 1571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ai:Z

    .line 1572
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 2

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1583
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->B:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScroller;->c()V

    .line 1585
    if-eqz p1, :cond_0

    .line 1586
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->removeItem(IF)V

    .line 1599
    :goto_0
    const/4 v0, 0x1

    .line 1602
    :goto_1
    return v0

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ah:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;

    if-eqz v0, :cond_1

    .line 1589
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ah:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropAnimator;->c()V

    goto :goto_0

    .line 1591
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->b()V

    goto :goto_0

    .line 1602
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1

    .prologue
    .line 1577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->ai:Z

    .line 1578
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
