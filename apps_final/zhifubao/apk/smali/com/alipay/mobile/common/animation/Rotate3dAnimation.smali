.class public Lcom/alipay/mobile/common/animation/Rotate3dAnimation;
.super Landroid/view/animation/Animation;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private f:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->a:F

    iput p2, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->b:F

    iput p3, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->c:F

    iput p4, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->d:F

    iput p5, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->e:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 11

    const/4 v10, 0x0

    iget v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->a:F

    iget v1, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->c:F

    iget v2, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->d:F

    iget-object v3, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->f:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    iget v5, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->e:F

    float-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v3, v10, v10, v5}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->f:Landroid/graphics/Camera;

    return-void
.end method
