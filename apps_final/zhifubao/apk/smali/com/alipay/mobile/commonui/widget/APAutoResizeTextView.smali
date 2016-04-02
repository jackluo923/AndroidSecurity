.class public Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;
.super Lcom/alipay/mobile/commonui/widget/APTextView;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->b:F

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->b:F

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->c:F

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->b:F

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->b:F

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->c:F

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private a(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    cmpl-float v2, v0, v4

    if-nez v2, :cond_2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->b:F

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->setTextSize(IF)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    int-to-float v0, p1

    goto :goto_0

    :cond_2
    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->getTextSize()F

    move-result v2

    div-float v1, v2, v1

    invoke-virtual {p0, v3, v1}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->setTextSize(IF)V

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->b:F

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->b:F

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->setTextSize(IF)V

    goto :goto_1
.end method


# virtual methods
.method public reSizeText()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->setAutoTextSize()V

    return-void
.end method

.method public resetTextSize()V
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->c:F

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->b:F

    const/4 v0, 0x0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->b:F

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->setTextSize(IF)V

    return-void
.end method

.method public setAutoTextSize()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a(I)V

    return-void
.end method

.method public setAutoTextSize(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->a(I)V

    return-void
.end method
