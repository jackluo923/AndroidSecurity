.class public Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;
.super Landroid/widget/GridView;


# static fields
.field protected static final ANIMATION_DURATION:I = 0x96

.field protected static final GRIDVIEW_SCROLL_STEP:I = 0x8

.field protected static final HOVER_AMPLIFY_PERSENCT:I = 0xa

.field private static final a:Ljava/lang/String;


# instance fields
.field protected appHasMoved:Z

.field private b:Landroid/graphics/drawable/BitmapDrawable;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:I

.field protected mActionIconResId:I

.field protected mCurrentFirstVisibleItem:I

.field protected mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

.field protected mDraggingPosition:I

.field protected final mEditActionOnClickListener:Landroid/view/View$OnClickListener;

.field protected mEditActionViewId:I

.field protected mEditModeEnabled:Z

.field protected mEditingPosition:I

.field protected mIsDragging:Z

.field protected mIsEditMode:Z

.field protected mOrigPosition:I

.field protected final mScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditModeEnabled:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsEditMode:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsDragging:Z

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mOrigPosition:I

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditingPosition:I

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDraggingPosition:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->c:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->d:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->e:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->f:I

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->h:I

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->i:I

    new-instance v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$3;-><init>(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditActionOnClickListener:Landroid/view/View$OnClickListener;

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->j:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->k:Z

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->l:I

    new-instance v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$5;-><init>(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    sget-object v1, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->a:Ljava/lang/String;

    if-lez v0, :cond_0

    mul-int/2addr v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->e:I

    :cond_0
    new-instance v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$1;-><init>(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->f:I

    new-instance v0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$2;-><init>(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private a()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->g:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->computeVerticalScrollExtent()I

    move-result v5

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->computeVerticalScrollRange()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gtz v7, :cond_0

    if-lez v3, :cond_0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->f:I

    neg-int v2, v2

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->smoothScrollBy(II)V

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->j:Z

    return-void

    :cond_0
    add-int/2addr v2, v7

    if-lt v2, v4, :cond_1

    add-int v2, v3, v5

    if-ge v2, v6, :cond_1

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->f:I

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDraggingPosition:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->a(IZ)V

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDraggingPosition:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDraggingPosition:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->a(IZ)V

    return-void
.end method

.method private a(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;I)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsDragging:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->layoutChildren()V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->updateEditingPosition(I)V

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->a(I)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    mul-int/lit8 v4, v1, 0xa

    div-int/lit8 v4, v4, 0x64

    mul-int/lit8 v5, v2, 0xa

    div-int/lit8 v5, v5, 0x64

    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, v0, v4

    sub-int v8, v3, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    add-int v1, v3, v2

    add-int/2addr v1, v5

    invoke-direct {v6, v7, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->g:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->c:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->d:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->b:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;->onItemLongClicked(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$202(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->l:I

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->j:Z

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->a()V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->k:Z

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->b()V

    return-void
.end method

.method private b()V
    .locals 6

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->i:I

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->reCaculatePosition(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->isReorderable(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDraggingPosition:I

    if-eq v0, v2, :cond_0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDraggingPosition:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->reCaculatePosition(I)I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDraggingPosition:I

    sget-object v4, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "notifyReorder, from:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    invoke-interface {v4, v2, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;->onReorder(II)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->appHasMoved:Z

    :cond_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->updateEditingPosition(I)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->a(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$6;

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$6;-><init>(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;Landroid/view/ViewTreeObserver;II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected animationReorder(II)V
    .locals 11

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v9, v0

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge v9, v0, :cond_6

    invoke-virtual {p0, v9}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getNumColumns()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getNumColumns()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v0

    move v6, v0

    move v2, v1

    :goto_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v10, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v0, 0x0

    move v6, v0

    move v2, v1

    goto :goto_2

    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v0

    :goto_3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le v9, v0, :cond_6

    invoke-virtual {p0, v9}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getNumColumns()I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getNumColumns()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getNumColumns()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    move v6, v0

    move v2, v1

    :goto_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v10, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    add-int/lit8 v0, v9, -0x1

    move v9, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v1, v0

    const/4 v0, 0x0

    move v6, v0

    move v2, v1

    goto :goto_4

    :cond_6
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->onDispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public enableEditMode(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditModeEnabled:Z

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditActionViewId:I

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mActionIconResId:I

    return-void
.end method

.method public enterEditMode(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditingPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsEditMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->appHasMoved:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;->onEnterEditMode()V

    :cond_0
    return-void
.end method

.method protected findViewByPosition(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getLastVisiblePosition()I

    move-result v1

    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected finishDrag()V
    .locals 11

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsDragging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->k:Z

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDraggingPosition:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v6, v3

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    invoke-virtual {v9}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$4;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView$4;-><init>(Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iput-object v10, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->b:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->a(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->invalidate()V

    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsDragging:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsDragging:Z

    iput-object v10, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->k:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->j:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;->onDragEnded()V

    :cond_3
    return-void
.end method

.method public getDefaultScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method public getIsDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsDragging:Z

    return v0
.end method

.method public isDragEditMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsEditMode:Z

    return v0
.end method

.method protected isReorderable(IZ)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsEditMode:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditingPosition:I

    if-ne v0, v2, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->setCellEditing(IZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsDragging:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDraggingPosition:I

    if-ne v0, v2, :cond_2

    move v2, v3

    :goto_3
    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_3

    :catch_0
    move-exception v0

    :cond_3
    return-void
.end method

.method protected notifyDataSetChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    :pswitch_1
    return v0

    :pswitch_2
    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->k:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->i:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->h:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->finishDrag()V

    goto :goto_1

    :pswitch_4
    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsDragging:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsEditMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->i:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->h:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->e:I

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->quitEditMode()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->i:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->h:I

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->i:I

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->h:I

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->g:Landroid/graphics/Rect;

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->c:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->d:I

    add-int/2addr v2, v4

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->b:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->invalidate()V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->b()V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->a()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsDragging:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mOrigPosition:I

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditingPosition:I

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->quitEditMode()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->finishDrag()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsDragging:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mOrigPosition:I

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditingPosition:I

    if-eq v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->quitEditMode()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->finishDrag()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected quitEditMode()V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->finishDrag()V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsEditMode:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mOrigPosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mIsEditMode:Z

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->updateEditingPosition(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->appHasMoved:Z

    invoke-interface {v0, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;->onQuitEditMode(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->invalidate()V

    goto :goto_0
.end method

.method protected reCaculatePosition(I)I
    .locals 0

    return p1
.end method

.method protected setCellEditing(IZZ)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditActionViewId:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v0, v2, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mActionIconResId:I

    if-lez v0, :cond_2

    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mActionIconResId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    invoke-virtual {v1, p2}, Landroid/view/View;->setSelected(Z)V

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    if-eqz p2, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditActionOnClickListener:Landroid/view/View$OnClickListener;

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x8

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setDragReorderListener(Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mDragReorderListener:Lcom/alipay/mobile/commonui/widget/draggridview/DragReorderListener;

    return-void
.end method

.method protected updateEditingPosition(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditingPosition:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditingPosition:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->setCellEditing(IZZ)V

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditingPosition:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->mEditingPosition:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->setCellEditing(IZZ)V

    goto :goto_0
.end method
