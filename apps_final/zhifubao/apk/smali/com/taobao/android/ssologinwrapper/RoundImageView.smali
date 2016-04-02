.class public Lcom/taobao/android/ssologinwrapper/RoundImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/RoundImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/taobao/android/ssologinwrapper/RoundImageView;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/RoundImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/taobao/android/ssologinwrapper/RoundImageView;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/RoundImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/taobao/android/ssologinwrapper/RoundImageView;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const-string/jumbo v0, "sso_shape_circle_head_in"

    invoke-static {p1, v0}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->getDrawableById(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/RoundImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/RoundImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/RoundImageView;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-super {p0, v5}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/RoundImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/RoundImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v7, v0

    mul-float/2addr v7, v2

    float-to-int v7, v7

    if-gt v7, v1, :cond_3

    sub-int/2addr v1, v7

    div-int/lit8 v2, v1, 0x2

    add-int v1, v2, v7

    :goto_1
    invoke-virtual {v6, v2, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/RoundImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/RoundImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v2, v0

    cmpl-float v0, v1, v2

    if-lez v0, :cond_4

    div-float v0, v2, v8

    :goto_2
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    div-float/2addr v1, v8

    div-float/2addr v2, v8

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v2, v0, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    sget-object v0, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/RoundImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v4, v9, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_3
    int-to-float v7, v1

    div-float v2, v7, v2

    float-to-int v7, v2

    sub-int/2addr v0, v7

    div-int/lit8 v2, v0, 0x2

    add-int v0, v2, v7

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_1

    :cond_4
    div-float v0, v1, v8

    goto :goto_2

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method
