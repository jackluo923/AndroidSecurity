.class public Lcom/alipay/asset/common/view/WealthSectionView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "WealthSectionView.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Lcom/alipay/asset/common/view/WealthSummaryView;

.field private d:Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

.field private e:Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/WealthSectionView;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/WealthSectionView;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/WealthSectionView;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->k:I

    .line 51
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->N:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 53
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->M:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthSummaryView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->c:Lcom/alipay/asset/common/view/WealthSummaryView;

    .line 54
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->V:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 55
    return-void
.end method


# virtual methods
.method public setSection(Lcom/alipay/android/widgets/asset/model/WealthHomeSection;Z)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 58
    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthSectionView;->d:Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 66
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getSummary()Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    move-result-object v0

    if-nez v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->c:Lcom/alipay/asset/common/view/WealthSummaryView;

    invoke-virtual {v0, v2}, Lcom/alipay/asset/common/view/WealthSummaryView;->setVisibility(I)V

    .line 73
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeAllViews()V

    .line 74
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v2, v3

    .line 75
    :goto_2
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    .line 94
    :cond_1
    return-void

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->c:Lcom/alipay/asset/common/view/WealthSummaryView;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getSummary()Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/asset/common/view/WealthSummaryView;->setSummary(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Z)V

    .line 70
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->c:Lcom/alipay/asset/common/view/WealthSummaryView;

    invoke-virtual {v0, v3}, Lcom/alipay/asset/common/view/WealthSummaryView;->setVisibility(I)V

    goto :goto_1

    .line 76
    :cond_4
    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 78
    new-instance v4, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthSectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v4, v1, v0, p2}, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->setWidgetModules(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Z)V

    .line 80
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->e:Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;

    if-eqz v0, :cond_5

    .line 81
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->e:Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;

    invoke-interface {v0, v4}, Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;->a(Landroid/view/View;)V

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    .line 75
    :cond_6
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 84
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 85
    new-instance v1, Lcom/alipay/asset/common/view/WealthSingleWidgetView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthSectionView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alipay/asset/common/view/WealthSingleWidgetView;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/asset/common/view/WealthSingleWidgetView;->setWealthHomeModule(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Z)V

    .line 87
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->e:Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;

    if-eqz v0, :cond_8

    .line 88
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->e:Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;

    invoke-interface {v0, v1}, Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;->a(Landroid/view/View;)V

    .line 90
    :cond_8
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthSectionView;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3
.end method

.method public setWealthWidgetViewUpdateListener(Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthSectionView;->e:Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;

    .line 47
    return-void
.end method
