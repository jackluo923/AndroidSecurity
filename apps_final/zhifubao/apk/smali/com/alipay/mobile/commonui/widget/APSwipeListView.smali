.class public Lcom/alipay/mobile/commonui/widget/APSwipeListView;
.super Lcom/alipay/mobile/commonui/widget/APListView;


# static fields
.field public static final SWIPE_ACTION_CHOICE:I = 0x2

.field public static final SWIPE_ACTION_DISMISS:I = 0x1

.field public static final SWIPE_ACTION_NONE:I = 0x3

.field public static final SWIPE_ACTION_REVEAL:I = 0x0

.field public static final SWIPE_DEFAULT_BACK_VIEW:Ljava/lang/String; = "swipelist_backview"

.field public static final SWIPE_DEFAULT_FRONT_VIEW:Ljava/lang/String; = "swipelist_frontview"

.field public static final SWIPE_MODE_BOTH:I = 0x1

.field public static final SWIPE_MODE_DEFAULT:I = -0x1

.field public static final SWIPE_MODE_LEFT:I = 0x3

.field public static final SWIPE_MODE_NONE:I = 0x0

.field public static final SWIPE_MODE_RIGHT:I = 0x2


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:I

.field private e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

.field private f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

.field swipeBackView:I

.field swipeFrontView:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeFrontView:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeBackView:I

    iput p3, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeFrontView:I

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeBackView:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeFrontView:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeBackView:I

    invoke-direct {p0, p2}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeFrontView:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeBackView:I

    invoke-direct {p0, p2}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 16

    const/4 v11, 0x1

    const/4 v10, 0x1

    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/ui/R$styleable;->SwipeListView:[I

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    int-to-long v7, v3

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/4 v3, 0x6

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeFrontView:I

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeBackView:I

    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeFrontView:I

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeBackView:I

    if-nez v12, :cond_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string/jumbo v13, "swipelist_frontview"

    const-string/jumbo v14, "id"

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeFrontView:I

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string/jumbo v13, "swipelist_backview"

    const-string/jumbo v14, "id"

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeBackView:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeFrontView:I

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeBackView:I

    if-nez v12, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "You forgot the attributes swipeFrontView or swipeBackView. You can add this attributes or use \'%s\' and \'%s\' identifiers"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "swipelist_frontview"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "swipelist_backview"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    invoke-static {v12}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->d:I

    new-instance v12, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeFrontView:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeBackView:I

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13, v14}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;-><init>(Lcom/alipay/mobile/commonui/widget/APSwipeListView;II)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    const-wide/16 v12, 0x0

    cmp-long v12, v7, v12

    if-lez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v12, v7, v8}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setAnimationTime(J)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v7, v5}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setRightOffset(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setLeftOffset(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setSwipeActionLeft(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setSwipeActionRight(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v1, v11}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setSwipeMode(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v1, v9}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setSwipeClosesAllItemsWhenListMoves(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v1, v10}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setSwipeOpenOnLongPress(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setSwipeDrawableChecked(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setSwipeDrawableUnchecked(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APSwipeListView;)Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    return-object v0
.end method


# virtual methods
.method protected changeSwipeMode(I)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v1, :cond_0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onChangeSwipeMode(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public closeAnimate(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->closeAnimate(I)V

    return-void
.end method

.method public closeOpenedItems()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->closeOpenedItems()V

    return-void
.end method

.method public dismiss(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->dismiss(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->handlerPendingDismisses(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onDismiss([I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->resetPendingDismisses()V

    goto :goto_0
.end method

.method public dismissSelected()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->getPositionsSelected()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [I

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v1

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->dismiss(I)I

    move-result v0

    if-lez v0, :cond_0

    move v2, v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->handlerPendingDismisses(I)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->returnOldActions()V

    return-void

    :cond_2
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->onDismiss([I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->resetPendingDismisses()V

    goto :goto_1
.end method

.method public getCountSelected()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->getCountSelected()I

    move-result v0

    return v0
.end method

.method public getPositionsSelected()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->getPositionsSelected()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeActionLeft()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->getSwipeActionLeft()I

    move-result v0

    return v0
.end method

.method public getSwipeActionRight()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->getSwipeActionRight()I

    move-result v0

    return v0
.end method

.method public isChecked(I)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->isChecked(I)Z

    move-result v0

    return v0
.end method

.method protected onChoiceChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onChoiceChanged(IZ)V

    :cond_0
    return-void
.end method

.method protected onChoiceEnded()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onChoiceEnded()V

    :cond_0
    return-void
.end method

.method protected onChoiceStarted()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onChoiceStarted()V

    :cond_0
    return-void
.end method

.method protected onClickBackView(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onClickBackView(I)V

    :cond_0
    return-void
.end method

.method protected onClickFrontView(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onClickFrontView(I)V

    :cond_0
    return-void
.end method

.method protected onClosed(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onClosed(IZ)V

    :cond_0
    return-void
.end method

.method protected onDismiss([I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onDismiss([I)V

    :cond_0
    return-void
.end method

.method protected onFirstListItem()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onFirstListItem()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->isSwipeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a:I

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->b:F

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->c:F

    sub-float v3, v5, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v6, v3

    iget v7, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->d:I

    if-le v2, v7, :cond_5

    move v3, v0

    :goto_2
    if-le v6, v7, :cond_6

    move v2, v0

    :goto_3
    if-eqz v3, :cond_3

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a:I

    iput v4, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->b:F

    iput v5, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->c:F

    :cond_3
    if-eqz v2, :cond_4

    iput v8, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a:I

    iput v4, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->b:F

    iput v5, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->c:F

    :cond_4
    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a:I

    if-eq v2, v8, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    move v3, v1

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a:I

    iput v4, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->b:F

    iput v5, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->c:F

    move v0, v1

    goto :goto_0

    :pswitch_2
    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a:I

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v2, p0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a:I

    if-eq v2, v8, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLastListItem()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onLastListItem()V

    :cond_0
    return-void
.end method

.method protected onListChanged()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onListChanged()V

    :cond_0
    return-void
.end method

.method protected onMove(IF)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onMove(IF)V

    :cond_0
    return-void
.end method

.method protected onOpened(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onOpened(IZ)V

    :cond_0
    return-void
.end method

.method protected onStartClose(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onStartClose(IZ)V

    :cond_0
    return-void
.end method

.method protected onStartOpen(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;->onStartOpen(IIZ)V

    :cond_0
    return-void
.end method

.method public openAnimate(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->openAnimate(I)V

    return-void
.end method

.method public recycle(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->swipeFrontView:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->reloadChoiceStateInView(Landroid/view/View;I)V

    return-void
.end method

.method public resetScrolling()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->a:I

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->resetItems()V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APSwipeListView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APSwipeListView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APSwipeListView;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public setAnimationTime(J)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setAnimationTime(J)V

    return-void
.end method

.method public setOffsetLeft(F)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setLeftOffset(F)V

    return-void
.end method

.method public setOffsetRight(F)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setRightOffset(F)V

    return-void
.end method

.method public setSwipeActionLeft(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setSwipeActionLeft(I)V

    return-void
.end method

.method public setSwipeActionRight(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setSwipeActionRight(I)V

    return-void
.end method

.method public setSwipeCloseAllItemsWhenMoveList(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setSwipeClosesAllItemsWhenListMoves(Z)V

    return-void
.end method

.method public setSwipeListViewListener(Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->e:Lcom/alipay/mobile/commonui/widget/SwipeListViewListener;

    return-void
.end method

.method public setSwipeMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setSwipeMode(I)V

    return-void
.end method

.method public setSwipeOpenOnLongPress(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->setSwipeOpenOnLongPress(Z)V

    return-void
.end method

.method public unselectedChoiceStates()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwipeListView;->f:Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/SwipeListViewTouchListener;->unselectedChoiceStates()V

    return-void
.end method
