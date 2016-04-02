.class public abstract Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method abstract getBackgroundResource(Ljava/util/ArrayList;I)I
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getIconResId(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_weibo:I

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_laiwang:I

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_laiwang_timeline:I

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_sms:I

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_linkcopy:I

    goto :goto_0

    :sswitch_5
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_weixin:I

    goto :goto_0

    :sswitch_6
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_weixin_timeline:I

    goto :goto_0

    :sswitch_7
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_qzone:I

    goto :goto_0

    :sswitch_8
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_qq:I

    goto :goto_0

    :sswitch_9
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_contact:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x4 -> :sswitch_0
        0x8 -> :sswitch_5
        0x10 -> :sswitch_6
        0x20 -> :sswitch_4
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0x100 -> :sswitch_7
        0x200 -> :sswitch_8
        0x400 -> :sswitch_9
    .end sparse-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected getName(I)Ljava/lang/String;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    sget v0, Lcom/alipay/mobile/ui/R$string;->mini_str_null:I

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_weibo:I

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_laiwang:I

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_laiwang_timeline:I

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_sms:I

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_linkcopy:I

    goto :goto_0

    :sswitch_5
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_weixin:I

    goto :goto_0

    :sswitch_6
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_weixin_timeline:I

    goto :goto_0

    :sswitch_7
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_qzone:I

    goto :goto_0

    :sswitch_8
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_qq:I

    goto :goto_0

    :sswitch_9
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_contact:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x4 -> :sswitch_0
        0x8 -> :sswitch_5
        0x10 -> :sswitch_6
        0x20 -> :sswitch_4
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0x100 -> :sswitch_7
        0x200 -> :sswitch_8
        0x400 -> :sswitch_9
    .end sparse-switch
.end method

.method abstract getName(Ljava/util/ArrayList;I)Ljava/lang/String;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, -0x1

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v6, 0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v3, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Lcom/alipay/mobile/ui/R$drawable;->selector_share_item:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, p1}, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;->getBackgroundResource(Ljava/util/ArrayList;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;->b:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    const/16 v3, 0x31

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/alipay/mobile/commonui/widget/hgridview/share/ShareItemAdapter;->getName(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method
