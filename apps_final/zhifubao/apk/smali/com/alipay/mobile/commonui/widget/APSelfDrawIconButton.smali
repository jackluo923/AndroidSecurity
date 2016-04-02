.class public Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;
.super Lcom/alipay/mobile/commonui/widget/APView;


# static fields
.field public static final ICON_ARROW:I = 0x1

.field public static final ICON_CLOSE:I


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APView;-><init>(Landroid/content/Context;)V

    const v0, -0x7a800

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->c:I

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0x7a800

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->c:I

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, -0x7a800

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->c:I

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->selfdraw_line_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->c:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->d:I

    int-to-float v3, v0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->e:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->d:I

    int-to-float v3, v0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->e:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->c:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->d:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v5, v0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->e:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    iget-object v7, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->d:I

    add-int/lit8 v0, v0, -0x4

    int-to-float v1, v0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->e:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->e:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/commonui/widget/APView;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->d:I

    if-ne v0, v1, :cond_0

    sub-int v0, p5, p3

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->e:I

    if-eq v0, v1, :cond_1

    :cond_0
    sub-int v0, p4, p2

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->d:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->e:I

    :cond_1
    return-void
.end method

.method public setColor(I)V
    .locals 2

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->b:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->c:I

    return-void
.end method
