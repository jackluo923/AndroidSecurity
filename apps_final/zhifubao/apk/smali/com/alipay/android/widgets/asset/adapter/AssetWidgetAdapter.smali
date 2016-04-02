.class public Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;
.super Landroid/widget/BaseAdapter;
.source "AssetWidgetAdapter.java"

# interfaces
.implements Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeSection;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->d:Z

    .line 35
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->b:Landroid/content/Context;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a:Ljava/util/List;

    .line 37
    invoke-static {p1}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->c:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 100
    instance-of v0, p1, Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    if-eqz v0, :cond_1

    .line 102
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->c:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-object v0, p1

    .line 103
    check-cast v0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Ljava/lang/String;)Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    move-result-object v0

    .line 104
    check-cast p1, Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    invoke-virtual {p1, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->bindWidgetFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    instance-of v0, p1, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 107
    check-cast v0, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->getLeftWidgetView()Lcom/alipay/asset/common/view/WealthColumnWidgetView;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->c:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Ljava/lang/String;)Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->bindWidgetFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    .line 109
    check-cast p1, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;

    invoke-virtual {p1}, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->getRightWidgetView()Lcom/alipay/asset/common/view/WealthColumnWidgetView;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->c:Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Ljava/lang/String;)Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->bindWidgetFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeSection;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    :cond_1
    iput-boolean p2, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->d:Z

    .line 46
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->d:Z

    .line 53
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 73
    const-string/jumbo v1, "AssetWidgetAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getView, position:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",convertView is null:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-nez p2, :cond_2

    .line 75
    new-instance v1, Lcom/alipay/asset/common/view/WealthSectionView;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/alipay/asset/common/view/WealthSectionView;-><init>(Landroid/content/Context;)V

    :goto_1
    move-object v0, v1

    .line 77
    check-cast v0, Lcom/alipay/asset/common/view/WealthSectionView;

    invoke-virtual {v0, p0}, Lcom/alipay/asset/common/view/WealthSectionView;->setWealthWidgetViewUpdateListener(Lcom/alipay/android/widgets/asset/listener/WealthWidgetViewUpdateListener;)V

    move-object v0, v1

    .line 78
    check-cast v0, Lcom/alipay/asset/common/view/WealthSectionView;

    invoke-virtual {p0, p1}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    iget-boolean v4, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->d:Z

    invoke-virtual {v0, v2, v4}, Lcom/alipay/asset/common/view/WealthSectionView;->setSection(Lcom/alipay/android/widgets/asset/model/WealthHomeSection;Z)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 82
    iget-object v2, p0, Lcom/alipay/android/widgets/asset/adapter/AssetWidgetAdapter;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alipay/android/phone/wealth/home/R$dimen;->f:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 83
    sget v2, Lcom/alipay/android/phone/wealth/home/R$id;->n:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    :goto_2
    return-object v1

    :cond_0
    move v0, v3

    .line 73
    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    sget v2, Lcom/alipay/android/phone/wealth/home/R$id;->n:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    move-object v1, p2

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method
