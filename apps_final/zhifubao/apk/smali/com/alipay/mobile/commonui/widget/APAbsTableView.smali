.class public Lcom/alipay/mobile/commonui/widget/APAbsTableView;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;


# static fields
.field public static final ARROW_STYLE_DOWN:I = 0x21

.field public static final ARROW_STYLE_RIGHT:I = 0x20

.field public static final ARROW_STYLE_UP:I = 0x22

.field public static final BOTTOM:I = 0x12

.field public static final CENTER:I = 0x13

.field public static DOWNED:Z = false

.field public static final LINE:I = 0x14

.field public static final NEW_FLAG_TYPE_IMAGE:I = 0x2

.field public static final NEW_FLAG_TYPE_TEXT:I = 0x1

.field public static final NORMAL:I = 0x10

.field public static final STYLE_LIST_ITEM:I = 0x11

.field public static final STYLE_ROUND_CORNER:I = 0x10

.field public static final TOP:I = 0x11


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/String;

.field protected changeBackgroud:Z

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z

.field protected leftTextNewFlagView:Landroid/view/View;

.field protected linearLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private m:Z

.field protected mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

.field protected mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

.field protected mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

.field protected mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private n:I

.field protected rightImageNewFlagView:Landroid/view/View;

.field protected style:I

.field protected styleSet:Z

.field protected type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->styleSet:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->l:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->m:Z

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->inflateLayout(Landroid/content/Context;)V

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->tableView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->type:I

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v4, :cond_0

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->style:I

    iput-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->styleSet:Z

    :cond_0
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->a:Z

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->j:I

    const/16 v1, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->b:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->d:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->k:I

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->e:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->changeBackgroud:Z

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->g:Z

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->h:Z

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->i:Z

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->a()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a()V
    .locals 5

    const/high16 v4, 0x40400000    # 3.0f

    sget v0, Lcom/alipay/mobile/ui/R$id;->linearLayout1:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->linearLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_left_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_right_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_iconView:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_right_image:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_arrow:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->a:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setArrowType(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->changeBackgroud:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->item_left_icon_large:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->item_left_icon_small:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->type:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getStyle()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setTypeAndStyle(II)V

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->k:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->k:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :cond_1
    iget-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->h:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->showRightTextContentFirst()V

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->c:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setLeftText(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->e:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setRightText(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setRightImage(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->g:Z

    if-eqz v2, :cond_a

    invoke-virtual {p0, v0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setIconSize(FF)V

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getStyle()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setPadding(IIII)V

    :cond_7
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->i:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setTableViewSticky(Z)V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->changeBackgroud:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v1, v1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setIconSize(FF)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APAbsTableView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APAbsTableView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v1, -0x2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->leftTextNewFlagView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->leftTextNewFlagView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 5

    const/4 v2, -0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->rightImageNewFlagView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    neg-int v1, v0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->rightImageNewFlagView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x1

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->n:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->rightImageNewFlagView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->rightImageNewFlagView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getRightImageView()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachNewFlag2LeftText(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->leftTextNewFlagView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->addView(Landroid/view/View;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->linearLayout1:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->n:I

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->b()V

    return-void
.end method

.method public attachNewFlag2RightImage(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->rightImageNewFlagView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->addView(Landroid/view/View;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_right_image:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->n:I

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->c()V

    return-void
.end method

.method public getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method public getChildView(Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getRightText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getLeftText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDefStyle()I
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/commonui/widget/WidgetVisualStyleSetting;->getVisualStyle()I

    move-result v0

    return v0
.end method

.method public getLeftImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLeftImageView()Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method public getLeftText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftTextView()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getRightImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getRightImageView()Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method public getRightText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->styleSet:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getDefStyle()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->style:I

    goto :goto_0
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_abs_table_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->m:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    int-to-float v0, v0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr v0, v1

    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->linearLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->requestLayout()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->m:Z

    :cond_5
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->a()V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->b()V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->c()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0

    :pswitch_1
    sget-boolean v1, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->DOWNED:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->DOWNED:Z

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->DOWNED:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAdjustRightTextAfterDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->m:Z

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->l:Z

    return-void
.end method

.method public setArrowImageVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setArrowType(I)V

    return-void
.end method

.method public setArrowType(I)V
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->j:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->j:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_arrow:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x22

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_arrow_up:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_arrow_down:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setIconSize(FF)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v1, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    float-to-int v1, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    return-void
.end method

.method protected setInnerLeftText(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->c:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setLeftText(Ljava/lang/String;)V

    return-void
.end method

.method public setItemPositionStyle(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getStyle()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setTypeAndStyle(II)V

    return-void
.end method

.method public setLeftImage(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public setLeftImage(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setLeftImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftImageVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    return-void
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->performance_sdk_text_key:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method protected setLeftTextVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    return-void
.end method

.method public setRightImage(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    return-void
.end method

.method public setRightImage(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setRightImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStyle(I)V
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->type:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setTypeAndStyle(II)V

    return-void
.end method

.method public setTableViewSticky(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_sticky_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->type:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getStyle()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setTypeAndStyle(II)V

    goto :goto_0
.end method

.method public setType(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getStyle()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setTypeAndStyle(II)V

    return-void
.end method

.method public setTypeAndStyle(II)V
    .locals 2

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->type:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getStyle()I

    move-result v0

    if-eq v0, p2, :cond_0

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->style:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->styleSet:Z

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getStyle()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_item_bottom_normal_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :pswitch_1
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_item_top_center_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_line_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_normal_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_top_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_bottom_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_6
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_middle_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_7
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_line_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setVisualStyle(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setStyle(I)V

    return-void
.end method

.method public showRightTextContentFirst()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APAbsTableView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
