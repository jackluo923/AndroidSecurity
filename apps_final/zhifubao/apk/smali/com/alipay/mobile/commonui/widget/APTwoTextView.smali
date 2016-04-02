.class public Lcom/alipay/mobile/commonui/widget/APTwoTextView;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:I

.field private d:Ljava/lang/String;

.field private e:F

.field private f:I

.field mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, -0x1000000

    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_two_text_view:I

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->TwoTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->a:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->b:F

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->c:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->d:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->e:F

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->f:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getLeftTextView()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->onFinishInflate()V

    sget v0, Lcom/alipay/mobile/ui/R$id;->leftText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->rightText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->setLeftText(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->b:F

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->setLeftTextSize(F)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->setLeftTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->setRightText(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->e:F

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->setRightTextSize(F)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->setRightTextColor(I)V

    return-void
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLeftTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    return-void
.end method

.method public setLeftTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->mLeftTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRightTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    return-void
.end method

.method public setRightTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTwoTextView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(F)V

    :cond_0
    return-void
.end method
