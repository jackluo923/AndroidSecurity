.class public Lmobi/monaca/framework/nativeui/NonScaleBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NonScaleBitmapDrawable.java"


# instance fields
.field protected bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/NonScaleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lmobi/monaca/framework/nativeui/NonScaleBitmapDrawable;->setBounds(IIII)V

    .line 17
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 21
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/NonScaleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 22
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/NonScaleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/NonScaleBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/NonScaleBitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/NonScaleBitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 32
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 37
    return-void
.end method
