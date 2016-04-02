.class public Lcom/alipay/mobile/mpass/badge/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 43
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static drawBadgeOnAppIcon(Landroid/content/Context;I)[B
    .locals 13

    .prologue
    const/4 v9, -0x1

    const/4 v12, 0x1

    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    if-nez v1, :cond_0

    .line 60
    new-instance v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeException;

    const-string/jumbo v1, "Could not load the app Icon"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeException;

    const-string/jumbo v1, "Could not load the app Icon"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    if-nez p1, :cond_1

    .line 64
    invoke-static {v1}, Lcom/alipay/mobile/mpass/badge/util/ImageUtil;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 69
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 77
    :cond_2
    invoke-virtual {v1, v0, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 80
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 81
    cmpl-float v5, v0, v1

    if-lez v5, :cond_5

    :goto_1
    const/high16 v1, 0x40800000    # 4.0f

    div-float v1, v0, v1

    .line 82
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v5, v0, v1

    .line 85
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v12}, Landroid/graphics/Paint;-><init>(I)V

    .line 88
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual {v6, v5, v1, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 90
    const/high16 v0, -0x10000

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    const/high16 v8, 0x40e00000    # 7.0f

    div-float/2addr v0, v8

    invoke-virtual {v6, v5, v1, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 93
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    float-to-double v8, v1

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v8, v10

    double-to-int v0, v8

    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v12, :cond_3

    .line 97
    float-to-double v8, v1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v0, v8

    .line 99
    :cond_3
    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 102
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v2, v0, v8, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 104
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 105
    const-string/jumbo v8, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 106
    float-to-double v8, v0

    const-wide/high16 v10, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v8, v10

    double-to-float v0, v8

    .line 108
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 109
    sub-float v0, v5, v0

    add-float/2addr v1, v3

    invoke-virtual {v6, v2, v0, v1, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 111
    invoke-static {v4}, Lcom/alipay/mobile/mpass/badge/util/ImageUtil;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 81
    goto :goto_1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    return-object v0

    .line 27
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method
