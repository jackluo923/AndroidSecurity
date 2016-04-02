.class public Lcom/alipay/mobile/commonui/widget/APExtTableView;
.super Lcom/alipay/mobile/commonui/widget/APAbsTableView;


# static fields
.field public static NEW_FLAG_TYPE_IMAGE:I

.field public static NEW_FLAG_TYPE_TEXT:I


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->NEW_FLAG_TYPE_TEXT:I

    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->NEW_FLAG_TYPE_IMAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->d:Z

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v1, -0x2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    const/4 v2, -0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    neg-int v1, v0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->b:Landroid/view/View;

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

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->getRightImageView()Lcom/alipay/mobile/commonui/widget/APImageView;

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

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->addView(Landroid/view/View;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->linearLayout1:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->c:I

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->a()V

    return-void
.end method

.method public attachNewFlag2RightImage(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->addView(Landroid/view/View;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_right_image:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->c:I

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->b()V

    return-void
.end method

.method public getNewFlagView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->a:Landroid/view/View;

    return-object v0
.end method

.method public getRightNewFlagView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->b:Landroid/view/View;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->d:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->mArrowImage:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->mRightImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    int-to-float v0, v0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->mRightTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

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
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->linearLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->requestLayout()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->d:Z

    :cond_5
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->a()V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APExtTableView;->b()V

    return-void
.end method

.method public setAdjustRightTextAfterDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/APExtTableView;->d:Z

    return-void
.end method
