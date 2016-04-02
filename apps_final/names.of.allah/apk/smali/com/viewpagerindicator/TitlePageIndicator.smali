.class public final Lcom/viewpagerindicator/TitlePageIndicator;
.super Landroid/view/View;

# interfaces
.implements Lcom/viewpagerindicator/c;


# instance fields
.field private A:Lcom/viewpagerindicator/n;

.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/support/v4/view/bb;

.field private c:I

.field private d:F

.field private e:I

.field private final f:Landroid/graphics/Paint;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Rect;

.field private final l:Landroid/graphics/Paint;

.field private m:Lcom/viewpagerindicator/l;

.field private n:Lcom/viewpagerindicator/m;

.field private final o:Landroid/graphics/Paint;

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:I

.field private x:F

.field private y:I

.field private z:Z


# direct methods
.method private a(Landroid/graphics/Rect;FI)V
    .locals 2

    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method private b(Landroid/graphics/Rect;FI)V
    .locals 2

    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    add-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private c(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/aa;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroid/support/v4/view/bb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroid/support/v4/view/bb;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bb;->a(I)V

    :cond_1
    return-void
.end method

.method public final a(IFI)V
    .locals 1

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    iput p2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroid/support/v4/view/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroid/support/v4/view/bb;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/bb;->a(IFI)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:I

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroid/support/v4/view/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroid/support/v4/view/bb;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bb;->b(I)V

    :cond_0
    return-void
.end method

.method public final getClipPadding()F
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    return v0
.end method

.method public final getFooterColor()I
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final getFooterIndicatorHeight()F
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->p:F

    return v0
.end method

.method public final getFooterIndicatorPadding()F
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    return v0
.end method

.method public final getFooterIndicatorStyle()Lcom/viewpagerindicator/l;
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Lcom/viewpagerindicator/l;

    return-object v0
.end method

.method public final getFooterLineHeight()F
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    return v0
.end method

.method public final getLinePosition()Lcom/viewpagerindicator/m;
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Lcom/viewpagerindicator/m;

    return-object v0
.end method

.method public final getSelectedColor()I
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->i:I

    return v0
.end method

.method public final getTextColor()I
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->h:I

    return v0
.end method

.method public final getTextSize()F
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public final getTitlePadding()F
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    return v0
.end method

.method public final getTopPadding()F
    .locals 1

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    return v0
.end method

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/aa;->getCount()I

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/aa;->getCount()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v5

    div-int/lit8 v6, v5, 0x2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->c(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v3, v8, v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v10, v6

    int-to-float v11, v8

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    sub-int v11, v2, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/viewpagerindicator/TitlePageIndicator;->d:F

    sub-float/2addr v11, v12

    int-to-float v12, v5

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->left:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v10

    iput v8, v7, Landroid/graphics/Rect;->right:I

    const/4 v8, 0x0

    iput v8, v7, Landroid/graphics/Rect;->top:I

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    move/from16 v0, v18

    if-lt v2, v0, :cond_4

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v5, v16, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v19, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getLeft()I

    move-result v20

    move/from16 v0, v20

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    add-float v6, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getHeight()I

    move-result v12

    add-int v22, v20, v21

    move/from16 v0, v22

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    sub-float v7, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->d:F

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v8, v10

    if-gtz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->d:F

    move v15, v3

    move v3, v2

    :goto_2
    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_9

    const/4 v2, 0x1

    move v14, v2

    :goto_3
    const v2, 0x3d4ccccd    # 0.05f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_a

    const/4 v2, 0x1

    move v10, v2

    :goto_4
    const/high16 v2, 0x3e800000    # 0.25f

    sub-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    div-float v23, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->b(Landroid/graphics/Rect;FI)V

    :cond_5
    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/Rect;FI)V

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    if-lez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_5
    if-ltz v4, :cond_b

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_7

    iget v2, v3, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    sub-int v8, v2, v8

    int-to-float v2, v8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v3, v2, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->b(Landroid/graphics/Rect;FI)V

    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v9, v3, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    add-float/2addr v9, v11

    iget v11, v2, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    cmpl-float v9, v9, v11

    if-lez v9, :cond_7

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    sub-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    iput v2, v3, Landroid/graphics/Rect;->right:I

    :cond_7
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->d:F

    sub-float/2addr v2, v4

    move v15, v3

    move v3, v2

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    if-ge v2, v5, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    :goto_6
    move/from16 v0, v16

    if-ge v4, v0, :cond_d

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_c

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    int-to-float v3, v5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/Rect;FI)V

    add-int/lit8 v3, v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    sub-float/2addr v6, v8

    iget v8, v3, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_c

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->right:I

    :cond_c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:I

    ushr-int/lit8 v24, v2, 0x18

    const/4 v2, 0x0

    move v13, v2

    :goto_7
    move/from16 v0, v16

    if-ge v13, v0, :cond_15

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/graphics/Rect;

    iget v2, v9, Landroid/graphics/Rect;->left:I

    move/from16 v0, v20

    if-le v2, v0, :cond_e

    iget v2, v9, Landroid/graphics/Rect;->left:I

    move/from16 v0, v22

    if-lt v2, v0, :cond_f

    :cond_e
    iget v2, v9, Landroid/graphics/Rect;->right:I

    move/from16 v0, v20

    if-le v2, v0, :cond_12

    iget v2, v9, Landroid/graphics/Rect;->right:I

    move/from16 v0, v22

    if-ge v2, v0, :cond_12

    :cond_f
    if-ne v13, v15, :cond_13

    const/4 v2, 0x1

    move v11, v2

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/viewpagerindicator/TitlePageIndicator;->c(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    if-eqz v11, :cond_14

    if-eqz v10, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->g:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->h:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v11, :cond_10

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move/from16 v0, v24

    int-to-float v4, v0

    mul-float v4, v4, v23

    float-to-int v4, v4

    sub-int v4, v24, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_10
    add-int/lit8 v2, v18, -0x1

    if-ge v13, v2, :cond_11

    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    add-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_11

    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v5, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iput v2, v9, Landroid/graphics/Rect;->right:I

    :cond_11
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz v11, :cond_12

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:I

    ushr-int/lit8 v4, v4, 0x18

    int-to-float v4, v4

    mul-float v4, v4, v23

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_12
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_7

    :cond_13
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_8

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Lcom/viewpagerindicator/m;

    sget-object v5, Lcom/viewpagerindicator/m;->b:Lcom/viewpagerindicator/m;

    if-ne v4, v5, :cond_16

    const/4 v4, 0x0

    neg-float v3, v3

    neg-float v2, v2

    move/from16 v25, v2

    move v2, v3

    move/from16 v3, v25

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    const/4 v6, 0x0

    int-to-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v2, v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    move/from16 v0, v21

    int-to-float v6, v0

    int-to-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v2, v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v4, v4

    sub-float/2addr v4, v2

    sget-object v2, Lcom/viewpagerindicator/k;->a:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Lcom/viewpagerindicator/l;

    invoke-virtual {v5}, Lcom/viewpagerindicator/l;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    sub-float v5, v4, v3

    move/from16 v0, v19

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    add-float v5, v19, v3

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    sub-float v3, v19, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz v14, :cond_0

    move/from16 v0, v18

    if-ge v15, v0, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    add-float/2addr v5, v6

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    sub-float/2addr v2, v6

    sub-float v3, v4, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v3, v3, v23

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_16
    move v4, v12

    move/from16 v25, v3

    move v3, v2

    move/from16 v2, v25

    goto/16 :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    :cond_0
    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Lcom/viewpagerindicator/l;

    sget-object v3, Lcom/viewpagerindicator/l;->a:Lcom/viewpagerindicator/l;

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->p:F

    add-float/2addr v0, v2

    goto :goto_0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-virtual {p1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->requestLayout()V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->a:I

    return-object v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/aa;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    sub-float v2, v0, v2

    iget-boolean v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    if-nez v3, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->w:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iput-boolean v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    :cond_4
    iget-boolean v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    if-eqz v3, :cond_0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    :pswitch_3
    iget-boolean v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/aa;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v4

    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    sub-float v6, v5, v4

    add-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    cmpg-float v6, v5, v6

    if-gez v6, :cond_6

    iget v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    if-lez v3, :cond_8

    if-eq v2, v7, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_6
    cmpl-float v4, v5, v4

    if-lez v4, :cond_7

    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_8

    if-eq v2, v7, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:Lcom/viewpagerindicator/n;

    if-eqz v3, :cond_8

    if-eq v2, v7, :cond_8

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:Lcom/viewpagerindicator/n;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    :cond_8
    iput-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1, v2}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    if-ne v3, v4, :cond_a

    if-nez v2, :cond_9

    move v0, v1

    :cond_9
    invoke-static {p1, v0}, Landroid/support/v4/view/w;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    :cond_a
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/w;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->x:F

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final setClipPadding(F)V
    .locals 0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setFooterColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setFooterIndicatorHeight(F)V
    .locals 0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->p:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setFooterIndicatorPadding(F)V
    .locals 0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setFooterIndicatorStyle(Lcom/viewpagerindicator/l;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Lcom/viewpagerindicator/l;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setFooterLineHeight(F)V
    .locals 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setLinePosition(Lcom/viewpagerindicator/m;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Lcom/viewpagerindicator/m;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setOnCenterItemClickListener(Lcom/viewpagerindicator/n;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:Lcom/viewpagerindicator/n;

    return-void
.end method

.method public final setOnPageChangeListener(Landroid/support/v4/view/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->b:Landroid/support/v4/view/bb;

    return-void
.end method

.method public final setSelectedBold(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->g:Z

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setSelectedColor(I)V
    .locals 0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->i:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->h:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setTitlePadding(F)V
    .locals 0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setTopPadding(F)V
    .locals 0

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public final setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bb;)V

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/aa;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bb;)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    goto :goto_0
.end method
