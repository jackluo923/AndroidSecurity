.class public Lcom/alipay/mobile/commonui/widget/APLineGroupView;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APLineGroupItemChanged;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static a(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;

    :goto_0
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method private a()V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APLineGroupView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APLineGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/commonui/widget/APLineGroupView;->a(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APLineGroupView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/APLineGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/commonui/widget/APLineGroupView;->a(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    if-nez v0, :cond_3

    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_3

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;->setItemPositionStyle(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    const/16 v4, 0x11

    invoke-interface {v3, v4}, Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;->setItemPositionStyle(I)V

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_5

    const/16 v4, 0x12

    invoke-interface {v3, v4}, Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;->setItemPositionStyle(I)V

    goto :goto_2

    :cond_5
    const/16 v4, 0x13

    invoke-interface {v3, v4}, Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;->setItemPositionStyle(I)V

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APLineGroupView;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/mobile/commonui/widget/APLineGroupView;->addView(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method public itemChanged(Landroid/view/View;Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APLineGroupView;->a()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->onFinishInflate()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APLineGroupView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "onFinishInflate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APLineGroupView;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APLineGroupView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "onLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
