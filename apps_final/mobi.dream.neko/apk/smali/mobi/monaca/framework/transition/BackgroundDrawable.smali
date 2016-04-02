.class public Lmobi/monaca/framework/transition/BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackgroundDrawable.java"


# instance fields
.field protected bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/view/Display;I)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "orientation"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lmobi/monaca/framework/transition/BackgroundDrawable;->createBackgroundBitmap(Landroid/graphics/Bitmap;Landroid/view/Display;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/transition/BackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 21
    return-void
.end method


# virtual methods
.method protected createBackgroundBitmap(Landroid/graphics/Bitmap;Landroid/view/Display;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 33
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 34
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 35
    move-object v7, p1

    .line 36
    .local v7, "old":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 38
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "old":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 43
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v0, v2

    .line 45
    .local v10, "resizedScaleWidth":F
    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v0, v2

    .line 48
    .local v9, "resizedScaleHeight":F
    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 49
    .local v11, "scale":F
    invoke-virtual {v5, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 54
    .local v8, "resizedBitmap":Landroid/graphics/Bitmap;
    return-object v8
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lmobi/monaca/framework/transition/BackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 26
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 64
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 68
    return-void
.end method
