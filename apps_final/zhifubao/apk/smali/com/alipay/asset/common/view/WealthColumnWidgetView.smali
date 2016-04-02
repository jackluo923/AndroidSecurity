.class public Lcom/alipay/asset/common/view/WealthColumnWidgetView;
.super Lcom/alipay/asset/common/view/BaseWealthWidgetView;
.source "WealthColumnWidgetView.java"


# instance fields
.field private a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->a:Landroid/graphics/Paint;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->a:Landroid/graphics/Paint;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->a:Landroid/graphics/Paint;

    .line 22
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object p1

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$dimen;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$dimen;->h:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "WealthColumn"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "textWidth:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",maxWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 74
    div-float v0, v1, v0

    int-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 75
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/alipay/android/phone/wealth/home/R$layout;->i:I

    return v0
.end method

.method public setWealthHomeModule(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Z)V
    .locals 3

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->setWidgetId(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->titleView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    if-eqz p2, :cond_1

    .line 43
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->secondaryInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$color;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 53
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getIcon()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->iconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->loadIcon(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 54
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "mcolor"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

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

    .line 64
    :cond_0
    :goto_1
    return-void

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getMainInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getMainInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->secondaryInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSecondaryInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->m:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->secondaryInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSecondaryInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 59
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$color;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto :goto_1
.end method
