.class public Lcom/alipay/mobile/commonui/widget/APPopMenu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/PopupWindow;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;

.field private f:Landroid/view/LayoutInflater;

.field private g:Ljava/util/ArrayList;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->h:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->i:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->j:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->popmenu_default_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->initView(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->h:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->i:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->j:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->k:I

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->initView(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/APPopMenu;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->h:I

    return v0
.end method

.method static synthetic access$402(Lcom/alipay/mobile/commonui/widget/APPopMenu;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->h:I

    return p1
.end method

.method static synthetic access$500(Lcom/alipay/mobile/commonui/widget/APPopMenu;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->i:I

    return v0
.end method

.method static synthetic access$502(Lcom/alipay/mobile/commonui/widget/APPopMenu;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->i:I

    return p1
.end method

.method static synthetic access$600(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->f:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/commonui/widget/APPopMenu;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APPopMenu$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/commonui/widget/APPopMenu$3;-><init>(Lcom/alipay/mobile/commonui/widget/APPopMenu;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getPopWindow()Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getScrollY()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method protected initView(Landroid/content/Context;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->a:Landroid/content/Context;

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->k:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->j:I

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->f:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/ui/R$layout;->popmenu:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/ui/R$id;->listView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->list_shadow:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$dimen;->popmenu_list_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;

    invoke-direct {v0, p0, v6}, Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;-><init>(Lcom/alipay/mobile/commonui/widget/APPopMenu;Lcom/alipay/mobile/commonui/widget/APPopMenu$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->l:Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->l:Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/commonui/widget/APPopMenu$2;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu$2;-><init>(Lcom/alipay/mobile/commonui/widget/APPopMenu;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    new-instance v2, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/commonui/widget/APPopMenu$1;-><init>(Lcom/alipay/mobile/commonui/widget/APPopMenu;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v0, v1, p2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->d:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;

    invoke-interface {v0, p3}, Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;->onItemClick(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->dismiss()V

    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->a:Landroid/content/Context;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->initView(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->e:Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method public showAsDropDownLeft(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->popmenu_margin_left_menu_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->popmenu_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    neg-int v1, v1

    neg-int v0, v0

    invoke-virtual {v2, p1, v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    goto :goto_0
.end method

.method public showAsDropDownRight(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->popmenu_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->popmenu_margin_top_btn:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    neg-int v0, v0

    invoke-virtual {v2, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    goto :goto_0
.end method

.method public showAsDropDownTitleCenter(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/ui/R$layout;->pomenu_item:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/ui/R$id;->item_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->item_bg:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->popmenu_item_mid:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->item_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->l:Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
