.class public Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APInputBox;

.field private b:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private c:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private d:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private f:Landroid/graphics/drawable/AnimationDrawable;

.field private g:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter$CheckCodeGetCallback;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->h:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_checkcode_geter_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getCheckCodeInput()Lcom/alipay/mobile/commonui/widget/APInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->startAnimation()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->g:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter$CheckCodeGetCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->g:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter$CheckCodeGetCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter$CheckCodeGetCallback;->onRefresh()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onFinishInflate()V

    sget v0, Lcom/alipay/mobile/ui/R$id;->refreshImg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->checkCodeImg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->checkCodeInputBox:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/ui/R$id;->checkCodeGetContainer:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->f:Landroid/graphics/drawable/AnimationDrawable;

    sget v0, Lcom/alipay/mobile/ui/R$id;->checkCodeTips:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x60

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/16 v1, 0xb4

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->measure(II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getMeasuredHeight()I

    move-result v1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCheckCallback(Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter$CheckCodeGetCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->g:Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter$CheckCodeGetCallback;

    return-void
.end method

.method public setCheckCodeImg(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->h:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setCheckCodeImg(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->h:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public startAnimation()V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->checkCodeLoading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorccc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->f:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->f:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->f:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeGetter;->f:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method
