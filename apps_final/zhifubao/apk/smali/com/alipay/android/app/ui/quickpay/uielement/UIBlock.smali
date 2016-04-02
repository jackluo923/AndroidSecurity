.class public Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;


# instance fields
.field private H:Landroid/view/ViewGroup;

.field private I:I

.field private J:Z

.field private K:Z

.field private L:Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

.field private M:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

.field private N:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

.field private O:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/view/ViewGroup;

.field private h:Z

.field private i:Landroid/widget/ScrollView;

.field private j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->J:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->K:Z

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/e;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/e;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->M:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/f;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/f;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->N:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/g;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->O:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;
    .locals 7

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->J:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "mini_ui_draglist_main"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    const-string/jumbo v1, "mini_list_item_handle_right"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    const-string/jumbo v1, "text"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    invoke-direct {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->K:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a(Z)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->M:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDropListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->N:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setRemoveListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->O:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDragScrollProfile(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v1

    const/high16 v3, 0x42340000    # 45.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    move v3, v0

    move v0, v1

    :goto_1
    mul-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_0
    if-eqz v1, :cond_1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    const/4 v0, 0x4

    if-lt v3, v0, :cond_3

    div-int/lit8 v0, v3, 0x4

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    :goto_2
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    add-int/2addr v0, v3

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    :goto_3
    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->f:Ljava/lang/String;

    const-string/jumbo v1, "scroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->h:Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    if-nez v0, :cond_5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "mini_ui_scroll"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-super {p0, p1, v0, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    if-le v1, v0, :cond_6

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    :cond_6
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v1

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_7
    if-eqz v1, :cond_8

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v0, v4, :cond_8

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_8
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    goto/16 :goto_3

    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->g()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->H:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "mini_ui_marquee"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->H:Landroid/view/ViewGroup;

    :cond_a
    invoke-virtual {v3, v2, v2}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    if-le v1, v0, :cond_b

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    :cond_b
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_c

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_c
    if-eqz v1, :cond_d

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    if-lez v0, :cond_d

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v0, v5, :cond_d

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->I:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_d
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_e

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->H:Landroid/view/ViewGroup;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->H:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->H:Landroid/view/ViewGroup;

    goto/16 :goto_3

    :cond_f
    move-object v0, v3

    goto/16 :goto_3

    :cond_10
    move v3, v2

    move v0, v2

    goto/16 :goto_1
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->g:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->z()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->r()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->c:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->l:Z

    iget-boolean v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->s:Z

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZZ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->r()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->g:Landroid/view/ViewGroup;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->d:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->e:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "overflow"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "overflow"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->f:Ljava/lang/String;

    :cond_2
    const-string/jumbo v0, "edit"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "edit"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->J:Z

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->h:Z

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->K:Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->K:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final synthetic b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->J:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final d()I
    .locals 1

    const-string/jumbo v0, "mini_ui_block"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->dispose()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->i:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->g:Landroid/view/ViewGroup;

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->J:Z

    return v0
.end method
