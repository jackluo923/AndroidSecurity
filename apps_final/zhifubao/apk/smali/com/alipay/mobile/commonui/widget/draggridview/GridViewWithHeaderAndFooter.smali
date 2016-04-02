.class public Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;
.super Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;


# static fields
.field public static DEBUG:Z

.field private static final d:Ljava/lang/String;


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:I

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->DEBUG:Z

    const-class v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->b:Landroid/view/View;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->b:Landroid/view/View;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->b:Landroid/view/View;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private a()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getColumnWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/GridView;

    const-string/jumbo v1, "mColumnWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    if-ne v0, p0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;-><init>(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$1;)V

    new-instance v3, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;-><init>(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;Landroid/content/Context;)V

    if-eqz v1, :cond_1

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p1, v2, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    iput-object v3, v2, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    iput-object p2, v2, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v2, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;-><init>(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$1;)V

    new-instance v3, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;-><init>(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;Landroid/content/Context;)V

    if-eqz v1, :cond_1

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p1, v2, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    iput-object v3, v2, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    iput-object p2, v2, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v2, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public getFooterViewCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderHeight(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderViewCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    const-class v1, Landroid/widget/GridView;

    const-string/jumbo v2, "mHorizontalSpacing"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getHorizontalSpacing()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getNumColumnsCompatible()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getNumColumns()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/GridView;

    const-string/jumbo v1, "mNumColumns"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->a:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can not determine the mNumColumns for this API platform, please call setNumColumns to set it."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRowHeight()I
    .locals 6

    const/4 v1, -0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->c:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v3, v2

    if-gt v0, v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->a()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v2, v4

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->b:Landroid/view/View;

    invoke-interface {v0, v2, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    if-nez v0, :cond_3

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v1, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v4, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v1, v5, v4}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getChildMeasureSpec(III)I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v3, v5, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->c:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->c:I

    goto :goto_0
.end method

.method public getVerticalSpacing()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    const-class v1, Landroid/widget/GridView;

    const-string/jumbo v2, "mVerticalSpacing"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->getVerticalSpacing()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public invalidateRowHeight()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->c:I

    return-void
.end method

.method protected notifyDataSetChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->b:Landroid/view/View;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setNumColumns(I)V

    check-cast v1, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getRowHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setRowHeight(I)V

    :cond_0
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getHeaderViewCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v1

    mul-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getHeaderViewCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v1

    mul-int/2addr v0, v1

    sub-int v0, p2, v0

    invoke-super {p0, p1, v0, p3, p4}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method protected reCaculatePosition(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getHeaderViewCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getNumColumns()I

    move-result v1

    mul-int/2addr v0, v1

    sub-int v0, p1, v0

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->e:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setNumColumns(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getRowHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setRowHeight(I)V

    invoke-super {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setClipChildren(Z)V
    .locals 0

    return-void
.end method

.method public setClipChildrenSupper(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->setClipChildren(Z)V

    return-void
.end method

.method public setNumColumns(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/DragGridView;->setNumColumns(I)V

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->a:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->setNumColumns(I)V

    :cond_0
    return-void
.end method

.method public tryToScrollToBottomSmoothly()V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->smoothScrollToPositionFromTop(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->setSelection(I)V

    goto :goto_0
.end method

.method public tryToScrollToBottomSmoothly(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->smoothScrollToPositionFromTop(III)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->setSelection(I)V

    goto :goto_0
.end method
