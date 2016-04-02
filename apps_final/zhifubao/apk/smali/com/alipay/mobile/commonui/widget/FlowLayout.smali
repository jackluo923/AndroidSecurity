.class public Lcom/alipay/mobile/commonui/widget/FlowLayout;
.super Landroid/view/ViewGroup;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v1, 0x14

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/FlowLayout;->a:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/FlowLayout;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/FlowLayout;->a:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/FlowLayout;->b:I

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/FlowLayout;->generateDefaultLayoutParams()Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/FlowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/FlowLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getRowHeight()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/FlowLayout;->d:I

    return v0
.end method

.method public final getRows()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/FlowLayout;->c:I

    return v0
.end method

.method protected measureChild(II)V
    .locals 23

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/commonui/widget/FlowLayout;->getChildCount()I

    move-result v18

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v15, v4

    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alipay/mobile/commonui/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/FlowLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/mobile/commonui/widget/FlowLayout;->a:I

    iput v5, v4, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/mobile/commonui/widget/FlowLayout;->a:I

    iput v5, v4, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/mobile/commonui/widget/FlowLayout;->b:I

    iput v5, v4, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/mobile/commonui/widget/FlowLayout;->b:I

    iput v5, v4, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->bottomMargin:I

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v7, v4, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v7

    iget v7, v4, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rightMargin:I

    add-int v10, v5, v7

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v7, v4, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v7

    iget v7, v4, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->bottomMargin:I

    add-int v9, v5, v7

    add-int v5, v8, v10

    if-le v5, v14, :cond_1

    const/4 v5, 0x0

    move v7, v5

    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v7, v5, :cond_0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;

    iput v12, v6, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rowHeight:I

    iput v11, v6, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rowTop:I

    iget v0, v6, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rowTop:I

    move/from16 v21, v0

    iget v0, v6, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rowHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v6, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rowMidLine:I

    iget v0, v6, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rowMidLine:I

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v6, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->top:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_1

    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v4, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->leftMargin:I

    iput v6, v4, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->left:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int v4, v11, v12

    move v6, v9

    move v7, v10

    move v8, v4

    move v9, v5

    :goto_2
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v18, -0x1

    if-ne v15, v4, :cond_4

    const/4 v4, 0x0

    move v10, v4

    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_3

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;

    iput v6, v5, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rowHeight:I

    iput v8, v5, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rowTop:I

    iget v11, v5, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rowTop:I

    iget v12, v5, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rowHeight:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iput v11, v5, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rowMidLine:I

    iget v11, v5, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->rowMidLine:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    iput v11, v5, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->top:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_3

    :cond_1
    if-nez v8, :cond_2

    iget v5, v4, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->leftMargin:I

    :goto_4
    iput v5, v4, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->left:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int v5, v8, v10

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v7, v5

    move v8, v11

    move v9, v6

    move v6, v4

    goto :goto_2

    :cond_2
    move v5, v8

    goto :goto_4

    :cond_3
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/2addr v8, v6

    :cond_4
    :goto_5
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    move v12, v6

    move v11, v8

    move v8, v7

    move v6, v9

    goto/16 :goto_0

    :cond_5
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v16

    if-ne v0, v4, :cond_6

    move v6, v14

    :cond_6
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v0, v4, :cond_7

    move v11, v13

    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lcom/alipay/mobile/commonui/widget/FlowLayout;->setMeasuredDimension(II)V

    return-void

    :cond_8
    move v7, v8

    move v9, v6

    move v8, v11

    move v6, v12

    goto :goto_5
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/FlowLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;

    iget v4, v0, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->left:I

    iget v5, v0, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->top:I

    iget v6, v0, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v0, v0, Lcom/alipay/mobile/commonui/widget/FlowLayout$LayoutParams;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/FlowLayout;->measureChild(II)V

    return-void
.end method
