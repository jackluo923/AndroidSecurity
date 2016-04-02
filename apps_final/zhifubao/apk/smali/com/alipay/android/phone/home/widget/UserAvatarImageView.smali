.class public Lcom/alipay/android/phone/home/widget/UserAvatarImageView;
.super Lcom/alipay/mobile/commonui/widget/APImageView;
.source "UserAvatarImageView.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v2, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->a:Z

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->b:I

    .line 30
    iput v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    .line 32
    iput v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    .line 33
    iput v2, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->e:I

    .line 37
    if-eqz p2, :cond_0

    sget-object v0, Lcom/alipay/android/phone/openplatform/R$styleable;->e:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->a:Z

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->a:Z

    const/4 v1, 0x2

    iget v2, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->b:I

    const/4 v1, 0x1

    iget v2, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    const/4 v1, 0x3

    iget v2, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    const/4 v1, 0x4

    iget v2, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->e:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mType=>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mStrokeWidth=>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isShowStroke=>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    iget v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    goto :goto_0
.end method

.method private a(Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget v0, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->b:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    return-void
.end method


# virtual methods
.method public getStrokeBackgroundColor()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->b:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    return v0
.end method

.method public getmRoundRadius()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    return v0
.end method

.method public getmType()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->e:I

    return v0
.end method

.method public isShowStroke()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->a:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 71
    if-eqz v0, :cond_4

    .line 72
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 74
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 75
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v7, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 78
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v4, v3, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 81
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v0, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 83
    invoke-virtual {v4, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 84
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-direct {v0, v5, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 85
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 89
    iget v0, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->e:I

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 91
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rect_mSideLength=>"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rect_strokeWidth=>"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->a:Z

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 97
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->a(Landroid/graphics/Paint;)V

    .line 98
    new-instance v4, Landroid/graphics/RectF;

    iget v6, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    int-to-float v6, v6

    iget v7, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    int-to-float v7, v7

    iget v8, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    int-to-float v8, v8

    sub-float/2addr v1, v8

    iget v8, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    int-to-float v8, v8

    sub-float/2addr v2, v8

    invoke-direct {v4, v6, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 99
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 100
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 105
    :pswitch_1
    cmpg-float v0, v1, v2

    if-gez v0, :cond_1

    div-float v0, v1, v8

    .line 106
    :goto_1
    iget-boolean v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->a:Z

    if-eqz v1, :cond_2

    .line 108
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 109
    invoke-direct {p0, v1}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->a(Landroid/graphics/Paint;)V

    .line 110
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    iget v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-virtual {p1, v0, v0, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 105
    :cond_1
    div-float v0, v2, v8

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {p1, v0, v0, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 117
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mRoundRect_mRoundRadius=>"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->a:Z

    if-eqz v0, :cond_3

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 120
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->a(Landroid/graphics/Paint;)V

    .line 121
    new-instance v4, Landroid/graphics/RectF;

    iget v6, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    int-to-float v6, v6

    iget v7, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    int-to-float v7, v7

    iget v8, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    int-to-float v8, v8

    sub-float/2addr v1, v8

    iget v8, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    int-to-float v8, v8

    sub-float/2addr v2, v8

    invoke-direct {v4, v6, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 122
    iget v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 123
    iget v0, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    int-to-float v1, v1

    invoke-virtual {p1, v4, v0, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 125
    :cond_3
    iget v0, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    int-to-float v1, v1

    invoke-virtual {p1, v3, v0, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 129
    :cond_4
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIsShowStroke(Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->a:Z

    .line 158
    return-void
.end method

.method public setStrokeBackgroundColor(I)V
    .locals 0

    .prologue
    .line 173
    iput p1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->b:I

    .line 174
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0

    .prologue
    .line 149
    iput p1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->c:I

    .line 150
    return-void
.end method

.method public setmRoundRadius(I)V
    .locals 0

    .prologue
    .line 165
    iput p1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->d:I

    .line 166
    return-void
.end method

.method public setmType(I)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->e:I

    .line 142
    return-void
.end method
