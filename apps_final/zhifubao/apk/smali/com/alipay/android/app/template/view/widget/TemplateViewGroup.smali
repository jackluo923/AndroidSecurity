.class public Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;
.super Landroid/view/ViewGroup;
.source "TemplateViewGroup.java"


# static fields
.field private static synthetic l:[I


# instance fields
.field protected a:Ljava/util/List;

.field protected b:Ljava/util/List;

.field protected c:I

.field protected d:I

.field private e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/RectF;

.field private h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

.field private i:Z

.field private j:Z

.field private k:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->e:Landroid/graphics/Path;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->f:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->g:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    .line 51
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->c:I

    .line 53
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->d:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->i:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->j:Z

    .line 60
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup$1;-><init>(Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->k:Ljava/util/Comparator;

    .line 184
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a()V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->e:Landroid/graphics/Path;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->f:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->g:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    .line 51
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->c:I

    .line 53
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->d:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->i:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->j:Z

    .line 60
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup$1;-><init>(Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->k:Ljava/util/Comparator;

    .line 179
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a()V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->e:Landroid/graphics/Path;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->f:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->g:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    .line 51
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->c:I

    .line 53
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->d:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->i:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->j:Z

    .line 60
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup$1;-><init>(Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->k:Ljava/util/Comparator;

    .line 174
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a()V

    .line 175
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 1317
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->i:Z

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1318
    return-void
.end method

.method private a(II)V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/high16 v5, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    .line 427
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    return-void

    .line 427
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 429
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 428
    check-cast v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 434
    iget v2, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    sget v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v2, v3, :cond_2

    .line 435
    iget v2, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    .line 436
    int-to-float v3, p1

    .line 435
    invoke-static {v2, v3}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v2

    float-to-int v2, v2

    .line 437
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v2, v3

    .line 438
    iget v3, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    invoke-static {v3}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 439
    iget v3, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    invoke-static {v3}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v3

    if-gt v3, v10, :cond_1

    if-le v2, p1, :cond_1

    move v2, p1

    :cond_1
    move v3, v4

    .line 448
    :goto_1
    iget v6, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    sget v8, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v6, v8, :cond_4

    .line 449
    iget v6, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    .line 450
    int-to-float v8, p2

    .line 449
    invoke-static {v6, v8}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v6

    float-to-int v6, v6

    .line 451
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 452
    iget v8, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    invoke-static {v8}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v8

    if-ne v8, v4, :cond_3

    .line 453
    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    invoke-static {v1}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v1

    if-gt v1, v10, :cond_3

    if-le v6, p2, :cond_3

    move v1, p2

    :goto_2
    move v6, v4

    .line 460
    :goto_3
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 461
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 463
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 444
    :cond_2
    iget-object v2, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->marquee:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v2, v3, :cond_5

    move v2, p1

    move v3, v4

    .line 446
    goto :goto_1

    :cond_3
    move v1, v6

    goto :goto_2

    :cond_4
    move v1, p2

    move v6, v5

    goto :goto_3

    :cond_5
    move v2, p1

    move v3, v5

    goto :goto_1
.end method

.method private a(IIIILcom/alipay/android/app/template/view/AlignType;Lcom/alipay/android/app/template/view/AlignType;)V
    .locals 16

    .prologue
    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    .line 529
    sub-int v1, p3, p1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingRight()I

    move-result v2

    sub-int v9, v1, v2

    .line 530
    sub-int v1, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int v10, v1, v2

    .line 532
    const/4 v6, 0x0

    .line 534
    const/4 v2, 0x0

    .line 535
    const/4 v5, 0x0

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v1

    .line 540
    if-eqz p6, :cond_0

    sget-object v3, Lcom/alipay/android/app/template/view/AlignType;->start:Lcom/alipay/android/app/template/view/AlignType;

    move-object/from16 v0, p6

    if-eq v0, v3, :cond_0

    .line 541
    const/4 v4, 0x0

    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    .line 545
    const/4 v1, 0x0

    move v7, v1

    move v8, v2

    :goto_0
    if-lt v7, v11, :cond_1

    .line 565
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->center:Lcom/alipay/android/app/template/view/AlignType;

    move-object/from16 v0, p6

    if-ne v0, v1, :cond_4

    .line 566
    sub-int v1, v10, v4

    div-int/lit8 v1, v1, 0x2

    .line 570
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v1

    .line 575
    :cond_0
    const/4 v2, 0x0

    .line 577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 579
    const/4 v3, 0x0

    move v4, v5

    move v7, v1

    move v5, v2

    :goto_2
    if-lt v3, v10, :cond_5

    .line 666
    return-void

    .line 546
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 548
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 547
    check-cast v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 550
    const/4 v3, 0x0

    .line 552
    iget v12, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    if-lez v12, :cond_2

    .line 553
    iget v3, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    add-int/lit8 v3, v3, 0x0

    .line 556
    :cond_2
    iget v12, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    if-lez v12, :cond_3

    .line 557
    iget v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    .line 559
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    add-int v3, v8, v1

    .line 560
    add-int/lit8 v1, v11, -0x1

    if-ne v7, v1, :cond_15

    .line 561
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 545
    :goto_3
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v4, v1

    move v8, v3

    goto :goto_0

    .line 568
    :cond_4
    sub-int v1, v10, v4

    goto :goto_1

    .line 580
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 582
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 581
    check-cast v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 584
    iget v8, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    .line 585
    iget v11, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    .line 587
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 589
    iget-boolean v13, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isSingleLine:Z

    .line 590
    const/4 v2, 0x0

    .line 592
    add-int/lit8 v1, v10, -0x1

    if-ge v3, v1, :cond_10

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    add-int/lit8 v14, v3, 0x1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 594
    if-eqz v1, :cond_10

    .line 596
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 595
    check-cast v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 599
    :goto_4
    if-eqz v1, :cond_9

    iget-boolean v2, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isSingleLine:Z

    if-nez v2, :cond_6

    iget-boolean v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->needWrap:Z

    if-eqz v1, :cond_9

    :cond_6
    const/4 v1, 0x1

    move v2, v1

    .line 602
    :goto_5
    add-int v1, v12, v8

    add-int/2addr v1, v11

    add-int/2addr v1, v6

    .line 604
    if-nez v13, :cond_7

    if-nez v2, :cond_7

    add-int/lit8 v2, v10, -0x1

    if-ne v3, v2, :cond_14

    .line 605
    :cond_7
    add-int/lit8 v11, v3, 0x1

    .line 607
    if-eqz p5, :cond_8

    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->left:Lcom/alipay/android/app/template/view/AlignType;

    move-object/from16 v0, p5

    if-eq v0, v2, :cond_8

    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->start:Lcom/alipay/android/app/template/view/AlignType;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_a

    .line 608
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v1

    move v3, v1

    .line 626
    :goto_6
    const/4 v6, 0x0

    move v8, v5

    move v5, v4

    .line 628
    :goto_7
    if-lt v5, v11, :cond_d

    move v5, v3

    .line 638
    :goto_8
    if-lt v4, v11, :cond_e

    .line 657
    add-int v3, v7, v8

    .line 658
    const/4 v2, 0x0

    .line 659
    add-int/lit8 v1, v4, -0x1

    move v5, v3

    move v3, v2

    move v2, v4

    move v4, v6

    .line 579
    :goto_9
    add-int/lit8 v1, v1, 0x1

    move v6, v4

    move v7, v5

    move v5, v3

    move v4, v2

    move v3, v1

    goto/16 :goto_2

    .line 599
    :cond_9
    const/4 v1, 0x0

    move v2, v1

    goto :goto_5

    .line 609
    :cond_a
    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->right:Lcom/alipay/android/app/template/view/AlignType;

    move-object/from16 v0, p5

    if-eq v0, v2, :cond_b

    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->end:Lcom/alipay/android/app/template/view/AlignType;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_c

    .line 610
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v2

    .line 611
    sub-int v3, v9, v1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v6

    if-le v3, v6, :cond_13

    .line 612
    sub-int v1, v9, v1

    .line 614
    :goto_a
    if-gez v1, :cond_11

    .line 615
    const/4 v1, 0x0

    move v3, v1

    goto :goto_6

    .line 618
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v2

    .line 619
    sub-int v3, v9, v1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v6

    if-le v3, v6, :cond_12

    .line 620
    sub-int v1, v9, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 622
    :goto_b
    if-gez v1, :cond_11

    .line 623
    const/4 v1, 0x0

    move v3, v1

    goto :goto_6

    .line 629
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 631
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 630
    check-cast v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 634
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 635
    iget v12, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    add-int/2addr v2, v12

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 634
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 628
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v8, v2

    goto :goto_7

    .line 639
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 641
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 640
    check-cast v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 642
    iget-object v3, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v12, Lcom/alipay/android/app/template/view/ViewType;->img:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v3, v12, :cond_f

    .line 644
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v8, v3

    iget v12, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    sub-int/2addr v3, v12

    iget v12, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v12

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v7

    .line 648
    :goto_c
    iget v12, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/2addr v12, v5

    .line 649
    iget v13, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    add-int/2addr v13, v3

    iget v14, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/2addr v14, v5

    .line 650
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v14, v15

    .line 651
    iget v15, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    add-int/2addr v3, v15

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v3, v15

    .line 648
    invoke-virtual {v1, v12, v13, v14, v3}, Landroid/view/View;->layout(IIII)V

    .line 653
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int v3, v5, v1

    .line 638
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    goto/16 :goto_8

    .line 646
    :cond_f
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v8, v3

    iget v12, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    sub-int/2addr v3, v12

    iget v12, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v12

    add-int/2addr v3, v7

    goto :goto_c

    :cond_10
    move-object v1, v2

    goto/16 :goto_4

    :cond_11
    move v3, v1

    goto/16 :goto_6

    :cond_12
    move v1, v2

    goto/16 :goto_b

    :cond_13
    move v1, v2

    goto/16 :goto_a

    :cond_14
    move v2, v4

    move v4, v1

    move v1, v3

    move v3, v5

    move v5, v7

    goto/16 :goto_9

    :cond_15
    move v1, v4

    goto/16 :goto_3
.end method

.method private a(Landroid/view/View;Lcom/alipay/android/app/template/util/TemplateLayoutParams;II)V
    .locals 8

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    iget-object v4, p2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    iget-object v5, p2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    .line 1024
    iget-object v6, p2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    iget-object v7, p2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    move v0, p3

    move v1, p4

    move-object v2, p1

    move-object v3, p2

    .line 1022
    invoke-static/range {v0 .. v7}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->initMarginAndPadding(IILandroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;[I[I[I[I)V

    .line 1025
    return-void
.end method

.method private a(IIZF)[I
    .locals 22

    .prologue
    .line 671
    const/4 v13, 0x0

    .line 673
    const/4 v12, 0x0

    .line 674
    const/4 v11, 0x0

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getChildCount()I

    move-result v15

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 679
    const/4 v3, 0x0

    move v14, v3

    :goto_0
    if-lt v14, v15, :cond_0

    .line 805
    const/4 v4, 0x0

    .line 806
    const/4 v6, 0x0

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    .line 808
    const/4 v3, 0x0

    move v9, v3

    move v10, v4

    move v7, v13

    move v11, v6

    move v6, v12

    :goto_1
    if-lt v9, v14, :cond_12

    .line 875
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v7, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    return-object v3

    .line 682
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 683
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1e

    .line 684
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 689
    iget-object v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v5, Lcom/alipay/android/app/template/view/ViewType;->dialog:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v4, v5, :cond_1e

    iget-object v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v5, Lcom/alipay/android/app/template/view/LayoutType;->NONE:Lcom/alipay/android/app/template/view/LayoutType;

    if-eq v4, v5, :cond_1e

    .line 690
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->d:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->c:I

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v3 .. v8}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->initMaxWidthHeight(Lcom/alipay/android/app/template/util/TemplateLayoutParams;IILandroid/view/View;II)V

    .line 696
    iget-object v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionType:Lcom/alipay/android/app/template/view/PositionType;

    sget-object v5, Lcom/alipay/android/app/template/view/PositionType;->absolute:Lcom/alipay/android/app/template/view/PositionType;

    if-ne v4, v5, :cond_1

    .line 697
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v6, v3, v1, v2}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a(Landroid/view/View;Lcom/alipay/android/app/template/util/TemplateLayoutParams;II)V

    move v3, v11

    .line 679
    :goto_2
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    move v11, v3

    goto :goto_0

    .line 700
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    instance-of v4, v6, Landroid/widget/ScrollView;

    if-nez v4, :cond_2

    .line 704
    iget-object v8, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    iget-object v9, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    .line 705
    iget-object v10, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    move/from16 v4, p1

    move/from16 v5, p2

    move-object v7, v3

    .line 703
    invoke-static/range {v4 .. v10}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->initMarginAndPadding(IILandroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;[I[I[I)V

    .line 708
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    .line 709
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    .line 711
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    .line 712
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    .line 713
    const/4 v4, 0x0

    .line 714
    iget v5, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    if-lez v5, :cond_3

    .line 715
    iget v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/lit8 v4, v4, 0x0

    .line 717
    :cond_3
    iget v5, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    if-lez v5, :cond_4

    .line 718
    iget v5, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 721
    :cond_4
    const/high16 v5, -0x80000000

    .line 722
    const/high16 v7, -0x80000000

    .line 723
    iget v0, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    move/from16 v17, v0

    .line 724
    iget v0, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    move/from16 v18, v0

    .line 725
    iget-object v0, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    move-object/from16 v19, v0

    sget-object v20, Lcom/alipay/android/app/template/view/LayoutType;->INLINE:Lcom/alipay/android/app/template/view/LayoutType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_b

    sget v19, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 726
    move/from16 v0, p1

    int-to-float v4, v0

    move/from16 v0, v17

    invoke-static {v0, v4}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v4

    float-to-int v4, v4

    .line 727
    add-int v5, v8, v9

    add-int/2addr v4, v5

    .line 728
    invoke-static/range {v17 .. v17}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v5

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v5, v8, :cond_5

    .line 729
    invoke-static/range {v17 .. v17}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v5

    const/16 v8, 0x64

    if-gt v5, v8, :cond_5

    move/from16 v0, p1

    if-le v4, v0, :cond_5

    move/from16 v4, p1

    .line 733
    :cond_5
    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v21, v5

    move v5, v4

    move/from16 v4, v21

    .line 747
    :goto_3
    const/4 v8, 0x0

    .line 748
    iget v9, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    const/16 v17, 0x0

    cmpl-float v9, v9, v17

    if-lez v9, :cond_e

    if-eqz p3, :cond_e

    const/4 v9, 0x1

    .line 749
    :goto_4
    if-eqz v9, :cond_6

    .line 750
    iget v7, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    mul-float v7, v7, p4

    float-to-int v8, v7

    .line 751
    const/high16 v7, 0x40000000    # 2.0f

    .line 754
    :cond_6
    sget v17, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    .line 756
    move/from16 v0, p2

    int-to-float v7, v0

    .line 755
    move/from16 v0, v18

    invoke-static {v0, v7}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v7

    float-to-int v7, v7

    .line 757
    add-int v9, v10, v16

    add-int/2addr v7, v9

    .line 758
    invoke-static/range {v18 .. v18}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v9

    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v9, v0, :cond_7

    .line 759
    invoke-static/range {v18 .. v18}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v9

    const/16 v17, 0x64

    move/from16 v0, v17

    if-gt v9, v0, :cond_7

    .line 760
    move/from16 v0, p2

    if-le v7, v0, :cond_7

    move/from16 v7, p2

    .line 764
    :cond_7
    const/high16 v9, 0x40000000    # 2.0f

    .line 765
    add-int/2addr v8, v7

    move v7, v9

    .line 771
    :goto_5
    iget v9, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->minHeightStr:I

    sget v17, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    move/from16 v0, v17

    if-eq v9, v0, :cond_8

    .line 772
    iget v9, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->minHeightStr:I

    .line 773
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    .line 772
    move/from16 v0, v17

    invoke-static {v9, v0}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v9

    float-to-int v9, v9

    .line 774
    add-int v10, v10, v16

    add-int/2addr v9, v10

    .line 775
    if-ge v8, v9, :cond_8

    move v8, v9

    .line 780
    :cond_8
    iget-object v9, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v10, Lcom/alipay/android/app/template/view/ViewType;->templatelist:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v9, v10, :cond_9

    .line 782
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v5, p1

    .line 785
    :cond_9
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 786
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 785
    invoke-virtual {v6, v4, v5}, Landroid/view/View;->measure(II)V

    .line 788
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->needWrap:Z

    .line 790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v4, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    const-string/jumbo v5, "normal"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 792
    iget-object v5, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v7, Lcom/alipay/android/app/template/view/LayoutType;->BLOCK:Lcom/alipay/android/app/template/view/LayoutType;

    if-eq v5, v7, :cond_a

    iget-object v5, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v7, Lcom/alipay/android/app/template/view/LayoutType;->WEBKIT_BOX:Lcom/alipay/android/app/template/view/LayoutType;

    if-ne v5, v7, :cond_10

    .line 794
    :cond_a
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->needWrap:Z

    .line 795
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 734
    :cond_b
    iget-object v8, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v9, Lcom/alipay/android/app/template/view/LayoutType;->BLOCK:Lcom/alipay/android/app/template/view/LayoutType;

    if-eq v8, v9, :cond_c

    .line 735
    iget-object v8, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v9, Lcom/alipay/android/app/template/view/LayoutType;->WEBKIT_BOX:Lcom/alipay/android/app/template/view/LayoutType;

    if-ne v8, v9, :cond_1d

    .line 736
    :cond_c
    sub-int v5, p1, v4

    .line 740
    iget-boolean v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mParentWebkitBox:Z

    if-eqz v4, :cond_d

    .line 741
    const/high16 v4, -0x80000000

    goto/16 :goto_3

    .line 743
    :cond_d
    const/high16 v4, 0x40000000    # 2.0f

    goto/16 :goto_3

    .line 748
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 766
    :cond_f
    if-eqz v9, :cond_1c

    .line 768
    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_5

    .line 796
    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v11

    iget v5, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, p1

    if-ge v0, v4, :cond_11

    .line 798
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->needWrap:Z

    .line 799
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v3, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto/16 :goto_2

    .line 801
    :cond_11
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v3, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, v11

    goto/16 :goto_2

    .line 809
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 812
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 813
    iget-object v5, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v8, Lcom/alipay/android/app/template/view/LayoutType;->BLOCK:Lcom/alipay/android/app/template/view/LayoutType;

    if-eq v5, v8, :cond_17

    iget-object v5, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v8, Lcom/alipay/android/app/template/view/LayoutType;->WEBKIT_BOX:Lcom/alipay/android/app/template/view/LayoutType;

    if-eq v5, v8, :cond_17

    const/4 v5, 0x0

    move v8, v5

    .line 814
    :goto_6
    if-lez v9, :cond_13

    .line 816
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    add-int/lit8 v12, v9, -0x1

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 817
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 818
    iget-object v12, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v13, Lcom/alipay/android/app/template/view/LayoutType;->BLOCK:Lcom/alipay/android/app/template/view/LayoutType;

    if-eq v12, v13, :cond_18

    iget-object v5, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v12, Lcom/alipay/android/app/template/view/LayoutType;->WEBKIT_BOX:Lcom/alipay/android/app/template/view/LayoutType;

    if-eq v5, v12, :cond_18

    const/4 v5, 0x0

    .line 819
    :goto_7
    if-eqz v5, :cond_13

    .line 820
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->needWrap:Z

    .line 823
    :cond_13
    const/4 v5, 0x1

    .line 826
    add-int/lit8 v12, v14, -0x1

    if-ge v9, v12, :cond_15

    .line 827
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    add-int/lit8 v12, v9, 0x1

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 828
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 829
    if-eqz v8, :cond_14

    .line 830
    const/4 v12, 0x1

    iput-boolean v12, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->needWrap:Z

    .line 832
    :cond_14
    iget-boolean v5, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->needWrap:Z

    .line 836
    :cond_15
    iget v12, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    add-int/lit8 v12, v12, 0x0

    .line 839
    iget v13, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    .line 841
    iget v13, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/lit8 v13, v13, 0x0

    .line 844
    iget v15, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    add-int/2addr v13, v15

    .line 846
    if-nez v8, :cond_16

    iget-boolean v8, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->needWrap:Z

    if-eqz v8, :cond_19

    if-eqz v5, :cond_19

    .line 847
    :cond_16
    add-int v5, v6, v11

    .line 848
    const/4 v8, 0x0

    .line 850
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v12

    add-int/2addr v5, v6

    .line 851
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 852
    add-int/2addr v3, v13

    .line 851
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 853
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 854
    const/4 v3, 0x0

    .line 855
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isSingleLine:Z

    move v4, v5

    move v5, v6

    move v6, v8

    .line 808
    :goto_8
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move v10, v3

    move v11, v6

    move v7, v5

    move v6, v4

    goto/16 :goto_1

    .line 813
    :cond_17
    const/4 v5, 0x1

    move v8, v5

    goto/16 :goto_6

    .line 818
    :cond_18
    const/4 v5, 0x1

    goto :goto_7

    .line 856
    :cond_19
    iget-boolean v8, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->needWrap:Z

    if-eqz v8, :cond_1a

    if-nez v5, :cond_1a

    .line 857
    add-int v4, v6, v11

    .line 858
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v6, v5, v12

    .line 859
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 860
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v13

    goto :goto_8

    .line 864
    :cond_1a
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v13

    add-int/2addr v5, v10

    .line 865
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v12

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 866
    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isSingleLine:Z

    .line 868
    add-int/lit8 v3, v14, -0x1

    if-ne v9, v3, :cond_1b

    .line 869
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 870
    add-int v3, v6, v8

    move v6, v8

    move/from16 v21, v3

    move v3, v5

    move v5, v4

    move/from16 v4, v21

    goto :goto_8

    :cond_1b
    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    goto :goto_8

    :cond_1c
    move/from16 v8, p2

    goto/16 :goto_5

    :cond_1d
    move v4, v5

    move/from16 v5, p1

    goto/16 :goto_3

    :cond_1e
    move v3, v11

    goto/16 :goto_2
.end method

.method private static synthetic b()[I
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->l:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/view/AlignType;->values()[Lcom/alipay/android/app/template/view/AlignType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->baseline:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->center:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->center_horizontal:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->center_vertical:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->end:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->left:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->right:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->start:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->l:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private b(II)[I
    .locals 20

    .prologue
    .line 1030
    const/4 v15, 0x0

    .line 1031
    const/4 v14, 0x0

    .line 1032
    const/4 v5, 0x0

    .line 1033
    const/4 v4, 0x0

    .line 1034
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1035
    const/4 v3, 0x0

    move v11, v3

    move v12, v4

    move v13, v5

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getChildCount()I

    move-result v3

    if-lt v11, v3, :cond_0

    .line 1102
    sub-int v3, p1, v13

    int-to-float v3, v3

    div-float v12, v3, v12

    .line 1105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    .line 1107
    const/4 v3, 0x0

    move v9, v3

    move v10, v14

    move v11, v15

    :goto_1
    if-lt v9, v13, :cond_7

    .line 1185
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v11, v3, v4

    const/4 v4, 0x1

    aput v10, v3, v4

    return-object v3

    .line 1038
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1039
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_12

    .line 1044
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1043
    check-cast v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 1046
    iget-object v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v5, Lcom/alipay/android/app/template/view/ViewType;->dialog:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v4, v5, :cond_12

    iget-object v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v5, Lcom/alipay/android/app/template/view/LayoutType;->NONE:Lcom/alipay/android/app/template/view/LayoutType;

    if-eq v4, v5, :cond_12

    .line 1047
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->d:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->c:I

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v3 .. v8}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->initMaxWidthHeight(Lcom/alipay/android/app/template/util/TemplateLayoutParams;IILandroid/view/View;II)V

    .line 1052
    iget-object v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionType:Lcom/alipay/android/app/template/view/PositionType;

    sget-object v5, Lcom/alipay/android/app/template/view/PositionType;->absolute:Lcom/alipay/android/app/template/view/PositionType;

    if-ne v4, v5, :cond_1

    .line 1053
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v6, v3, v1, v2}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a(Landroid/view/View;Lcom/alipay/android/app/template/util/TemplateLayoutParams;II)V

    move v4, v12

    move v5, v13

    .line 1035
    :goto_2
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    move v12, v4

    move v13, v5

    goto :goto_0

    .line 1057
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    iget-object v8, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    iget-object v9, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    .line 1061
    iget-object v10, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    move/from16 v4, p1

    move/from16 v5, p2

    move-object v7, v3

    .line 1059
    invoke-static/range {v4 .. v10}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->initMarginAndPadding(IILandroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;[I[I[I)V

    .line 1063
    iget v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1064
    iget v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    add-float/2addr v12, v4

    .line 1067
    :cond_2
    iget v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    if-gez v4, :cond_3

    iget v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_12

    .line 1068
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 1072
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 1074
    const/4 v4, 0x0

    .line 1076
    iget v8, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    if-lez v8, :cond_4

    .line 1077
    iget v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/lit8 v4, v4, 0x0

    .line 1079
    :cond_4
    iget v8, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    if-lez v8, :cond_5

    .line 1080
    iget v8, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    add-int/2addr v4, v8

    .line 1083
    :cond_5
    iget v8, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    sget v9, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v8, v9, :cond_6

    .line 1084
    int-to-float v6, v13

    iget v8, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    move/from16 v0, p1

    int-to-float v9, v0

    invoke-static {v8, v9}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v8

    int-to-float v4, v4

    add-float/2addr v4, v8

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 1085
    add-int/2addr v5, v7

    add-int v13, v4, v5

    .line 1086
    iget v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    invoke-static {v4}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_12

    .line 1087
    iget v3, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    invoke-static {v3}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v3

    const/16 v4, 0x64

    if-gt v3, v4, :cond_12

    move/from16 v0, p1

    if-le v13, v0, :cond_12

    move v4, v12

    move/from16 v5, p1

    .line 1088
    goto :goto_2

    .line 1092
    :cond_6
    const/high16 v3, -0x80000000

    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1095
    const/4 v5, 0x0

    .line 1094
    invoke-virtual {v6, v3, v5}, Landroid/view/View;->measure(II)V

    .line 1096
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1097
    add-int/2addr v3, v4

    add-int/2addr v13, v3

    move v4, v12

    move v5, v13

    goto/16 :goto_2

    .line 1108
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1113
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1112
    check-cast v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 1115
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 1116
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    .line 1117
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    .line 1118
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    .line 1120
    iget v5, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    if-lez v5, :cond_8

    .line 1123
    iget v5, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    .line 1125
    :cond_8
    iget v5, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    if-lez v5, :cond_9

    .line 1126
    iget v5, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    .line 1129
    :cond_9
    const/4 v5, 0x0

    .line 1131
    iget v6, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    if-lez v6, :cond_a

    .line 1132
    iget v5, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/lit8 v5, v5, 0x0

    .line 1134
    :cond_a
    iget v6, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    if-lez v6, :cond_b

    .line 1135
    iget v6, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .line 1138
    :cond_b
    const/high16 v6, -0x80000000

    .line 1139
    const/high16 v7, -0x80000000

    .line 1141
    iget v0, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    move/from16 v17, v0

    sget v18, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    .line 1142
    iget v5, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    move/from16 v0, p1

    int-to-float v6, v0

    invoke-static {v5, v6}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v5

    .line 1143
    add-int v6, v14, v16

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 1144
    iget v6, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    invoke-static {v6}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v6

    const/high16 v14, 0x40000000    # 2.0f

    if-ne v6, v14, :cond_c

    .line 1145
    iget v6, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    invoke-static {v6}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v6

    const/16 v14, 0x64

    if-gt v6, v14, :cond_c

    move/from16 v0, p1

    int-to-float v6, v0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_c

    .line 1146
    move/from16 v0, p1

    int-to-float v5, v0

    .line 1149
    :cond_c
    iget v6, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    const/4 v14, 0x0

    cmpl-float v6, v6, v14

    if-lez v6, :cond_d

    .line 1150
    iget v6, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    mul-float/2addr v6, v12

    add-float/2addr v5, v6

    .line 1152
    :cond_d
    float-to-int v6, v5

    .line 1153
    const/high16 v5, 0x40000000    # 2.0f

    .line 1158
    :goto_3
    iget v14, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    sget v16, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    move/from16 v0, v16

    if-eq v14, v0, :cond_10

    .line 1159
    iget v7, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    move/from16 v0, p2

    int-to-float v14, v0

    invoke-static {v7, v14}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v7

    float-to-int v7, v7

    .line 1160
    add-int/2addr v8, v15

    add-int/2addr v7, v8

    .line 1161
    iget v8, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    invoke-static {v8}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v8

    const/high16 v14, 0x40000000    # 2.0f

    if-ne v8, v14, :cond_e

    .line 1162
    iget v8, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    invoke-static {v8}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v8

    const/16 v14, 0x64

    if-gt v8, v14, :cond_e

    move/from16 v0, p2

    if-le v7, v0, :cond_e

    move/from16 v7, p2

    .line 1166
    :cond_e
    const/high16 v8, 0x40000000    # 2.0f

    move/from16 v19, v8

    move v8, v7

    move/from16 v7, v19

    .line 1169
    :goto_4
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1170
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1169
    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    .line 1173
    iget v5, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    add-int/lit8 v5, v5, 0x0

    .line 1175
    iget v6, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    .line 1176
    iget v5, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/lit8 v5, v5, 0x0

    .line 1178
    iget v4, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1180
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int v5, v11, v4

    .line 1181
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1182
    add-int/2addr v3, v6

    .line 1181
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1107
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move v10, v4

    move v11, v5

    goto/16 :goto_1

    .line 1154
    :cond_f
    iget v14, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    const/16 v16, 0x0

    cmpl-float v14, v14, v16

    if-lez v14, :cond_11

    .line 1155
    iget v6, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    mul-float/2addr v6, v12

    int-to-float v5, v5

    sub-float v5, v6, v5

    float-to-int v6, v5

    .line 1156
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_3

    :cond_10
    move/from16 v8, p2

    goto :goto_4

    :cond_11
    move v5, v6

    move/from16 v6, p1

    goto :goto_3

    :cond_12
    move v4, v12

    move v5, v13

    goto/16 :goto_2
.end method

.method private c(II)[I
    .locals 11

    .prologue
    .line 1205
    const/4 v2, 0x0

    .line 1206
    const/4 v1, 0x0

    .line 1207
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1208
    const/4 v0, 0x0

    move v8, v0

    move v9, v1

    move v10, v2

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getChildCount()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 1280
    sub-int v0, p2, v10

    int-to-float v0, v0

    div-float/2addr v0, v9

    .line 1282
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a(IIZF)[I

    move-result-object v0

    return-object v0

    .line 1211
    :cond_0
    invoke-virtual {p0, v8}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1212
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    .line 1216
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1215
    check-cast v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 1218
    iget-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v2, Lcom/alipay/android/app/template/view/ViewType;->dialog:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v1, v2, :cond_7

    iget-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v2, Lcom/alipay/android/app/template/view/LayoutType;->NONE:Lcom/alipay/android/app/template/view/LayoutType;

    if-eq v1, v2, :cond_7

    .line 1219
    iget v4, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->d:I

    iget v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->c:I

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->initMaxWidthHeight(Lcom/alipay/android/app/template/util/TemplateLayoutParams;IILandroid/view/View;II)V

    .line 1224
    iget-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionType:Lcom/alipay/android/app/template/view/PositionType;

    sget-object v2, Lcom/alipay/android/app/template/view/PositionType;->absolute:Lcom/alipay/android/app/template/view/PositionType;

    if-ne v1, v2, :cond_1

    .line 1225
    invoke-direct {p0, v3, v0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a(Landroid/view/View;Lcom/alipay/android/app/template/util/TemplateLayoutParams;II)V

    move v1, v9

    move v2, v10

    .line 1208
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v9, v1

    move v10, v2

    goto :goto_0

    .line 1229
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    iget-object v5, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    iget-object v6, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    .line 1233
    iget-object v7, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    move v1, p1

    move v2, p2

    move-object v4, v0

    .line 1231
    invoke-static/range {v1 .. v7}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->initMarginAndPadding(IILandroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;[I[I[I)V

    .line 1235
    iget v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1236
    iget v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    add-float/2addr v9, v1

    .line 1239
    :cond_2
    iget v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-ne v1, v2, :cond_3

    iget v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_7

    .line 1240
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 1244
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 1246
    const/4 v1, 0x0

    .line 1248
    iget v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    if-lez v2, :cond_4

    .line 1249
    iget v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    add-int/lit8 v1, v1, 0x0

    .line 1251
    :cond_4
    iget v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    if-lez v2, :cond_5

    .line 1252
    iget v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 1255
    :cond_5
    iget v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    sget v6, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v2, v6, :cond_8

    .line 1258
    iget v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    int-to-float v6, p1

    invoke-static {v2, v6}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v2

    float-to-int v2, v2

    .line 1259
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 1260
    :goto_2
    iget v6, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    sget v7, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v6, v7, :cond_6

    .line 1264
    int-to-float v2, v10

    iget v3, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    int-to-float v6, p2

    invoke-static {v3, v6}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v3

    int-to-float v1, v1

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1265
    add-int v2, v4, v5

    add-int v10, v1, v2

    .line 1266
    iget v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    invoke-static {v1}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_7

    .line 1267
    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_7

    if-le v10, p2, :cond_7

    move v1, v9

    move v2, p2

    .line 1268
    goto/16 :goto_1

    .line 1272
    :cond_6
    const/high16 v0, -0x80000000

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v2, -0x80000000

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1275
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1276
    add-int/2addr v0, v1

    add-int/2addr v10, v0

    move v1, v9

    move v2, v10

    goto/16 :goto_1

    :cond_7
    move v1, v9

    move v2, v10

    goto/16 :goto_1

    :cond_8
    move v2, p1

    goto :goto_2
.end method

.method public static initMarginAndPadding(IILandroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;[I[I[I)V
    .locals 9

    .prologue
    .line 145
    const/4 v0, 0x0

    aget v0, p4, v0

    int-to-float v1, p0

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v0

    float-to-int v0, v0

    .line 147
    const/4 v1, 0x1

    aget v1, p4, v1

    int-to-float v2, p1

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v1

    float-to-int v1, v1

    .line 148
    const/4 v2, 0x2

    aget v2, p4, v2

    .line 149
    int-to-float v3, p0

    .line 148
    invoke-static {v2, v3}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v2

    float-to-int v2, v2

    .line 150
    const/4 v3, 0x3

    aget v3, p4, v3

    .line 151
    int-to-float v4, p1

    .line 150
    invoke-static {v3, v4}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v3

    float-to-int v3, v3

    .line 153
    const/4 v4, 0x0

    aget v4, p6, v4

    int-to-float v5, p0

    invoke-static {v4, v5}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v4

    float-to-int v4, v4

    .line 154
    const/4 v5, 0x1

    aget v5, p6, v5

    int-to-float v6, p1

    invoke-static {v5, v6}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v5

    float-to-int v5, v5

    .line 155
    const/4 v6, 0x2

    aget v6, p6, v6

    int-to-float v7, p0

    invoke-static {v6, v7}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v6

    float-to-int v6, v6

    .line 156
    const/4 v7, 0x3

    aget v7, p6, v7

    .line 157
    int-to-float v8, p1

    .line 156
    invoke-static {v7, v8}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v7

    float-to-int v7, v7

    .line 159
    add-int/2addr v0, v4

    add-int/2addr v1, v5

    .line 160
    add-int/2addr v2, v6

    add-int/2addr v3, v7

    .line 159
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 162
    const/4 v0, 0x0

    aget v0, p5, v0

    int-to-float v1, p0

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v0

    float-to-int v0, v0

    .line 163
    const/4 v1, 0x1

    aget v1, p5, v1

    int-to-float v2, p1

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v1

    float-to-int v1, v1

    .line 164
    const/4 v2, 0x2

    aget v2, p5, v2

    int-to-float v3, p0

    invoke-static {v2, v3}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v2

    float-to-int v2, v2

    .line 165
    const/4 v3, 0x3

    aget v3, p5, v3

    .line 166
    int-to-float v4, p1

    .line 165
    invoke-static {v3, v4}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v3

    float-to-int v3, v3

    .line 168
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 170
    return-void
.end method

.method public static initMarginAndPadding(IILandroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;[I[I[I[I)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-static/range {p0 .. p6}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->initMarginAndPadding(IILandroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;[I[I[I)V

    .line 127
    instance-of v0, p3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-eqz v0, :cond_0

    .line 128
    check-cast p3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 129
    iget-object v0, p3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    .line 130
    aget v1, p7, v3

    int-to-float v2, p0

    .line 129
    invoke-static {v1, v2}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    .line 131
    iget-object v0, p3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    .line 132
    aget v1, p7, v4

    int-to-float v2, p1

    .line 131
    invoke-static {v1, v2}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    .line 133
    iget-object v0, p3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    .line 134
    aget v1, p7, v5

    int-to-float v2, p0

    .line 133
    invoke-static {v1, v2}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    .line 135
    iget-object v0, p3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    .line 136
    aget v1, p7, v6

    int-to-float v2, p1

    .line 135
    invoke-static {v1, v2}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    .line 139
    :cond_0
    return-void
.end method

.method public static initMaxWidthHeight(Lcom/alipay/android/app/template/util/TemplateLayoutParams;IILandroid/view/View;II)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 311
    iget v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxWidthStr:I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v0, v1, :cond_2

    move v1, v2

    .line 313
    :goto_0
    iget v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxHeightStr:I

    sget v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v0, v4, :cond_3

    move v4, v2

    .line 315
    :goto_1
    iget v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxWidthStr:I

    .line 316
    int-to-float v5, p1

    .line 315
    invoke-static {v0, v5}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v0

    float-to-int v5, v0

    .line 317
    iget v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxHeightStr:I

    .line 318
    int-to-float v6, p2

    .line 317
    invoke-static {v0, v6}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v0

    float-to-int v6, v0

    .line 320
    invoke-virtual {p0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->getTemplateElement()Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->getTemplateElement()Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/android/app/template/view/widget/TElement;->j:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    sget-object v7, Lcom/alipay/android/app/template/view/OverflowType;->scroll:Lcom/alipay/android/app/template/view/OverflowType;

    if-ne v0, v7, :cond_6

    .line 321
    invoke-virtual {p0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->getTemplateElement()Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    .line 322
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getScrollView()Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_6

    .line 324
    if-eqz v1, :cond_4

    .line 325
    invoke-virtual {v0, v5}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->setMaxWidth(I)V

    .line 326
    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p4, v1, :cond_0

    if-ge p4, v5, :cond_0

    .line 327
    invoke-virtual {v0, p4}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->setMaxWidth(I)V

    .line 334
    :cond_0
    :goto_2
    if-eqz v4, :cond_5

    .line 335
    invoke-virtual {v0, v6}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->setMaxHeight(I)V

    .line 336
    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p5, v1, :cond_1

    if-ge p5, v6, :cond_1

    .line 337
    invoke-virtual {v0, p5}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->setMaxHeight(I)V

    .line 424
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v1, v3

    .line 311
    goto :goto_0

    :cond_3
    move v4, v3

    .line 313
    goto :goto_1

    .line 330
    :cond_4
    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p4, v1, :cond_0

    .line 331
    invoke-virtual {v0, p4}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->setMaxWidth(I)V

    goto :goto_2

    .line 340
    :cond_5
    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p5, v1, :cond_1

    .line 341
    invoke-virtual {v0, p5}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->setMaxHeight(I)V

    goto :goto_3

    .line 349
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v7, Lcom/alipay/android/app/template/view/ViewType;->label:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v7, :cond_8

    .line 350
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v7, Lcom/alipay/android/app/template/view/ViewType;->button:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v7, :cond_8

    .line 351
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v7, Lcom/alipay/android/app/template/view/ViewType;->a:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v7, :cond_8

    .line 352
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v7, Lcom/alipay/android/app/template/view/ViewType;->checkbox:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v7, :cond_8

    .line 349
    :goto_4
    if-eqz v3, :cond_b

    .line 354
    check-cast p3, Landroid/widget/TextView;

    .line 355
    if-eqz v1, :cond_9

    .line 356
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 357
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p4, v0, :cond_7

    if-ge p4, v5, :cond_7

    .line 358
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 365
    :cond_7
    :goto_5
    if-eqz v4, :cond_a

    .line 366
    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 367
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p5, v0, :cond_1

    if-ge p5, v6, :cond_1

    .line 368
    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_3

    :cond_8
    move v3, v2

    .line 352
    goto :goto_4

    .line 361
    :cond_9
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p4, v0, :cond_7

    .line 362
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_5

    .line 371
    :cond_a
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p5, v0, :cond_1

    .line 372
    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto :goto_3

    .line 376
    :cond_b
    instance-of v0, p3, Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 377
    check-cast p3, Landroid/widget/ImageView;

    .line 378
    if-eqz v1, :cond_d

    .line 379
    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 380
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p4, v0, :cond_c

    if-ge p4, v5, :cond_c

    .line 381
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 388
    :cond_c
    :goto_6
    if-eqz v4, :cond_e

    .line 389
    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 390
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p5, v0, :cond_1

    if-ge p5, v6, :cond_1

    .line 391
    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setMaxHeight(I)V

    goto/16 :goto_3

    .line 384
    :cond_d
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p4, v0, :cond_c

    .line 385
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    goto :goto_6

    .line 394
    :cond_e
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p5, v0, :cond_1

    .line 395
    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setMaxHeight(I)V

    goto/16 :goto_3

    .line 398
    :cond_f
    instance-of v0, p3, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;

    if-eqz v0, :cond_1

    .line 399
    check-cast p3, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;

    .line 401
    if-eqz v1, :cond_11

    .line 402
    invoke-virtual {p3, v5}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->setMaxWidth(I)V

    .line 403
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p4, v0, :cond_10

    if-ge p4, v5, :cond_10

    .line 404
    invoke-virtual {p3, p4}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->setMaxWidth(I)V

    .line 411
    :cond_10
    :goto_7
    if-eqz v4, :cond_12

    .line 412
    invoke-virtual {p3, v6}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->setMaxHeight(I)V

    .line 413
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p5, v0, :cond_1

    if-ge p5, v6, :cond_1

    .line 414
    invoke-virtual {p3, p5}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->setMaxHeight(I)V

    goto/16 :goto_3

    .line 407
    :cond_11
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p4, v0, :cond_10

    .line 408
    invoke-virtual {p3, p4}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->setMaxWidth(I)V

    goto :goto_7

    .line 417
    :cond_12
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq p5, v0, :cond_1

    .line 418
    invoke-virtual {p3, p5}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->setMaxHeight(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->c:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->d:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderRadius:I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v0, v1, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderRadius:I

    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 110
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->g:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 111
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->e:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->g:Landroid/graphics/RectF;

    add-int/lit8 v3, v0, 0x4

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    .line 112
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 111
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 113
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 20

    .prologue
    .line 1287
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->j:Z

    if-eqz v1, :cond_1

    .line 1292
    :cond_0
    return-void

    .line 1290
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v2, Lcom/alipay/android/app/template/view/LayoutType;->WEBKIT_BOX:Lcom/alipay/android/app/template/view/LayoutType;

    if-ne v1, v2, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->orientation:I

    if-nez v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v10

    sub-int v1, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingRight()I

    move-result v2

    sub-int v12, v1, v2

    sub-int v1, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int v13, v1, v2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v15, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->orientation:I

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    if-lt v11, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignH:Lcom/alipay/android/app/template/view/AlignType;

    if-nez v1, :cond_1c

    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->start:Lcom/alipay/android/app/template/view/AlignType;

    move-object v3, v1

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignV:Lcom/alipay/android/app/template/view/AlignType;

    if-nez v1, :cond_1b

    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->start:Lcom/alipay/android/app/template/view/AlignType;

    move-object v4, v1

    :goto_2
    invoke-static {}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b()[I

    move-result-object v1

    invoke-virtual {v3}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v9

    :goto_3
    invoke-static {}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b()[I

    move-result-object v2

    invoke-virtual {v4}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    move v2, v10

    :goto_4
    const/4 v5, 0x0

    move v6, v1

    move v7, v5

    move v5, v2

    :goto_5
    if-lt v7, v14, :cond_c

    .line 1291
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->k:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    const/4 v3, 0x0

    iget v4, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    if-lez v4, :cond_2

    iget v3, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/lit8 v3, v3, 0x0

    :cond_2
    iget v4, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    if-lez v4, :cond_3

    iget v4, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    :cond_3
    const/4 v4, 0x0

    iget v5, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    if-lez v5, :cond_4

    iget v4, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    add-int/lit8 v4, v4, 0x0

    :cond_4
    iget v5, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    if-lez v5, :cond_5

    iget v5, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sget v10, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iget-object v11, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    if-eq v11, v10, :cond_15

    iget-object v3, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    :goto_8
    iget-object v5, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v11, 0x1

    aget v5, v5, v11

    if-eq v5, v10, :cond_16

    iget-object v4, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    :goto_9
    iget v5, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/2addr v5, v3

    iget v6, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    add-int/2addr v6, v4

    iget v10, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/2addr v3, v10

    add-int/2addr v3, v8

    iget v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    add-int/2addr v2, v9

    invoke-virtual {v1, v5, v6, v3, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    .line 1290
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    const/4 v3, 0x0

    iget v4, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    if-lez v4, :cond_7

    iget v3, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/lit8 v3, v3, 0x0

    :cond_7
    iget v4, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    if-lez v4, :cond_8

    iget v4, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    :cond_8
    const/4 v4, 0x0

    iget v0, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    move/from16 v16, v0

    if-lez v16, :cond_9

    iget v4, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    add-int/lit8 v4, v4, 0x0

    :cond_9
    iget v0, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    move/from16 v16, v0

    if-lez v16, :cond_a

    iget v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    :cond_a
    if-nez v15, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v2, v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v3, v14, -0x1

    if-ne v11, v3, :cond_1e

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v3

    move v3, v1

    move v1, v5

    :goto_a
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move v6, v2

    move v7, v3

    move v8, v4

    move v5, v1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v4

    add-int/2addr v2, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v14, -0x1

    if-ne v11, v1, :cond_1d

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v4, v3

    move v3, v1

    move v1, v2

    move v2, v6

    goto :goto_a

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v1

    goto/16 :goto_3

    :pswitch_3
    sub-int v1, v12, v8

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    goto/16 :goto_3

    :pswitch_4
    sub-int v1, v12, v8

    div-int/lit8 v1, v1, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v2

    goto/16 :goto_4

    :pswitch_6
    sub-int v2, v13, v7

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v2, v5

    goto/16 :goto_4

    :pswitch_7
    sub-int v2, v13, v7

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v2, v5

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v8, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->topMargin:I

    iget v9, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    iget v10, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    iget v11, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bottomMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    if-nez v15, :cond_10

    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->start:Lcom/alipay/android/app/template/view/AlignType;

    if-ne v4, v2, :cond_d

    add-int v2, v6, v9

    add-int v11, v5, v8

    add-int v18, v6, v9

    add-int v18, v18, v16

    add-int/2addr v8, v5

    add-int v8, v8, v17

    move/from16 v0, v18

    invoke-virtual {v1, v2, v11, v0, v8}, Landroid/view/View;->layout(IIII)V

    move v1, v5

    :goto_b
    add-int v2, v16, v9

    add-int/2addr v2, v10

    add-int/2addr v2, v6

    :goto_c
    add-int/lit8 v5, v7, 0x1

    move v6, v2

    move v7, v5

    move v5, v1

    goto/16 :goto_5

    :cond_d
    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->center:Lcom/alipay/android/app/template/view/AlignType;

    if-ne v4, v2, :cond_e

    sub-int v2, v13, v17

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v2, v5

    add-int v5, v6, v9

    add-int v11, v2, v8

    add-int v18, v6, v9

    add-int v18, v18, v16

    add-int/2addr v8, v2

    add-int v8, v8, v17

    move/from16 v0, v18

    invoke-virtual {v1, v5, v11, v0, v8}, Landroid/view/View;->layout(IIII)V

    move v1, v2

    goto :goto_b

    :cond_e
    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->end:Lcom/alipay/android/app/template/view/AlignType;

    if-eq v4, v2, :cond_f

    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->baseline:Lcom/alipay/android/app/template/view/AlignType;

    if-ne v4, v2, :cond_1a

    :cond_f
    sub-int v2, v13, v17

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v2, v5

    add-int v5, v6, v9

    sub-int v8, v2, v11

    add-int v18, v6, v9

    add-int v18, v18, v16

    sub-int v11, v2, v11

    add-int v11, v11, v17

    move/from16 v0, v18

    invoke-virtual {v1, v5, v8, v0, v11}, Landroid/view/View;->layout(IIII)V

    move v1, v2

    goto :goto_b

    :cond_10
    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->start:Lcom/alipay/android/app/template/view/AlignType;

    if-ne v3, v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v2

    add-int v6, v2, v9

    add-int v10, v5, v8

    add-int/2addr v9, v2

    add-int v9, v9, v16

    add-int v16, v5, v8

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v1, v6, v10, v9, v0}, Landroid/view/View;->layout(IIII)V

    move v1, v2

    :goto_d
    add-int v2, v17, v8

    add-int/2addr v2, v11

    add-int/2addr v2, v5

    move/from16 v19, v2

    move v2, v1

    move/from16 v1, v19

    goto :goto_c

    :cond_11
    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->center:Lcom/alipay/android/app/template/view/AlignType;

    if-ne v3, v2, :cond_12

    sub-int v2, v12, v16

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v6

    add-int/2addr v2, v6

    add-int v6, v2, v9

    add-int v10, v5, v8

    add-int/2addr v9, v2

    add-int v9, v9, v16

    add-int v16, v5, v8

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v1, v6, v10, v9, v0}, Landroid/view/View;->layout(IIII)V

    move v1, v2

    goto :goto_d

    :cond_12
    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->end:Lcom/alipay/android/app/template/view/AlignType;

    if-ne v3, v2, :cond_19

    sub-int v2, v12, v16

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v2, v6

    sub-int v6, v2, v10

    add-int v9, v5, v8

    sub-int v10, v2, v10

    add-int v10, v10, v16

    add-int v16, v5, v8

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v1, v6, v9, v10, v0}, Landroid/view/View;->layout(IIII)V

    move v1, v2

    goto :goto_d

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v6, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignV:Lcom/alipay/android/app/template/view/AlignType;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v7, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignH:Lcom/alipay/android/app/template/view/AlignType;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a(IIIILcom/alipay/android/app/template/view/AlignType;Lcom/alipay/android/app/template/view/AlignType;)V

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v6, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a(IIIILcom/alipay/android/app/template/view/AlignType;Lcom/alipay/android/app/template/view/AlignType;)V

    goto/16 :goto_6

    .line 1291
    :cond_15
    iget-object v11, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    if-eq v11, v10, :cond_18

    sub-int v5, p4, p2

    iget-object v11, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    sub-int/2addr v5, v11

    sub-int/2addr v5, v8

    sub-int v3, v5, v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    goto/16 :goto_8

    :cond_16
    iget-object v5, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v11, 0x3

    aget v5, v5, v11

    if-eq v5, v10, :cond_17

    sub-int v5, p5, p3

    iget-object v6, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    const/4 v10, 0x3

    aget v6, v6, v10

    sub-int/2addr v5, v6

    sub-int/2addr v5, v9

    sub-int v4, v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    goto/16 :goto_9

    :cond_17
    move v4, v6

    goto/16 :goto_9

    :cond_18
    move v3, v5

    goto/16 :goto_8

    :cond_19
    move v1, v6

    goto/16 :goto_d

    :cond_1a
    move v1, v5

    goto/16 :goto_b

    :cond_1b
    move-object v4, v1

    goto/16 :goto_2

    :cond_1c
    move-object v3, v1

    goto/16 :goto_1

    :cond_1d
    move v1, v2

    move v4, v3

    move v3, v7

    move v2, v6

    goto/16 :goto_a

    :cond_1e
    move v3, v1

    move v4, v8

    move v1, v5

    goto/16 :goto_a

    .line 1290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/high16 v11, -0x80000000

    const/4 v7, 0x0

    .line 190
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->j:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->setMeasuredDimension(II)V

    .line 306
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 197
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 198
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 199
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 200
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v2, v3, :cond_1

    .line 201
    sget v2, Lcom/alipay/android/app/template/util/UiUtil;->NAVIGATION_BAR_HEIGHT:I

    add-int/2addr v1, v2

    .line 204
    :cond_1
    if-nez v10, :cond_2

    .line 205
    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    .line 208
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 210
    instance-of v2, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-nez v2, :cond_3

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Layout param not correct!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_3
    check-cast v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 217
    iget v2, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    if-lez v2, :cond_17

    .line 218
    iget v2, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->leftMargin:I

    add-int/lit8 v2, v2, 0x0

    .line 221
    :goto_1
    iget v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    if-lez v4, :cond_16

    .line 222
    iget v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move v8, v2

    .line 225
    :goto_2
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v4, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v2, v4, :cond_4

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v4, Lcom/alipay/android/app/template/view/ViewType;->nav:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v2, v4, :cond_5

    .line 226
    :cond_4
    iget-object v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    .line 227
    iget-object v5, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    iget-object v6, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    move-object v2, p0

    .line 226
    invoke-static/range {v0 .. v6}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->initMarginAndPadding(IILandroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;[I[I[I)V

    .line 230
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    .line 231
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 233
    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v5, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v6, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v5, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v6, Lcom/alipay/android/app/template/view/ViewType;->nav:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v5, v6, :cond_9

    .line 235
    :cond_6
    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v5, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    sget v6, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v5, v6, :cond_7

    .line 236
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    int-to-float v5, v0

    invoke-static {v2, v5}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v2

    float-to-int v2, v2

    .line 239
    :cond_7
    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v5, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    sget v6, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v5, v6, :cond_8

    .line 240
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v4, v4, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    int-to-float v5, v1

    invoke-static {v4, v5}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v4

    float-to-int v4, v4

    .line 243
    :cond_8
    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v5, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->minHeightStr:I

    sget v6, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v5, v6, :cond_9

    .line 244
    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v5, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->minHeightStr:I

    int-to-float v6, v1

    invoke-static {v5, v6}, Lcom/alipay/android/app/template/util/UiUtil;->getValueByPercent(IF)F

    move-result v5

    float-to-int v5, v5

    .line 245
    if-ge v4, v5, :cond_9

    move v4, v5

    .line 253
    :cond_9
    iget-object v5, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    .line 252
    sget-object v6, Lcom/alipay/android/app/template/view/LayoutType;->WEBKIT_BOX:Lcom/alipay/android/app/template/view/LayoutType;

    if-ne v5, v6, :cond_15

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v5, v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->orientation:I

    if-nez v5, :cond_14

    invoke-direct {p0, v2, v4}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->b(II)[I

    move-result-object v5

    .line 255
    :goto_3
    aget v6, v5, v7

    .line 256
    const/4 v7, 0x1

    aget v5, v5, v7

    .line 258
    if-eq v9, v11, :cond_a

    if-nez v9, :cond_b

    .line 262
    :cond_a
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v0, v6

    .line 264
    :cond_b
    if-eq v10, v11, :cond_c

    if-nez v10, :cond_d

    .line 268
    :cond_c
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v1, v5

    .line 270
    :cond_d
    instance-of v5, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-eqz v5, :cond_e

    .line 276
    iget v3, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    sget v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v3, v5, :cond_e

    .line 277
    sget v3, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    if-lt v0, v3, :cond_e

    .line 278
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    sub-int/2addr v0, v8

    .line 283
    :cond_e
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v3, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v5, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v3, v5, :cond_f

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v3, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v5, Lcom/alipay/android/app/template/view/ViewType;->nav:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v3, v5, :cond_11

    .line 285
    :cond_f
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v3, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    sget v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v3, v5, :cond_10

    move v0, v2

    .line 289
    :cond_10
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v3, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    sget v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v3, v5, :cond_11

    move v1, v4

    .line 295
    :cond_11
    iget v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->d:I

    sget v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v3, v5, :cond_12

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->d:I

    if-le v0, v3, :cond_12

    .line 296
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->d:I

    .line 299
    :cond_12
    iget v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->c:I

    sget v5, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v3, v5, :cond_13

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->c:I

    if-le v1, v3, :cond_13

    .line 300
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->c:I

    .line 303
    :cond_13
    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->setMeasuredDimension(II)V

    .line 305
    invoke-direct {p0, v2, v4}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a(II)V

    goto/16 :goto_0

    .line 252
    :cond_14
    invoke-direct {p0, v2, v4}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->c(II)[I

    move-result-object v5

    goto :goto_3

    :cond_15
    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v7, v5}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->a(IIZF)[I

    move-result-object v5

    goto :goto_3

    :cond_16
    move v8, v2

    goto/16 :goto_2

    :cond_17
    move v2, v7

    goto/16 :goto_1
.end method

.method public setClipChildren(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->i:Z

    .line 76
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 77
    return-void
.end method

.method public setIsDestory(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->j:Z

    .line 72
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 97
    instance-of v0, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-nez v0, :cond_0

    .line 98
    new-instance v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-direct {v1, p1}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    move-object v0, v1

    .line 100
    check-cast v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 101
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method public setMaxHeight(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->c:I

    .line 93
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->d:I

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1322
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->j:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1323
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
