.class public Lcom/alipay/android/phone/home/widget/AdCornerView;
.super Lcom/alipay/mobile/commonui/widget/APImageView;
.source "AdCornerView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->a:Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/AdCornerView;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->a:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/AdCornerView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->a:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/AdCornerView;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v1, 0x37

    const/16 v2, 0xff

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->b:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 40
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->c:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 44
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/AdCornerView;->getMeasuredWidth()I

    move-result v1

    .line 56
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/AdCornerView;->getMeasuredHeight()I

    move-result v0

    .line 57
    if-le v1, v0, :cond_1

    .line 59
    :goto_0
    mul-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x9

    .line 60
    mul-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x9

    .line 61
    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    .line 63
    mul-int/lit8 v4, v3, 0x7

    div-int/lit8 v4, v4, 0x8

    sub-int v4, v1, v4

    .line 64
    mul-int/lit8 v5, v3, 0x7

    div-int/lit8 v5, v5, 0x8

    .line 65
    iget-object v6, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_0

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->a:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->a:Ljava/lang/String;

    .line 78
    :cond_0
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 79
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 80
    sub-int v2, v1, v2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v6, v2, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 81
    sub-int v2, v1, v3

    int-to-float v2, v2

    invoke-virtual {v6, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    int-to-float v2, v1

    int-to-float v7, v3

    invoke-virtual {v6, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    int-to-float v1, v1

    add-int v2, v3, v3

    int-to-float v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 84
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 87
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    const/high16 v0, 0x42340000    # 45.0f

    int-to-float v1, v4

    int-to-float v2, v5

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 89
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->a:Ljava/lang/String;

    int-to-float v1, v4

    int-to-float v2, v5

    iget-object v3, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 90
    const/high16 v0, -0x3dcc0000    # -45.0f

    int-to-float v1, v4

    int-to-float v2, v5

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 92
    invoke-virtual {p1, v10, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    return-void

    :cond_1
    move v0, v1

    .line 57
    goto/16 :goto_0
.end method

.method public setAdvertText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/AdCornerView;->a:Ljava/lang/String;

    .line 50
    return-void
.end method
