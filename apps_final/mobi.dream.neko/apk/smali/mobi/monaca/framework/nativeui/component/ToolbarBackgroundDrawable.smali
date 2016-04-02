.class public Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ToolbarBackgroundDrawable.java"


# instance fields
.field protected alpha:I

.field protected colorFilter:Landroid/graphics/ColorFilter;

.field protected context:Landroid/content/Context;

.field protected drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    const/16 v0, 0x4f

    iput v0, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->alpha:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$drawable;->monaca_toolbar_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 23
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->context:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 28
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 30
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_2

    .line 37
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 39
    :cond_2
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 42
    .local v1, "paint":Landroid/graphics/Paint;
    iget v3, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->alpha:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43
    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 84
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 89
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->alpha:I

    .line 90
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->invalidateSelf()V

    .line 91
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->invalidateSelf()V

    .line 60
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 50
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 51
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 52
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->invalidateSelf()V

    .line 53
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 96
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 97
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;->invalidateSelf()V

    .line 98
    return-void
.end method
