.class public Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# instance fields
.field private A:Landroid/content/res/ColorStateList;

.field private B:Landroid/content/res/ColorStateList;

.field private C:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private D:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private a:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private d:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private e:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private f:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private g:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private h:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private i:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private j:Lcom/alipay/mobile/commonui/widget/APToggleButton;

.field private k:I

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Ljava/lang/String;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Z

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Landroid/content/res/ColorStateList;

.field private z:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->y:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->z:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->A:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->B:Landroid/content/res/ColorStateList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_bankcardlistitem_layout:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->BankCardListItemView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->k:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->l:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->m:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->n:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->o:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->p:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->u:F

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->v:F

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->w:F

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->x:F

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->y:Landroid/content/res/ColorStateList;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->z:Landroid/content/res/ColorStateList;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->A:Landroid/content/res/ColorStateList;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->B:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->q:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->s:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->r:Ljava/lang/String;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->t:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getLeftImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLeftText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftText2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftText3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftText4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRightBottomImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getRightImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getRightTopText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method public getmRightBottomImageView()Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onFinishInflate()V

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_left_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_left_text_2:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_left_text_3:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_left_text_4:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_right_top_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_left_image:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_left_big_image:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->C:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->images_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->D:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_right_bottom_image:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_right_image:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_arrow:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_toggleButton:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APToggleButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->j:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->l:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :goto_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->k:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setLeftText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setLeftText2(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setLeftText3(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->p:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setLeftText4(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->r:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->r:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setRightTopText(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setRightBottomImage(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->t:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->j:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setVisibility(I)V

    :cond_7
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->u:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->u:F

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    :cond_8
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->v:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->v:F

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    :cond_9
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->w:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->w:F

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    :cond_a
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->x:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->x:F

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->y:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->z:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->z:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->A:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->A:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->B:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->B:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_0
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_top_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setBackgroundResource(I)V

    goto/16 :goto_1

    :pswitch_1
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_normal_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setBackgroundResource(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    return v0

    :pswitch_1
    sget-boolean v1, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->DOWNED:Z

    if-nez v1, :cond_0

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

.method public setArrowGone()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    return-void
.end method

.method public setArrowVisible()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    return-void
.end method

.method public setLeftImage(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->D:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->C:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->C:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->C:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setLeftImage(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->D:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->C:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->C:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->C:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setLeftImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->D:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->C:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->C:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->C:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftText2(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftText3(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftText4(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightBottomImage(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    return-void
.end method

.method public setRightBottomImage(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setRightBottomImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightImage(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    return-void
.end method

.method public setRightImage(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setRightImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightTopText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setmArrowImage(Lcom/alipay/mobile/commonui/widget/APImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-void
.end method

.method public setmRightBottomImageView(Lcom/alipay/mobile/commonui/widget/APImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-void
.end method
