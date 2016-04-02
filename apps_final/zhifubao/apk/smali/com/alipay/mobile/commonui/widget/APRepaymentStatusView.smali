.class public Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView$OnSwitchListener;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private d:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private e:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private f:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private g:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private h:Lcom/alipay/mobile/commonui/widget/APToggleButton;

.field private i:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_repaymentstatus_layout:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->RepaymentStatusView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->j:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->k:Z

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->l:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->m:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->n:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->o:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->p:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getChildView(Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView$ViewID;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView$ViewID;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLeftImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLeftText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftText2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRightText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRightText2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRightText3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchListener()Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView$OnSwitchListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->a:Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView$OnSwitchListener;

    return-object v0
.end method

.method public hideLeftImage()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->h:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->a:Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView$OnSwitchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->a:Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView$OnSwitchListener;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->h:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->h:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView$OnSwitchListener;->onSwitchListener(ZLandroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onFinishInflate()V

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_left_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_left_text_2:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_right_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_right_text_2:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_right_text_3:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_arrow:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_toggleButton:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APToggleButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->h:Lcom/alipay/mobile/commonui/widget/APToggleButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->repayment_iconView:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->k:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :goto_0
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->j:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->setLeftText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->setLeftText2(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->n:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->setRightText(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->setRightText(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->p:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->setRightText(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_normal_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_1
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_top_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_2
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_bottom_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_3
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_center_selector:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setArrowGone()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    return-void
.end method

.method public setArrowVisible()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    return-void
.end method

.method public setLeftImage(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public setLeftImage(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setLeftImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->i:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftText2(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView$OnSwitchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->a:Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView$OnSwitchListener;

    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightText2(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightText3(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRepaymentStatusView;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
