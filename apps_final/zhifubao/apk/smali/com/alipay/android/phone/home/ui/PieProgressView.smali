.class public Lcom/alipay/android/phone/home/ui/PieProgressView;
.super Landroid/view/View;
.source "PieProgressView.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alipay/android/phone/home/ui/PieProgressView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/ui/PieProgressView;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/home/ui/PieProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/phone/home/ui/PieProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/16 v4, 0x10e

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, -0xffff01

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v4, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->d:I

    .line 27
    iput v1, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->e:I

    .line 40
    sget-object v0, Lcom/alipay/android/phone/openplatform/R$styleable;->d:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->e:I

    .line 42
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->d:I

    .line 43
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->c:I

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->b:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget v0, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/PieProgressView;->setProgress(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->c:I

    return v0
.end method

.method public getStartAngle()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->d:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/16 v1, 0x64

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    .line 70
    iget v0, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->c:I

    if-le v0, v1, :cond_0

    .line 71
    iput v1, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->c:I

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget v0, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sub-float v3, v0, v2

    .line 75
    sget-object v0, Lcom/alipay/android/phone/home/ui/PieProgressView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->f:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/PieProgressView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/PieProgressView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/PieProgressView;->getWidth()I

    move-result v0

    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-direct {v1, v4, v4, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->f:Landroid/graphics/RectF;

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->f:Landroid/graphics/RectF;

    iget v0, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->d:I

    int-to-float v2, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 77
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    return-void

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/PieProgressView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->c:I

    .line 52
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/PieProgressView;->invalidate()V

    .line 53
    return-void
.end method

.method public setStartAngle(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/alipay/android/phone/home/ui/PieProgressView;->d:I

    .line 61
    return-void
.end method
