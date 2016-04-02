.class public Lcom/alipay/asset/common/view/AccountItemView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "AccountItemView.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

.field private g:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->g:Landroid/graphics/Paint;

    .line 47
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/AccountItemView;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->g:Landroid/graphics/Paint;

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/AccountItemView;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->g:Landroid/graphics/Paint;

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/AccountItemView;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->b:I

    .line 52
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->z:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 54
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->A:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 55
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->y:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 56
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->H:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 57
    return-void
.end method


# virtual methods
.method public bindWealthModule(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v1, 0x0

    .line 60
    if-eqz p1, :cond_2

    .line 61
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->d:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AccountItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bindWealthModule, widgetId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/asset/common/view/AccountItemView;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "WEALTH_HOME_BANKCARD"

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/asset/common/view/AccountItemView;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Ljava/lang/String;)Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "AccountItemView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "bindWidgetFlagView, widgetFlagview is null:"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->e:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-nez v0, :cond_7

    if-eqz v2, :cond_7

    iput-object v2, p0, Lcom/alipay/asset/common/view/AccountItemView;->e:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "AccountItemView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "bindWidgetFlagView, widgetId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/asset/common/view/AccountItemView;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/asset/common/view/AccountItemView;->f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-eq v0, v3, :cond_1

    invoke-virtual {v2}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->addView(Landroid/view/View;)V

    .line 72
    :cond_2
    :goto_2
    if-eqz p3, :cond_9

    .line 73
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    const-string/jumbo v0, "WEALTH_HOME_ACC_BALANCE"

    iget-object v2, p0, Lcom/alipay/asset/common/view/AccountItemView;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 93
    :cond_3
    :goto_3
    return-void

    .line 65
    :cond_4
    const-string/jumbo v0, "WEALTH_HOME_ACC_BALANCE"

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 67
    :cond_5
    const-string/jumbo v0, "WEALTH_HOME_KABAO"

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->c:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 70
    goto/16 :goto_1

    :cond_7
    if-nez v2, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->e:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->f:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    goto :goto_2

    .line 73
    :cond_8
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_3

    .line 76
    :cond_9
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getMainInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 77
    iget-object v2, p0, Lcom/alipay/asset/common/view/AccountItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getMainInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/alipay/asset/common/view/AccountItemView;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/android/phone/wealth/home/R$dimen;->a:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/alipay/asset/common/view/AccountItemView;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/android/phone/wealth/home/R$dimen;->b:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "WealthColumn"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "textWidth:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",maxWidth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float v5, v3, v4

    if-lez v5, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    div-float v3, v4, v3

    int-to-float v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_4
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 82
    if-eqz p1, :cond_3

    const-string/jumbo v0, "WEALTH_HOME_BANKCARD"

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 84
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "hasHankCards"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 85
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "hasHankCards"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 86
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 79
    :cond_b
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 89
    :cond_c
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public performClick()Z
    .locals 3

    .prologue
    .line 145
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AccountItemView"

    const-string/jumbo v2, "performclick"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->e:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->e:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->isHideFlag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AccountItemView"

    const-string/jumbo v2, "ackclick"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountItemView;->e:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->ackClick()V

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->performClick()Z

    move-result v0

    return v0
.end method
