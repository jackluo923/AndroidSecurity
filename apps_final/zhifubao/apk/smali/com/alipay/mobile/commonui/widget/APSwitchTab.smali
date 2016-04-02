.class public Lcom/alipay/mobile/commonui/widget/APSwitchTab;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:I

.field private b:[Ljava/lang/String;

.field private c:[Landroid/widget/TextView;

.field private d:I

.field private e:F

.field private f:Landroid/content/res/ColorStateList;

.field private g:Landroid/graphics/drawable/GradientDrawable;

.field private h:Landroid/graphics/Matrix;

.field private i:I

.field private j:Landroid/widget/Scroller;

.field private k:Lcom/alipay/mobile/commonui/widget/APSwitchTab$TabSwitchListener;

.field private l:Landroid/view/View;

.field public tabButtomLine:Landroid/widget/ImageView;

.field protected tabCount:I

.field protected tabRl:[Landroid/widget/RelativeLayout;

.field public tabsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabCount:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->b:[Ljava/lang/String;

    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->c:[Landroid/widget/TextView;

    new-array v0, v1, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->f:Landroid/content/res/ColorStateList;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabCount:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->b:[Ljava/lang/String;

    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->c:[Landroid/widget/TextView;

    new-array v0, v1, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->f:Landroid/content/res/ColorStateList;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->i:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabCount:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->b:[Ljava/lang/String;

    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->c:[Landroid/widget/TextView;

    new-array v0, v1, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->f:Landroid/content/res/ColorStateList;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->i:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->j:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->i:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabButtomLine:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->j:Landroid/widget/Scroller;

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_switch_tab_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->tabs:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabsContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->tabLine:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabButtomLine:Landroid/widget/ImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->bottomLine:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->l:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->getTabViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APSwitchTab;)Lcom/alipay/mobile/commonui/widget/APSwitchTab$TabSwitchListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->k:Lcom/alipay/mobile/commonui/widget/APSwitchTab$TabSwitchListener;

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x3

    sget-object v1, Lcom/alipay/mobile/ui/R$styleable;->switchTab:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabCount:I

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->b:[Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->b:[Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->b:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->d:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->e:F

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->f:Landroid/content/res/ColorStateList;

    :goto_0
    if-ge v0, v4, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->b:[Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabCount:I

    if-le v0, v4, :cond_2

    iput v4, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabCount:I

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addTextRightView(Landroid/view/View;I)V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    array-length v0, v0

    if-ge p2, v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    sget v2, Lcom/alipay/mobile/ui/R$id;->tab_tv:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, p2

    sget v2, Lcom/alipay/mobile/ui/R$id;->tab_inner:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public addTextRightView(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    array-length v0, v0

    if-ge p3, v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, p3

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, p3

    sget v1, Lcom/alipay/mobile/ui/R$id;->tab_inner:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public adjustLinePosition(IF)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabButtomLine:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public computeScroll()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabButtomLine:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->postInvalidate()V

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->computeScroll()V

    return-void
.end method

.method public getBottomLine()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->l:Landroid/view/View;

    return-object v0
.end method

.method public getRls()[Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected getTabViews(Landroid/content/Context;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v2, v3

    :goto_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabCount:I

    if-ge v2, v0, :cond_2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_default_tab_view:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    aput-object v0, v1, v2

    sget v1, Lcom/alipay/mobile/ui/R$id;->tab_tv:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->b:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->f:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget v4, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->e:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->e:F

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->c:[Landroid/widget/TextView;

    aput-object v1, v4, v2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getTextViews()[Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->c:[Landroid/widget/TextView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    sub-int v0, p4, p2

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabCount:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->g:Landroid/graphics/drawable/GradientDrawable;

    if-nez v1, :cond_1

    :cond_0
    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->g:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->g:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->d:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->g:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->g:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$dimen;->switch_tab_line_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabButtomLine:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->switch_tab_line_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0
.end method

.method public resetTabView([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabCount:I

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->b:[Ljava/lang/String;

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabCount:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->c:[Landroid/widget/TextView;

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabCount:I

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->getTabViews(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public selectTab(I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabCount:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    aget-object v4, v2, v0

    if-ne p1, v0, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    aget-object v4, v2, v0

    if-eq p1, v0, :cond_1

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->i:I

    return-void
.end method

.method public selectTabAndAdjustLine(I)V
    .locals 1

    const/16 v0, 0xfa

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->selectTabAndAdjustLine(II)V

    return-void
.end method

.method public selectTabAndAdjustLine(II)V
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->i:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->selectTab(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->i:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->adjustLinePosition(IF)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->j:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->j:Landroid/widget/Scroller;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->i:I

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    mul-int/2addr v3, p1

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->i:I

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->i:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int v5, p2, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->invalidate()V

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->i:I

    goto :goto_0
.end method

.method public setCurrentSelTab(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->selectTab(I)V

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->i:I

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->a()V

    return-void
.end method

.method public setTabSwitchListener(Lcom/alipay/mobile/commonui/widget/APSwitchTab$TabSwitchListener;)V
    .locals 3

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->k:Lcom/alipay/mobile/commonui/widget/APSwitchTab$TabSwitchListener;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabCount:I

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSwitchTab$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab$1;-><init>(Lcom/alipay/mobile/commonui/widget/APSwitchTab;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APSwitchTab$1;->setPosition(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->tabRl:[Landroid/widget/RelativeLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
