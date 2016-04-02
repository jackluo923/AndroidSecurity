.class public Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SegmentBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;
    }
.end annotation


# instance fields
.field protected alpha:I

.field protected colorFilter:Landroid/graphics/ColorFilter;

.field protected context:Landroid/content/Context;

.field protected drawable:Landroid/graphics/drawable/Drawable;

.field protected isSelected:Z

.field protected pressedColorFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;
    .param p3, "tintColor"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    const/16 v0, 0xff

    iput v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->alpha:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->isSelected:Z

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable$Type;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->context:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 45
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, p3}, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->makePressedTintColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->pressedColorFilter:Landroid/graphics/ColorFilter;

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 61
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 63
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 66
    .local v1, "buttonCanvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 70
    .local v2, "clippingMask":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 71
    .local v3, "paint":Landroid/graphics/Paint;
    iget-boolean v5, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->isSelected:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->pressedColorFilter:Landroid/graphics/ColorFilter;

    :goto_0
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 72
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    invoke-virtual {v1, v2, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    iget v5, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->alpha:I

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 77
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    return-void

    .line 71
    :cond_0
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 115
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected makePressedTintColor(I)I
    .locals 8
    .param p1, "color"    # I

    .prologue
    const/4 v7, 0x2

    .line 50
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 51
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 53
    aget v1, v0, v7

    float-to-double v3, v1

    aget v1, v0, v7

    float-to-double v1, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_0

    const-wide v1, -0x4036666666666666L    # -0.2

    :goto_0
    add-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, v0, v7

    .line 54
    const v1, -0x666667

    invoke-static {v1, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->multiplyColor(II)I

    move-result v1

    return v1

    .line 53
    :cond_0
    const-wide v1, 0x3fc999999999999aL    # 0.2

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 120
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->alpha:I

    .line 121
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 85
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 86
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 125
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lmobi/monaca/framework/nativeui/component/SegmentBackgroundDrawable;->isSelected:Z

    .line 134
    return-void
.end method
