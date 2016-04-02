.class public Lcom/mobeta/android/dslv/DragSortListView;
.super Landroid/widget/ListView;


# instance fields
.field private A:[Landroid/view/View;

.field private B:Lcom/mobeta/android/dslv/k;

.field private C:F

.field private D:F

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:Lcom/mobeta/android/dslv/j;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Lcom/mobeta/android/dslv/p;

.field private V:Landroid/view/MotionEvent;

.field private W:I

.field private Z:F

.field private a:Landroid/view/View;

.field private aa:F

.field private ab:Lcom/mobeta/android/dslv/g;

.field private ac:Z

.field private ad:Lcom/mobeta/android/dslv/m;

.field private ae:Z

.field private af:Z

.field private ag:Lcom/mobeta/android/dslv/q;

.field private ah:Lcom/mobeta/android/dslv/s;

.field private ai:Lcom/mobeta/android/dslv/r;

.field private aj:Lcom/mobeta/android/dslv/n;

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

.field private r:Lcom/mobeta/android/dslv/i;

.field private s:Lcom/mobeta/android/dslv/o;

.field private t:Lcom/mobeta/android/dslv/t;

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 15

    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->c:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->e:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->h:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->u:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->w:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->z:I

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->A:[Landroid/view/View;

    const v1, 0x3eaaaaab

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->C:F

    const v1, 0x3eaaaaab

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->D:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->K:F

    new-instance v1, Lcom/mobeta/android/dslv/e;

    invoke-direct {v1, p0}, Lcom/mobeta/android/dslv/e;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->L:Lcom/mobeta/android/dslv/j;

    const/4 v1, 0x0

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->R:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->S:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->T:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->U:Lcom/mobeta/android/dslv/p;

    const/4 v1, 0x0

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->W:I

    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->Z:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->aa:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->ac:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->ae:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->af:Z

    new-instance v1, Lcom/mobeta/android/dslv/q;

    invoke-direct {v1, p0}, Lcom/mobeta/android/dslv/q;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->ag:Lcom/mobeta/android/dslv/q;

    const/4 v1, 0x0

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->al:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->am:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->an:Z

    const/16 v2, 0x96

    const/16 v1, 0x96

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mobeta/android/dslv/w;->DragSortListView:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->w:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->ac:Z

    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->ac:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/mobeta/android/dslv/m;

    invoke-direct {v1, p0}, Lcom/mobeta/android/dslv/m;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->ad:Lcom/mobeta/android/dslv/m;

    :cond_0
    const/4 v1, 0x6

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->g:F

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->g:F

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->g:F

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->h:F

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->u:Z

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->u:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->Z:F

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->Z:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->l:Z

    const/4 v1, 0x1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->C:F

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragScrollStart(F)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->K:F

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->K:F

    const/16 v1, 0x8

    const/16 v2, 0x96

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const/16 v1, 0x9

    const/16 v2, 0x96

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    new-instance v1, Lcom/mobeta/android/dslv/a;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mobeta/android/dslv/a;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V

    invoke-virtual {v1, v11}, Lcom/mobeta/android/dslv/a;->b(Z)V

    invoke-virtual {v1, v12}, Lcom/mobeta/android/dslv/a;->a(Z)V

    iput v13, v1, Lcom/mobeta/android/dslv/x;->a:I

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->U:Lcom/mobeta/android/dslv/p;

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    move v1, v8

    move v2, v9

    :cond_2
    new-instance v3, Lcom/mobeta/android/dslv/k;

    invoke-direct {v3, p0}, Lcom/mobeta/android/dslv/k;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->B:Lcom/mobeta/android/dslv/k;

    if-lez v2, :cond_3

    new-instance v3, Lcom/mobeta/android/dslv/s;

    invoke-direct {v3, p0, v2}, Lcom/mobeta/android/dslv/s;-><init>(Lcom/mobeta/android/dslv/DragSortListView;I)V

    iput-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->ah:Lcom/mobeta/android/dslv/s;

    :cond_3
    if-lez v1, :cond_4

    new-instance v2, Lcom/mobeta/android/dslv/n;

    invoke-direct {v2, p0, v1}, Lcom/mobeta/android/dslv/n;-><init>(Lcom/mobeta/android/dslv/DragSortListView;I)V

    iput-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->aj:Lcom/mobeta/android/dslv/n;

    :cond_4
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->V:Landroid/view/MotionEvent;

    new-instance v1, Lcom/mobeta/android/dslv/f;

    invoke-direct {v1, p0}, Lcom/mobeta/android/dslv/f;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->f:Landroid/database/DataSetObserver;

    return-void

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->K:F

    return v0
.end method

.method static synthetic a(Lcom/mobeta/android/dslv/DragSortListView;F)F
    .locals 0

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->al:F

    return p1
.end method

.method private a(II)I
    .locals 6

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, p2

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->w:I

    sub-int/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->c(I)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->b(I)I

    move-result v3

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-gt v4, v5, :cond_5

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    if-ne p1, v4, :cond_4

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-ne p1, v4, :cond_3

    add-int v1, p2, v3

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    sub-int p2, v1, v3

    :cond_2
    :goto_1
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-gt p1, v1, :cond_7

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    sub-int v0, v1, v0

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->c(I)I

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
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    if-le p1, v3, :cond_2

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-gt p1, v3, :cond_2

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-le p1, v4, :cond_6

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    if-gt p1, v4, :cond_6

    add-int/2addr p2, v1

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    if-eq v1, v4, :cond_2

    sub-int v1, v3, v2

    add-int/2addr p2, v1

    goto :goto_1

    :cond_7
    sub-int v0, v2, v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0
.end method

.method static synthetic a(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 0

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->o:I

    return p1
.end method

.method private a(IF)V
    .locals 3

    const/4 v2, 0x4

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    if-ne v0, v2, :cond_3

    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->i:I

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->al:F

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->T:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->W:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ah:Lcom/mobeta/android/dslv/s;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ah:Lcom/mobeta/android/dslv/s;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/s;->c()V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->f()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(ILandroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

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

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    if-eq p1, v0, :cond_5

    const/4 v0, -0x2

    :goto_0
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    if-ne p1, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-ge p1, v0, :cond_6

    move-object v0, p2

    check-cast v0, Lcom/mobeta/android/dslv/c;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/c;->setGravity(I)V

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v0, 0x0

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    :cond_3
    if-eq v0, v1, :cond_4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->b(II)I

    move-result v0

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-le p1, v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/mobeta/android/dslv/c;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/c;->setGravity(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->M:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->O:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->N:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->P:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->M:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->N:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->M:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->O:I

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->N:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->P:I

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->M:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->p:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->N:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->q:I

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
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->z:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getListPaddingRight()I

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

.method static synthetic a(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mobeta/android/dslv/DragSortListView;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/mobeta/android/dslv/DragSortListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->ae:Z

    return p1
.end method

.method private a(ZF)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->B:Lcom/mobeta/android/dslv/k;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/k;->c()V

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->a(IF)V

    :goto_0
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->ac:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->ad:Lcom/mobeta/android/dslv/m;

    iget-boolean v2, v1, Lcom/mobeta/android/dslv/m;->e:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v3, "</DSLVStates>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/m;->a()V

    iput-boolean v0, v1, Lcom/mobeta/android/dslv/m;->e:Z

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->aj:Lcom/mobeta/android/dslv/n;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->aj:Lcom/mobeta/android/dslv/n;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/n;->c()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->e()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/mobeta/android/dslv/DragSortListView;F)F
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->al:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->al:F

    return v0
.end method

.method private b(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->c(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(II)I
    .locals 4

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->l:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->w:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->aa:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-ne p1, v3, :cond_5

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    if-ne v1, v3, :cond_3

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->w:I

    add-int p2, v2, v0

    :cond_0
    :goto_1
    return p2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    sub-int p2, v0, v2

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->w:I

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    if-ne p1, v3, :cond_7

    if-eqz v0, :cond_6

    add-int/2addr p2, v2

    goto :goto_1

    :cond_6
    add-int/2addr p2, v1

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    if-ne p1, v0, :cond_0

    add-int v0, p2, v1

    sub-int p2, v0, v2

    goto :goto_1
.end method

.method private b(ILandroid/view/View;Z)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

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
    invoke-direct {p0, p2}, Lcom/mobeta/android/dslv/DragSortListView;->a(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    return v0
.end method

.method static synthetic b(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 0

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    return p1
.end method

.method static synthetic b(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mobeta/android/dslv/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method private c(I)I
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, -0x1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-ne p1, v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ag:Lcom/mobeta/android/dslv/q;

    iget-object v0, v0, Lcom/mobeta/android/dslv/q;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->A:[Landroid/view/View;

    array-length v4, v4

    if-eq v3, v4, :cond_3

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->A:[Landroid/view/View;

    :cond_3
    if-ltz v2, :cond_7

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->A:[Landroid/view/View;

    aget-object v3, v3, v2

    if-nez v3, :cond_6

    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->A:[Landroid/view/View;

    aput-object v0, v3, v2

    :goto_1
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v2

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->ag:Lcom/mobeta/android/dslv/q;

    iget-object v0, v3, Lcom/mobeta/android/dslv/q;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_5

    if-ne v0, v5, :cond_8

    iget-object v0, v3, Lcom/mobeta/android/dslv/q;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iget v4, v3, Lcom/mobeta/android/dslv/q;->c:I

    if-ne v0, v4, :cond_4

    iget-object v4, v3, Lcom/mobeta/android/dslv/q;->a:Landroid/util/SparseIntArray;

    iget-object v0, v3, Lcom/mobeta/android/dslv/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_4
    :goto_2
    iget-object v0, v3, Lcom/mobeta/android/dslv/q;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v3, Lcom/mobeta/android/dslv/q;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->A:[Landroid/view/View;

    aget-object v2, v3, v2

    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_8
    iget-object v0, v3, Lcom/mobeta/android/dslv/q;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static synthetic c(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->o:I

    return v0
.end method

.method private c(ILandroid/view/View;Z)V
    .locals 17

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->ae:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->U:Lcom/mobeta/android/dslv/p;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->c:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->M:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->N:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->U:Lcom/mobeta/android/dslv/p;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->c:Landroid/graphics/Point;

    invoke-interface {v2, v3}, Lcom/mobeta/android/dslv/p;->a(Landroid/graphics/Point;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_10

    if-le v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iput v3, v2, Landroid/graphics/Point;->x:I

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    if-ge v6, v3, :cond_2

    sub-int v2, v3, v6

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->R:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-gt v6, v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v8

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v3

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-lt v7, v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_5
    if-ge v4, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->y:I

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->y:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->d:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    sub-int v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v3, v4, v2

    sub-int v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/mobeta/android/dslv/DragSortListView;->a(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mobeta/android/dslv/DragSortListView;->d:I

    if-ge v6, v4, :cond_13

    move v2, v3

    move v3, v4

    :goto_2
    if-ltz v2, :cond_8

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->b(I)I

    move-result v4

    if-nez v2, :cond_12

    sub-int/2addr v5, v7

    sub-int v4, v5, v4

    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mobeta/android/dslv/DragSortListView;->aa:F

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/mobeta/android/dslv/DragSortListView;->l:Z

    if-eqz v13, :cond_17

    sub-int v13, v4, v3

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mobeta/android/dslv/DragSortListView;->d:I

    if-ge v14, v4, :cond_15

    :goto_4
    const/high16 v14, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/mobeta/android/dslv/DragSortListView;->Z:F

    mul-float/2addr v14, v15

    int-to-float v13, v13

    mul-float/2addr v13, v14

    float-to-int v13, v13

    int-to-float v14, v13

    add-int/2addr v3, v13

    sub-int v13, v4, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/mobeta/android/dslv/DragSortListView;->d:I

    if-ge v15, v3, :cond_16

    add-int/lit8 v4, v2, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mobeta/android/dslv/DragSortListView;->d:I

    sub-int/2addr v3, v13

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v3, v14

    move-object/from16 v0, p0

    iput v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->aa:F

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    if-ge v3, v5, :cond_18

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    move v2, v5

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    if-ne v3, v8, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    if-ne v3, v11, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->aa:F

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_21

    :cond_a
    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->i:I

    if-eq v2, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->r:Lcom/mobeta/android/dslv/i;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->r:Lcom/mobeta/android/dslv/i;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->i:I

    :cond_b
    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->i:I

    const/4 v3, 0x1

    move v8, v3

    :goto_8
    if-eqz v8, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->j()V

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/mobeta/android/dslv/DragSortListView;->c(I)I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/mobeta/android/dslv/DragSortListView;->b(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_1f

    sub-int v2, v3, v4

    sub-int v4, v5, v4

    :goto_9
    move-object/from16 v0, p0

    iget v7, v0, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->w:I

    sub-int/2addr v7, v11

    :cond_c
    move/from16 v0, p1

    if-gt v0, v9, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    move/from16 v0, p1

    if-le v0, v2, :cond_1e

    sub-int v2, v7, v4

    add-int/lit8 v2, v2, 0x0

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    :cond_d
    if-nez v8, :cond_e

    if-eqz p3, :cond_f

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->invalidate()V

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->ae:Z

    return-void

    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    if-ge v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iput v3, v2, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    add-int/2addr v2, v4

    if-le v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :cond_12
    add-int/2addr v4, v7

    sub-int/2addr v5, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/mobeta/android/dslv/DragSortListView;->a(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mobeta/android/dslv/DragSortListView;->d:I

    if-ge v6, v4, :cond_8

    move v3, v4

    goto/16 :goto_2

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

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

    invoke-direct {v0, v4}, Lcom/mobeta/android/dslv/DragSortListView;->b(I)I

    move-result v5

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/mobeta/android/dslv/DragSortListView;->a(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->d:I

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

    iget v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->d:I

    if-lt v3, v13, :cond_17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/mobeta/android/dslv/DragSortListView;->d:I

    sub-int/2addr v4, v15

    int-to-float v4, v4

    div-float/2addr v4, v14

    add-float/2addr v4, v13

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->aa:F

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v7

    if-lt v3, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    goto/16 :goto_6

    :cond_19
    move/from16 v0, p1

    if-ne v0, v10, :cond_1c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    move/from16 v0, p1

    if-gt v0, v4, :cond_1a

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

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

    iget v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    move/from16 v0, p1

    if-gt v0, v2, :cond_1d

    rsub-int/lit8 v2, v7, 0x0

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

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

.method static synthetic c(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mobeta/android/dslv/DragSortListView;->c(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic d(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->y:I

    return v0
.end method

.method private d()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->i:I

    return-void
.end method

.method static synthetic e(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->s:Lcom/mobeta/android/dslv/o;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->i:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->i:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->s:Lcom/mobeta/android/dslv/o;

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->i:I

    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->m()V

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->g()V

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->d()V

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->j()V

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    goto :goto_0
.end method

.method static synthetic f(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->N:I

    return v0
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->t:Lcom/mobeta/android/dslv/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->t:Lcom/mobeta/android/dslv/t;

    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->m()V

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->g()V

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->d()V

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    goto :goto_0
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->l()V

    return-void
.end method

.method static synthetic h(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->i:I

    return v0
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->W:I

    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->T:Z

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->g:F

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->h:F

    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->am:Z

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ag:Lcom/mobeta/android/dslv/q;

    iget-object v1, v0, Lcom/mobeta/android/dslv/q;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, v0, Lcom/mobeta/android/dslv/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic i(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    return v0
.end method

.method private i()V
    .locals 6

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    int-to-float v3, v0

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->C:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->H:F

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->D:F

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->G:F

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->H:F

    float-to-int v2, v2

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->E:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->G:F

    float-to-int v2, v2

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->F:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->H:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->I:F

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->G:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->J:F

    return-void
.end method

.method static synthetic j(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->w:I

    return v0
.end method

.method private j()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    if-gt v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    add-int v4, v1, v0

    invoke-direct {p0, v4, v3, v5}, Lcom/mobeta/android/dslv/DragSortListView;->a(ILandroid/view/View;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    return v0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->y:I

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->c(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->e()V

    return-void
.end method

.method static synthetic m(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    return v0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->U:Lcom/mobeta/android/dslv/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->U:Lcom/mobeta/android/dslv/p;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/mobeta/android/dslv/p;->a(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->invalidate()V

    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    return v0
.end method

.method static synthetic o(Lcom/mobeta/android/dslv/DragSortListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ak:Z

    return v0
.end method

.method static synthetic p(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->al:F

    return v0
.end method

.method static synthetic q(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->m()V

    return-void
.end method

.method static synthetic r(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->f()V

    return-void
.end method

.method static synthetic s(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->d:I

    return v0
.end method

.method static synthetic t(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->H:F

    return v0
.end method

.method static synthetic u(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->I:F

    return v0
.end method

.method static synthetic v(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/j;
    .locals 1

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->L:Lcom/mobeta/android/dslv/j;

    return-object v0
.end method

.method static synthetic w(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->G:F

    return v0
.end method

.method static synthetic x(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->J:F

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->B:Lcom/mobeta/android/dslv/k;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/k;->c()V

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->m()V

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->d()V

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->j()V

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ak:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->a(IF)V

    return-void
.end method

.method public final a(F)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ak:Z

    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->a(ZF)Z

    move-result v0

    return v0
.end method

.method public final a(IIII)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->T:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->U:Lcom/mobeta/android/dslv/p;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->U:Lcom/mobeta/android/dslv/p;

    invoke-interface {v2, p1}, Lcom/mobeta/android/dslv/p;->a(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->T:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->u:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, p1

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->i:I

    iput v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->R:I

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->R:I

    or-int/2addr v3, p2

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->R:I

    iput-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->k()V

    iput p3, p0, Lcom/mobeta/android/dslv/DragSortListView;->n:I

    iput p4, p0, Lcom/mobeta/android/dslv/DragSortListView;->o:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->N:I

    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->Q:I

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->M:I

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->n:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->N:I

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->o:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->ac:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->ad:Lcom/mobeta/android/dslv/m;

    iget-object v3, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v4, "<DSLVStates>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput v0, v2, Lcom/mobeta/android/dslv/m;->d:I

    iput-boolean v1, v2, Lcom/mobeta/android/dslv/m;->e:Z

    :cond_4
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->W:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->requestLayout()V

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ai:Lcom/mobeta/android/dslv/r;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ai:Lcom/mobeta/android/dslv/r;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/r;->c()V

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->am:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->u:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v3

    if-gez v0, :cond_2

    neg-int v0, v0

    :cond_2
    if-ge v0, v3, :cond_4

    sub-int v0, v3, v0

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float/2addr v0, v0

    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->h:F

    mul-float/2addr v3, v5

    mul-float/2addr v0, v3

    float-to-int v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v6, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v3, v2

    int-to-float v4, v4

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

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

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->h:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ab:Lcom/mobeta/android/dslv/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ab:Lcom/mobeta/android/dslv/g;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/g;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->e:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->k()V

    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->e:Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ac:Z

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->ad:Lcom/mobeta/android/dslv/m;

    iget-boolean v0, v2, Lcom/mobeta/android/dslv/m;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v3, "<DSLVState>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v3

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "    <Positions>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v5, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    add-int v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "</Positions>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "    <Tops>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v5, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v6, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "</Tops>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "    <Bottoms>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_2

    iget-object v5, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v6, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "</Bottoms>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "    <FirstExpPos>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget v5, v5, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</FirstExpPos>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "    <FirstExpBlankHeight>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v6, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget v6, v6, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    invoke-direct {v5, v6}, Lcom/mobeta/android/dslv/DragSortListView;->b(I)I

    move-result v5

    iget-object v6, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v7, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget v7, v7, Lcom/mobeta/android/dslv/DragSortListView;->j:I

    invoke-direct {v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->c(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</FirstExpBlankHeight>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "    <SecondExpPos>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget v5, v5, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</SecondExpPos>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "    <SecondExpBlankHeight>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v6, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget v6, v6, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    invoke-direct {v5, v6}, Lcom/mobeta/android/dslv/DragSortListView;->b(I)I

    move-result v5

    iget-object v6, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v7, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget v7, v7, Lcom/mobeta/android/dslv/DragSortListView;->k:I

    invoke-direct {v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->c(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</SecondExpBlankHeight>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "    <SrcPos>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget v5, v5, Lcom/mobeta/android/dslv/DragSortListView;->m:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</SrcPos>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "    <SrcHeight>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget v5, v5, Lcom/mobeta/android/dslv/DragSortListView;->x:I

    iget-object v6, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v6}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</SrcHeight>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "    <ViewHeight>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</ViewHeight>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "    <LastY>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget v5, v5, Lcom/mobeta/android/dslv/DragSortListView;->P:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</LastY>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "    <FloatY>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    iget v5, v5, Lcom/mobeta/android/dslv/DragSortListView;->d:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "</FloatY>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v5, "    <ShuffleEdges>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_3

    iget-object v5, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    add-int v7, v4, v0

    iget-object v8, v2, Lcom/mobeta/android/dslv/m;->f:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v8, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/mobeta/android/dslv/DragSortListView;->a(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v3, "</ShuffleEdges>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/mobeta/android/dslv/m;->a:Ljava/lang/StringBuilder;

    const-string v3, "</DSLVState>\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/mobeta/android/dslv/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/mobeta/android/dslv/m;->c:I

    iget v0, v2, Lcom/mobeta/android/dslv/m;->c:I

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_4

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/m;->a()V

    iput v1, v2, Lcom/mobeta/android/dslv/m;->c:I

    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->u:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->a(Landroid/view/MotionEvent;)V

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->S:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v3, v1, 0xff

    if-nez v3, :cond_2

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->af:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->T:Z

    :cond_2
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v1, :cond_5

    move v1, v0

    :goto_1
    if-eq v3, v0, :cond_3

    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    :cond_3
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->T:Z

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->am:Z

    move v1, v0

    :goto_2
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    if-eqz v1, :cond_6

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->W:I

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->h()V

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    iput v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->W:I

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

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->k()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->e:Z

    :cond_1
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->z:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->i()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->af:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->af:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->u:Z

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->S:Z

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->S:Z

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->a(Landroid/view/MotionEvent;)V

    :cond_3
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    if-ne v2, v3, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_4
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->a()V

    :cond_5
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->h()V

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    if-ne v2, v3, :cond_6

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ak:Z

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->a(ZF)Z

    :cond_6
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->h()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->n:I

    sub-int/2addr v2, v5

    iput v2, v4, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->o:I

    sub-int v4, v3, v4

    iput v4, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->l()V

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->d:I

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->y:I

    add-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->d:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->y:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->B:Lcom/mobeta/android/dslv/k;

    invoke-virtual {v4}, Lcom/mobeta/android/dslv/k;->b()I

    move-result v4

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->P:I

    if-le v2, v5, :cond_8

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->F:I

    if-le v2, v5, :cond_8

    if-eq v4, v1, :cond_8

    if-eq v4, v6, :cond_7

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->B:Lcom/mobeta/android/dslv/k;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/k;->c()V

    :cond_7
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->B:Lcom/mobeta/android/dslv/k;

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/k;->a(I)V

    goto :goto_1

    :cond_8
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->P:I

    if-ge v3, v5, :cond_a

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->E:I

    if-ge v3, v5, :cond_a

    if-eqz v4, :cond_a

    if-eq v4, v6, :cond_9

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->B:Lcom/mobeta/android/dslv/k;

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/k;->c()V

    :cond_9
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->B:Lcom/mobeta/android/dslv/k;

    invoke-virtual {v2, v0}, Lcom/mobeta/android/dslv/k;->a(I)V

    goto :goto_1

    :cond_a
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->E:I

    if-lt v3, v0, :cond_4

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->F:I

    if-gt v2, v0, :cond_4

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->B:Lcom/mobeta/android/dslv/k;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/k;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->B:Lcom/mobeta/android/dslv/k;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/k;->c()V

    goto/16 :goto_1

    :cond_b
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->v:I

    if-nez v2, :cond_c

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_1

    :pswitch_3
    if-eqz v0, :cond_0

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->W:I

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->h()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ae:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/mobeta/android/dslv/g;

    invoke-direct {v0, p0, p1}, Lcom/mobeta/android/dslv/g;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ab:Lcom/mobeta/android/dslv/g;

    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->f:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    instance-of v0, p1, Lcom/mobeta/android/dslv/o;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/mobeta/android/dslv/o;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/o;)V

    :cond_0
    instance-of v0, p1, Lcom/mobeta/android/dslv/i;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/mobeta/android/dslv/i;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/i;)V

    :cond_1
    instance-of v0, p1, Lcom/mobeta/android/dslv/t;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/mobeta/android/dslv/t;

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/t;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ab:Lcom/mobeta/android/dslv/g;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->ab:Lcom/mobeta/android/dslv/g;

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->u:Z

    return-void
.end method

.method public setDragListener(Lcom/mobeta/android/dslv/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->r:Lcom/mobeta/android/dslv/i;

    return-void
.end method

.method public setDragScrollProfile(Lcom/mobeta/android/dslv/j;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->L:Lcom/mobeta/android/dslv/j;

    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->D:F

    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->C:F

    :goto_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->i()V

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->D:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->C:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/mobeta/android/dslv/l;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/o;)V

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/i;)V

    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/t;)V

    return-void
.end method

.method public setDropListener(Lcom/mobeta/android/dslv/o;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->s:Lcom/mobeta/android/dslv/o;

    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->h:F

    return-void
.end method

.method public setFloatViewManager(Lcom/mobeta/android/dslv/p;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->U:Lcom/mobeta/android/dslv/p;

    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->K:F

    return-void
.end method

.method public setRemoveListener(Lcom/mobeta/android/dslv/t;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->t:Lcom/mobeta/android/dslv/t;

    return-void
.end method
