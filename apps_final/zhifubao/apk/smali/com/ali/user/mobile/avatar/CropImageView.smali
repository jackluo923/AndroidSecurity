.class public Lcom/ali/user/mobile/avatar/CropImageView;
.super Landroid/widget/FrameLayout;
.source "CropImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static final DRAG:I = 0x1

.field static final MAX_SCALE:F = 10.0f

.field static final NONE:I = 0x0

.field static final ZOOM:I = 0x2


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/util/DisplayMetrics;

.field private h:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field mMatrix:Landroid/graphics/Matrix;

.field mid:Landroid/graphics/PointF;

.field minScaleR:F

.field mode:I

.field private n:I

.field private o:I

.field oldDist:F

.field private p:Z

.field prev:Landroid/graphics/PointF;

.field savedMatrix:Landroid/graphics/Matrix;

.field public tmp_avatarDirStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->i:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->tmp_avatarDirStr:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->j:Z

    .line 319
    iput-boolean v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->l:Z

    .line 438
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 439
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 447
    iput v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mode:I

    .line 449
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->prev:Landroid/graphics/PointF;

    .line 450
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mid:Landroid/graphics/PointF;

    .line 451
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->oldDist:F

    .line 453
    iput v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->m:I

    .line 454
    const/4 v0, 0x4

    iput v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->n:I

    .line 455
    iput v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->o:I

    .line 456
    iput-boolean v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->p:Z

    .line 67
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->a()V

    .line 69
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->b()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->i:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->tmp_avatarDirStr:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->j:Z

    .line 319
    iput-boolean v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->l:Z

    .line 438
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 439
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 447
    iput v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mode:I

    .line 449
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->prev:Landroid/graphics/PointF;

    .line 450
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mid:Landroid/graphics/PointF;

    .line 451
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->oldDist:F

    .line 453
    iput v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->m:I

    .line 454
    const/4 v0, 0x4

    iput v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->n:I

    .line 455
    iput v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->o:I

    .line 456
    iput-boolean v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->p:Z

    .line 74
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->a()V

    .line 76
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->d:I

    .line 77
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->e:I

    .line 79
    iget v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->d:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/CropImageView;->setMinimumWidth(I)V

    .line 80
    iget v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->e:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/CropImageView;->setMinimumHeight(I)V

    .line 82
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->b()V

    .line 83
    return-void
.end method

.method private static a(Landroid/view/MotionEvent;)F
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 514
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 515
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 516
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    .line 92
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    const-string/jumbo v1, "window"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 93
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 95
    return-void
.end method

