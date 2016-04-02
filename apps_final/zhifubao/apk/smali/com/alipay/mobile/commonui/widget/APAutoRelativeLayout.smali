.class public Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# instance fields
.field currentBottom:I

.field mBottom:I

.field mLeft:I

.field mRight:I

.field mTop:I

.field map:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->map:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->map:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->map:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public getPosition(II)I
    .locals 2

    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->getPosition(II)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout$Position;

    if-eqz v0, :cond_0

    iget v4, v0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout$Position;->left:I

    iget v5, v0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout$Position;->top:I

    iget v6, v0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout$Position;->right:I

    iget v0, v0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout$Position;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mLeft:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mRight:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mTop:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mBottom:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->getChildCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v1, v3, :cond_2

    new-instance v4, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout$Position;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout$Position;-><init>(Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout$1;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    sub-int v6, v1, v0

    invoke-virtual {p0, v6, v1}, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->getPosition(II)I

    move-result v6

    iput v6, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mLeft:I

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mLeft:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mRight:I

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mRight:I

    if-lt v6, v2, :cond_1

    sub-int v0, v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->getPosition(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mLeft:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mLeft:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v0, v6

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mRight:I

    if-lez v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mTop:I

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v0, v6

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mTop:I

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "moreTop"

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mTop:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/ui/R$dimen;->social_tag_search_extra_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mTop:I

    :cond_0
    move v0, v1

    :cond_1
    iget v6, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mTop:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mBottom:I

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mLeft:I

    iput v6, v4, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout$Position;->left:I

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mTop:I

    iput v6, v4, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout$Position;->top:I

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mRight:I

    iput v6, v4, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout$Position;->right:I

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mBottom:I

    iput v6, v4, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout$Position;->bottom:I

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->map:Ljava/util/Hashtable;

    invoke-virtual {v6, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->mBottom:I

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/commonui/widget/APAutoRelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method
