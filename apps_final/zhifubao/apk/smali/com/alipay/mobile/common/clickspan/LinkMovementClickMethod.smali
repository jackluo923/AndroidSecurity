.class public Lcom/alipay/mobile/common/clickspan/LinkMovementClickMethod;
.super Landroid/text/method/LinkMovementMethod;


# static fields
.field private static b:Lcom/alipay/mobile/common/clickspan/LinkMovementClickMethod;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/common/clickspan/LinkMovementClickMethod;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/clickspan/LinkMovementClickMethod;->b:Lcom/alipay/mobile/common/clickspan/LinkMovementClickMethod;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/clickspan/LinkMovementClickMethod;

    invoke-direct {v0}, Lcom/alipay/mobile/common/clickspan/LinkMovementClickMethod;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/clickspan/LinkMovementClickMethod;->b:Lcom/alipay/mobile/common/clickspan/LinkMovementClickMethod;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/clickspan/LinkMovementClickMethod;->b:Lcom/alipay/mobile/common/clickspan/LinkMovementClickMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v2, :cond_0

    if-nez v4, :cond_4

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    int-to-float v1, v0

    invoke-virtual {v5, v6, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    int-to-float v6, v0

    cmpl-float v5, v6, v5

    if-lez v5, :cond_5

    :goto_0
    const-class v1, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v0, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    array-length v1, v0

    if-eqz v1, :cond_3

    if-ne v4, v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alipay/mobile/common/clickspan/LinkMovementClickMethod;->a:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_1
    move v0, v2

    :goto_2
    return v0

    :cond_2
    if-nez v4, :cond_1

    aget-object v1, v0, v3

    invoke-interface {p2, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    aget-object v0, v0, v3

    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/clickspan/LinkMovementClickMethod;->a:J

    goto :goto_1

    :cond_3
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    move v0, v3

    goto :goto_2

    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method
