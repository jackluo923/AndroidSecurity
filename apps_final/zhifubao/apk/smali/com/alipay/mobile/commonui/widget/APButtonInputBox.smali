.class public Lcom/alipay/mobile/commonui/widget/APButtonInputBox;
.super Lcom/alipay/mobile/commonui/widget/APInputBox;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APInputBox;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->lastImgBtn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->a:Lcom/alipay/mobile/commonui/widget/APImageButton;

    sget v0, Lcom/alipay/mobile/ui/R$id;->btnContainer:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->genericInputBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setLastImgBg(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLastImgButton()Lcom/alipay/mobile/commonui/widget/APImageButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->a:Lcom/alipay/mobile/commonui/widget/APImageButton;

    return-object v0
.end method

.method protected onInputTextStatusChanged(ZZ)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setClearButtonVisiable(Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setLastImgBtnVisiable(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setClearButtonVisiable(Z)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setLastImgBtnVisiable(Z)V

    goto :goto_0
.end method

.method public setLastImgBg(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->a:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setLastImgBtnVisiable(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setLastImgBtnVisiable(Z)V

    goto :goto_0
.end method

.method protected setLastImgBtnVisiable(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->a:Lcom/alipay/mobile/commonui/widget/APImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->c:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x64

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->a:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->a:Lcom/alipay/mobile/commonui/widget/APImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0
.end method

.method public setLastImgButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->a:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