.method private a(FF)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x2

    .line 526
    const/16 v2, 0x9

    new-array v3, v2, [F

    .line 527
    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 528
    aget v2, v3, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 529
    const/4 v2, 0x0

    .line 530
    iget v5, p0, Lcom/ali/user/mobile/avatar/CropImageView;->o:I

    packed-switch v5, :pswitch_data_0

    .line 548
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    :goto_1
    return v0

    .line 532
    :pswitch_0
    new-instance v2, Landroid/graphics/RectF;

    aget v5, v3, v8

    aget v6, v3, v9

    aget v7, v3, v8

    iget v8, p0, Lcom/ali/user/mobile/avatar/CropImageView;->b:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    .line 533
    aget v3, v3, v9

    iget v8, p0, Lcom/ali/user/mobile/avatar/CropImageView;->c:I

    int-to-float v8, v8

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    .line 532
    invoke-direct {v2, v5, v6, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 536
    :pswitch_1
    new-instance v2, Landroid/graphics/RectF;

    aget v5, v3, v8

    aget v6, v3, v9

    iget v7, p0, Lcom/ali/user/mobile/avatar/CropImageView;->b:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    aget v7, v3, v8

    iget v8, p0, Lcom/ali/user/mobile/avatar/CropImageView;->c:I

    int-to-float v8, v8

    .line 537
    mul-float/2addr v4, v8

    add-float/2addr v4, v7

    aget v3, v3, v9

    .line 536
    invoke-direct {v2, v5, v6, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 540
    :pswitch_2
    new-instance v2, Landroid/graphics/RectF;

    aget v5, v3, v8

    iget v6, p0, Lcom/ali/user/mobile/avatar/CropImageView;->b:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    aget v6, v3, v9

    iget v7, p0, Lcom/ali/user/mobile/avatar/CropImageView;->c:I

    int-to-float v7, v7

    mul-float/2addr v4, v7

    sub-float v4, v6, v4

    .line 541
    aget v6, v3, v8

    aget v3, v3, v9

    .line 540
    invoke-direct {v2, v5, v4, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 544
    :pswitch_3
    new-instance v2, Landroid/graphics/RectF;

    aget v5, v3, v8

    iget v6, p0, Lcom/ali/user/mobile/avatar/CropImageView;->c:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    aget v6, v3, v9

    aget v7, v3, v8

    aget v3, v3, v9

    iget v8, p0, Lcom/ali/user/mobile/avatar/CropImageView;->b:I

    int-to-float v8, v8

    .line 545
    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    .line 544
    invoke-direct {v2, v5, v6, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 551
    goto :goto_1

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, p0}, Lcom/ali/user/mobile/avatar/CropImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/CropImageView;->setLongClickable(Z)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/CropImageView;->setFocusable(Z)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/avatar/CropImageView;->setFocusableInTouchMode(Z)V

    .line 105
    :try_start_0
    const-string/jumbo v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->m:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 323
    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->j:Z

    if-eqz v0, :cond_0

    .line 325
    iget v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->d:I

    .line 326
    iget v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->e:I

    .line 332
    :goto_0
    if-le v1, v0, :cond_1

    .line 334
    int-to-float v0, v1

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 338
    :goto_1
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 340
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    .line 341
    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/ali/user/mobile/avatar/CropImageView;->c:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    mul-float/2addr v0, v4

    sub-float v0, v2, v0

    .line 342
    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 344
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 329
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 336
    :cond_1
    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1
.end method

.method private d()Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 364
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->c:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 365
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 366
    return-object v0
.end method

.method public static readPictureDegree(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 175
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v2, "Orientation"

    .line 177
    const/4 v3, 0x1

    .line 176
    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    packed-switch v1, :pswitch_data_0

    .line 192
    :goto_0
    :pswitch_0
    return v0

    .line 180
    :pswitch_1
    const/16 v0, 0x5a

    .line 181
    goto :goto_0

    .line 183
    :pswitch_2
    const/16 v0, 0xb4

    .line 184
    goto :goto_0

    .line 186
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 196
    if-nez p1, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    .line 199
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 200
    int-to-float v0, p0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    .line 201
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 575
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 576
    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 577
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/ali/user/mobile/avatar/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ali/user/mobile/avatar/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 578
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 580
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 581
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 585
    if-eqz p2, :cond_6

    .line 587
    iget-object v4, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 588
    int-to-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    .line 589
    int-to-float v4, v4

    sub-float v1, v4, v1

    iget v4, p0, Lcom/ali/user/mobile/avatar/CropImageView;->m:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v7

    .line 590
    iget v4, v2, Landroid/graphics/RectF;->top:F

    .line 589
    sub-float/2addr v1, v4

    .line 598
    :goto_0
    if-eqz p1, :cond_0

    .line 599
    iget-object v4, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 600
    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    .line 601
    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v7

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    .line 608
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 609
    iget v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->o:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->o:I

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    iget v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/ali/user/mobile/avatar/CropImageView;->c:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 612
    :cond_1
    return-void

    .line 591
    :cond_2
    iget v1, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    .line 592
    iget v1, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_0

    .line 593
    :cond_3
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    .line 594
    iget v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->c:I

    int-to-float v1, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    goto :goto_0

    .line 602
    :cond_4
    iget v5, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v0

    if-lez v5, :cond_5

    .line 603
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_1

    .line 604
    :cond_5
    iget v5, v2, Landroid/graphics/RectF;->right:F

    int-to-float v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 605
    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v7

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_0
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 253
    .line 256
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 258
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 260
    const/16 v0, 0x1400

    :try_start_2
    new-array v0, v0, [B

    .line 262
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 265
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 271
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 276
    return-void

    .line 263
    :cond_0
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v0, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 267
    :goto_1
    if-eqz v2, :cond_1

    .line 269
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 271
    :cond_1
    if-eqz v1, :cond_2

    .line 273
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 275
    :cond_2
    throw v0

    .line 266
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 284
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 285
    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 289
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->f:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 290
    const/high16 v1, 0x66000000

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 291
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 292
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 294
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmap(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 230
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 231
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 232
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 233
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v3, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v2, v3

    .line 234
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v3, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v1, v3

    .line 235
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 237
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 238
    iget-object v3, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 239
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 240
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 241
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 244
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    .line 245
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 207
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 208
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 209
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 210
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v1, v2

    .line 211
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v0, v2

    .line 212
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 214
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 215
    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 216
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 217
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 218
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 219
    const/4 v0, 0x0

    .line 221
    :try_start_0
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 222
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCropBitmap(Z)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x84

    .line 370
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 386
    :goto_0
    return-object v0

    .line 372
    :cond_0
    iget v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->d:I

    iget v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->e:I

    .line 373
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 372
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 374
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 375
    iget-object v3, p0, Lcom/ali/user/mobile/avatar/CropImageView;->f:Landroid/graphics/RectF;

    if-eqz v3, :cond_1

    .line 376
    iget-object v3, p0, Lcom/ali/user/mobile/avatar/CropImageView;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/ali/user/mobile/avatar/CropImageView;->f:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 378
    :cond_1
    iget-object v3, p0, Lcom/ali/user/mobile/avatar/CropImageView;->a:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 379
    if-nez p1, :cond_2

    .line 380
    const-string/jumbo v0, "AvatarSetting"

    const-string/jumbo v2, "reszieBitmap"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0, v1, v5, v5}, Lcom/ali/user/mobile/avatar/CropImageView;->reszieBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 382
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 385
    :cond_2
    const-string/jumbo v0, "AvatarSetting"

    const-string/jumbo v2, "do not reszieBitmap"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 386
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 299
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 300
    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->k:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    .line 301
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 302
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/ali/user/mobile/avatar/CropImageView;->d:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    .line 303
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/ali/user/mobile/avatar/CropImageView;->e:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    .line 304
    iget v5, p0, Lcom/ali/user/mobile/avatar/CropImageView;->d:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/ali/user/mobile/avatar/CropImageView;->e:I

    int-to-float v5, v5

    .line 305
    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 302
    iput-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->f:Landroid/graphics/RectF;

    .line 306
    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->l:Z

    if-eqz v0, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->c()V

    .line 308
    iput-boolean v7, p0, Lcom/ali/user/mobile/avatar/CropImageView;->l:Z

    .line 311
    :cond_1
    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->k:Z

    if-eqz v0, :cond_2

    .line 312
    iput-boolean v7, p0, Lcom/ali/user/mobile/avatar/CropImageView;->k:Z

    .line 313
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 314
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->c()V

    .line 317
    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x2

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 464
    iget-boolean v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->p:Z

    if-nez v0, :cond_0

    .line 510
    :goto_0
    return v4

    .line 468
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 508
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    aget v1, v0, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mode:I

    if-ne v1, v7, :cond_3

    iget v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->minScaleR:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->minScaleR:F

    iget v3, p0, Lcom/ali/user/mobile/avatar/CropImageView;->minScaleR:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0, v4, v4}, Lcom/ali/user/mobile/avatar/CropImageView;->center(ZZ)V

    :cond_2
    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 509
    :cond_3
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->invalidate()V

    goto :goto_0

    .line 471
    :pswitch_1
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 472
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->prev:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 473
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/avatar/CropImageView;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 474
    iput v4, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mode:I

    goto :goto_1

    .line 476
    :cond_4
    iput v5, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mode:I

    goto :goto_1

    .line 480
    :pswitch_2
    invoke-static {p2}, Lcom/ali/user/mobile/avatar/CropImageView;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->oldDist:F

    .line 481
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/avatar/CropImageView;->a(FF)Z

    move-result v0

    .line 482
    iget v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->oldDist:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 484
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mid:Landroid/graphics/PointF;

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v1, v8

    div-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 485
    iput v7, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mode:I

    goto/16 :goto_1

    .line 490
    :pswitch_3
    iput v5, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mode:I

    goto/16 :goto_1

    .line 493
    :pswitch_4
    iget v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mode:I

    if-ne v0, v4, :cond_5

    .line 495
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 496
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->prev:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 497
    iget-object v3, p0, Lcom/ali/user/mobile/avatar/CropImageView;->prev:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 496
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 498
    :cond_5
    iget v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mode:I

    if-ne v0, v7, :cond_1

    .line 499
    invoke-static {p2}, Lcom/ali/user/mobile/avatar/CropImageView;->a(Landroid/view/MotionEvent;)F

    move-result v0

    .line 500
    cmpl-float v1, v0, v6

    if-lez v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 502
    iget v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->oldDist:F

    div-float/2addr v0, v1

    .line 503
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mid:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mid:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_1

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 410
    :cond_0
    return-void
.end method

.method public resizeBitmap(F)V
    .locals 3

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->d()Landroid/graphics/RectF;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v1, p1, p1, v2, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 350
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->postInvalidate()V

    .line 351
    return-void
.end method

.method public reszieBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 392
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 394
    int-to-float v0, p2

    int-to-float v2, v3

    div-float/2addr v0, v2

    .line 395
    int-to-float v2, p3

    int-to-float v5, v4

    div-float/2addr v2, v5

    .line 397
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 398
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 401
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    .line 400
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    return-object v0
.end method

.method public rotateBitmap(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x42b40000    # 90.0f

    .line 354
    invoke-direct {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->d()Landroid/graphics/RectF;

    move-result-object v0

    .line 355
    iget v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->n:I

    rem-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->o:I

    .line 356
    iget v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->o:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->o:I

    .line 357
    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v1, v3, v2, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 358
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 359
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->postInvalidate()V

    .line 361
    return-void
.end method

.method setActivity(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)V
    .locals 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->h:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->h:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "userdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "useravatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->tmp_avatarDirStr:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->h:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "userdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "useravatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "__tmp_avatar.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->i:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    iput-boolean p2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->j:Z

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->k:Z

    .line 139
    iput-object p1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->a:Landroid/graphics/Bitmap;

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->b:I

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/avatar/CropImageView;->c:I

    .line 142
    invoke-virtual {p0}, Lcom/ali/user/mobile/avatar/CropImageView;->requestLayout()V

    goto :goto_0
.end method

.method public setBitmap(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 146
    iput-boolean p2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->j:Z

    .line 148
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 149
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 150
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 151
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v1, v2

    .line 152
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v0, v2

    .line 153
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 155
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 156
    iget-object v2, p0, Lcom/ali/user/mobile/avatar/CropImageView;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 157
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 158
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 159
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 160
    const/4 v0, 0x0

    .line 162
    :try_start_0
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    :goto_0
    invoke-static {p1}, Lcom/ali/user/mobile/avatar/CropImageView;->readPictureDegree(Ljava/lang/String;)I

    move-result v1

    .line 168
    invoke-static {v1, v0}, Lcom/ali/user/mobile/avatar/CropImageView;->rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    invoke-virtual {p0, v0, p2}, Lcom/ali/user/mobile/avatar/CropImageView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 170
    return-void

    .line 163
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCanEdit(Z)V
    .locals 0

    .prologue
    .line 459
    iput-boolean p1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->p:Z

    .line 460
    return-void
.end method

.method public writeBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 424
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->tmp_avatarDirStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 428
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/CropImageView;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 431
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 430
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 432
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 433
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 434
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
