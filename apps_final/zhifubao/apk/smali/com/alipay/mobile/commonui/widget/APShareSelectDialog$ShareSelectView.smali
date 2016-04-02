.class public Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/ArrayList;

.field private c:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

.field private d:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;

.field private e:Ljava/util/ArrayList;

.field private f:I

.field private g:I

.field imageViewBg:Landroid/widget/ImageView;

.field indicator:Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

.field mContext:Landroid/content/Context;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/ArrayList;Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnTouchBackgroundListener;)V
    .locals 6

    const/4 v0, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Ljava/util/ArrayList;

    iput p3, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->f:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->layout_share_select:I

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->myviewpager:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mViewPager:Landroid/support/v4/view/ViewPager;

    sget v0, Lcom/alipay/mobile/ui/R$id;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->indicator:Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

    sget v0, Lcom/alipay/mobile/ui/R$id;->share_above_bg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->imageViewBg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->imageViewBg:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;

    invoke-direct {v1, p0, p5}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnTouchBackgroundListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    packed-switch p2, :pswitch_data_0

    :goto_1
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_1

    :cond_2
    move v1, v0

    :goto_2
    if-eqz v1, :cond_0

    const/4 v0, 0x5

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$dimen;->share_singleline_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    int-to-float v0, v1

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->e:Ljava/util/ArrayList;

    packed-switch p2, :pswitch_data_2

    :goto_3
    new-instance v1, Lcom/alipay/mobile/commonui/widget/hgridview/GridViewPagerAdapter;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->e:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/hgridview/GridViewPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    if-ne v0, v4, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->indicator:Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_0
    invoke-static {p3}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->g:I

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Ljava/util/ArrayList;

    goto :goto_1

    :pswitch_2
    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->f:I

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->c(I)I

    move-result v0

    if-eqz v0, :cond_f

    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    goto/16 :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    goto/16 :goto_2

    :pswitch_4
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b(II)V

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a(II)V

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->indicator:Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->indicator_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->setRadius(F)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->indicator:Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->indicator_stroke:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->setStrokeColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->indicator:Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->setSnap(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->indicator:Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->h:Lcom/alipay/mobile/common/share/ShareAlert;
    invoke-static {}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->access$200()Lcom/alipay/mobile/common/share/ShareAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->h:Lcom/alipay/mobile/common/share/ShareAlert;
    invoke-static {}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->access$200()Lcom/alipay/mobile/common/share/ShareAlert;

    move-result-object v0

    const-string/jumbo v1, "ShareAlertAndroid"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/share/ShareAlert;->loadAlert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/share/ShareItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v4

    and-int v5, v4, v3

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/share/ShareItem;->setAlert(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(II)V
    .locals 8

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    if-ge v1, p1, :cond_1

    new-instance v3, Landroid/widget/GridView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    mul-int/lit8 v0, v1, 0x8

    add-int/lit8 v4, v0, 0x8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v0, p2, :cond_0

    if-ge v0, v4, :cond_0

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    sget v0, Lcom/alipay/mobile/ui/R$color;->transparent:I

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setBackgroundResource(I)V

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setCacheColorHint(I)V

    sget v0, Lcom/alipay/mobile/ui/R$color;->transparent:I

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setSelector(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/ui/R$dimen;->share_top_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/alipay/mobile/ui/R$dimen;->share_side_padding:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/ui/R$dimen;->share_vertical_spacing:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v4, v0, v4, v2}, Landroid/widget/GridView;->setPadding(IIII)V

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {v3, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareListAdapter;

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;-><init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;I)V

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v2, p0, -0x1

    and-int/2addr v2, p0

    if-nez v2, :cond_2

    move v2, v0

    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->d:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->c:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->g:I

    return v0
.end method

.method private static b(I)I
    .locals 3

    const/4 v0, 0x0

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->h:Lcom/alipay/mobile/common/share/ShareAlert;
    invoke-static {}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->access$200()Lcom/alipay/mobile/common/share/ShareAlert;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->h:Lcom/alipay/mobile/common/share/ShareAlert;
    invoke-static {}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->access$200()Lcom/alipay/mobile/common/share/ShareAlert;

    move-result-object v1

    const-string/jumbo v2, "ShareAlertAndroid"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/share/ShareAlert;->loadAlert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/2addr v0, p0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->g:Lcom/alipay/mobile/common/share/ShareFilter;
    invoke-static {}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->access$300()Lcom/alipay/mobile/common/share/ShareFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->g:Lcom/alipay/mobile/common/share/ShareFilter;
    invoke-static {}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->access$300()Lcom/alipay/mobile/common/share/ShareFilter;

    move-result-object v0

    const-string/jumbo v1, "ShareFilterAndroid"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/share/ShareFilter;->loadFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/share/ShareItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/common/share/ShareItem;->getShareType()I

    move-result v5

    if-gt v5, v4, :cond_2

    invoke-static {v5}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a(I)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    and-int/2addr v5, v4

    if-eqz v5, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move-object p0, v1

    goto :goto_0
.end method

.method private b(II)V
    .locals 8

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    if-ge v1, p1, :cond_1

    new-instance v3, Landroid/widget/GridView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    mul-int/lit8 v0, v1, 0x8

    add-int/lit8 v4, v0, 0x8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v0, p2, :cond_0

    if-ge v0, v4, :cond_0

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    sget v0, Lcom/alipay/mobile/ui/R$color;->transparent:I

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setBackgroundResource(I)V

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setCacheColorHint(I)V

    sget v0, Lcom/alipay/mobile/ui/R$color;->transparent:I

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setSelector(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/ui/R$dimen;->share_top_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/alipay/mobile/ui/R$dimen;->share_side_padding:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/ui/R$dimen;->share_vertical_spacing:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v4, v0, v4, v2}, Landroid/widget/GridView;->setPadding(IIII)V

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {v3, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareTypeAdapter;

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$3;-><init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;I)V

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(I)I
    .locals 10

    const/4 v1, 0x0

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->g:Lcom/alipay/mobile/common/share/ShareFilter;
    invoke-static {}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->access$300()Lcom/alipay/mobile/common/share/ShareFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->g:Lcom/alipay/mobile/common/share/ShareFilter;
    invoke-static {}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->access$300()Lcom/alipay/mobile/common/share/ShareFilter;

    move-result-object v0

    const-string/jumbo v2, "ShareFilterAndroid"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/share/ShareFilter;->loadFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le p0, v0, :cond_1

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->d(I)I

    move-result v4

    invoke-static {p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->d(I)I

    move-result v2

    sub-int v5, v2, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-int v3, v4, v2

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    double-to-int v3, v6

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_1
    and-int/2addr v0, p0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static d(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    div-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public setOnAlertShareSelectListener(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->d:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnAlertShareSelectListener;

    return-void
.end method

.method public setOnShareSelectListener(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->c:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    return-void
.end method
