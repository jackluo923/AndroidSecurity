.class public Lcom/alipay/asset/common/view/WealthSingleWidgetView;
.super Lcom/alipay/asset/common/view/BaseWealthWidgetView;
.source "WealthSingleWidgetView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/alipay/android/phone/wealth/home/R$layout;->l:I

    return v0
.end method

.method public setWealthHomeModule(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Z)V
    .locals 3

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthSingleWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthSingleWidgetView;->setWidgetId(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSingleWidgetView;->titleView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    if-eqz p2, :cond_1

    .line 39
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSingleWidgetView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getIcon()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/asset/common/view/WealthSingleWidgetView;->iconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/asset/common/view/WealthSingleWidgetView;->loadIcon(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 44
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "mcolor"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthSingleWidgetView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "mcolor"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_1
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSingleWidgetView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getMainInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSingleWidgetView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthSingleWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$color;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto :goto_1
.end method
