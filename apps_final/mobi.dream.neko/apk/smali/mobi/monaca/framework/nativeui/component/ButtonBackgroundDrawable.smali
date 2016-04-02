.class public Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ButtonBackgroundDrawable.java"


# instance fields
.field protected alpha:I

.field protected colorFilter:Landroid/graphics/ColorFilter;

.field protected context:Landroid/content/Context;

.field protected disabledColorFilter:Landroid/graphics/ColorFilter;

.field protected drawable:Landroid/graphics/drawable/Drawable;

.field protected isEnabled:Z

.field protected isPressed:Z

.field protected pressedColorFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tintColor"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    const/16 v0, 0xff

    iput v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->alpha:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->isPressed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->isEnabled:Z

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$drawable;->monaca_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->context:Landroid/content/Context;

    .line 32
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 34
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, p2}, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->makePressedTintColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->pressedColorFilter:Landroid/graphics/ColorFilter;

    .line 36
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, p2}, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->makeDisabledTintColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->disabledColorFilter:Landroid/graphics/ColorFilter;

    .line 38
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 63
    iget-object v7, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 65
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-gtz v7, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 71
    .local v1, "buttonCanvas":Landroid/graphics/Canvas;
    iget-object v7, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 74
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 75
    .local v2, "clippingMask":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 76
    .local v5, "paint":Landroid/graphics/Paint;
    iget-boolean v7, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->isEnabled:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->isPressed:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->pressedColorFilter:Landroid/graphics/ColorFilter;

    :goto_1
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 78
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 79
    invoke-virtual {v1, v2, v10, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    iget-object v7, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lmobi/monaca/framework/psedo/R$drawable;->monaca_button_frame:I

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 84
    .local v3, "frameBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/NinePatch;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v3, v7, v8}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 86
    .local v4, "frameNinePatch":Landroid/graphics/NinePatch;
    new-instance v5, Landroid/graphics/Paint;

    .end local v5    # "paint":Landroid/graphics/Paint;
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 87
    .restart local v5    # "paint":Landroid/graphics/Paint;
    const/16 v7, 0xcc

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 89
    invoke-virtual {v4, v5}, Landroid/graphics/NinePatch;->setPaint(Landroid/graphics/Paint;)V

    .line 90
    iget-object v7, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 92
    iget v7, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->alpha:I

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 94
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v10, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 76
    .end local v3    # "frameBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "frameNinePatch":Landroid/graphics/NinePatch;
    :cond_2
    iget-object v7, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->disabledColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 133
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected makeDisabledTintColor(I)I
    .locals 7
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 50
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 51
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 53
    aget v1, v0, v5

    float-to-double v1, v1

    const-wide v3, 0x3fc999999999999aL    # 0.2

    sub-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, v0, v5

    .line 54
    aget v1, v0, v5

    cmpg-float v1, v1, v6

    if-gez v1, :cond_0

    .line 55
    aput v6, v0, v5

    .line 58
    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method protected makePressedTintColor(I)I
    .locals 8
    .param p1, "color"    # I

    .prologue
    const/4 v7, 0x2

    .line 41
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 42
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 44
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

    .line 46
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1

    .line 44
    :cond_0
    const-wide v1, 0x3fc999999999999aL    # 0.2

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 9
    .param p1, "states"    # [I

    .prologue
    const/4 v7, 0x1

    .line 152
    const/4 v4, 0x0

    .line 153
    .local v4, "isPressedTemp":Z
    const/4 v3, 0x0

    .line 155
    .local v3, "isEnabledTemp":Z
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_2

    aget v6, v0, v2

    .line 156
    .local v6, "state":I
    const v8, 0x10100a7

    if-ne v6, v8, :cond_0

    .line 157
    const/4 v4, 0x1

    .line 159
    :cond_0
    const v8, 0x101009e

    if-ne v6, v8, :cond_1

    .line 160
    const/4 v3, 0x1

    .line 155
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v6    # "state":I
    :cond_2
    iget-boolean v8, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->isPressed:Z

    if-ne v8, v4, :cond_3

    iget-boolean v8, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->isEnabled:Z

    if-eq v8, v3, :cond_4

    :cond_3
    move v1, v7

    .line 166
    .local v1, "changed":Z
    :goto_1
    iput-boolean v4, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->isPressed:Z

    .line 167
    iput-boolean v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->isEnabled:Z

    .line 169
    if-eqz v1, :cond_5

    .line 170
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->invalidateSelf()V

    .line 174
    :goto_2
    return v7

    .line 164
    .end local v1    # "changed":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 174
    .restart local v1    # "changed":Z
    :cond_5
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v7

    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 138
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->alpha:I

    .line 139
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 103
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/ButtonBackgroundDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 104
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 143
    return-void
.end method
