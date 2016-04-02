.class public Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;
.super Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;
.source "WidgetListContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected getContentView(Ljava/util/List;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer$1;-><init>(Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v2, v3

    .line 63
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 148
    return-object v6

    .line 64
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    .line 66
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getGroup()Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 68
    if-lez v2, :cond_a

    .line 71
    add-int/lit8 v1, v2, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getGroup()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 73
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_b

    .line 74
    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getGroup()Ljava/lang/String;

    move-result-object v1

    .line 79
    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    move v1, v5

    .line 91
    :goto_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 92
    const-string/jumbo v4, "name"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v4, "icon"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getIcon()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v4, "desc"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getDisc()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v4, "tips"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getTips()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/4 v4, 0x0

    .line 99
    iget-object v8, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    if-eqz v8, :cond_1

    .line 100
    iget-object v4, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    .line 101
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppId()Ljava/lang/String;

    move-result-object v9

    .line 100
    invoke-interface {v4, v8, v9, v7, v1}, Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;->getWidgetView(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;

    move-result-object v4

    .line 104
    :cond_1
    if-nez v4, :cond_2

    .line 105
    new-instance v4, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;-><init>(Landroid/content/Context;)V

    .line 109
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->setWidgetId(Ljava/lang/String;)V

    .line 110
    invoke-interface {v4, v7}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->setDisplayInfo(Ljava/util/Map;)V

    .line 111
    invoke-interface {v4, v1}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->setViewFlag(I)V

    .line 112
    iget-object v7, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    if-eqz v7, :cond_3

    .line 113
    iget-object v7, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;->needBindWidgetMsgFlag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 114
    invoke-interface {v4}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->bindWidgetMsgFlag()V

    .line 116
    :cond_3
    iget-object v7, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->widgetList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v4}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->getView()Landroid/view/View;

    move-result-object v4

    .line 120
    if-eqz v4, :cond_9

    .line 121
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    sget v7, Lcom/alipay/mobile/ui/R$id;->performance_sdk_monitor_key:I

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 125
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 129
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 130
    and-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_4

    .line 131
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_5

    .line 132
    :cond_4
    iget v7, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->groupGap:I

    div-int/lit8 v7, v7, 0x2

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 134
    :cond_5
    and-int/lit8 v7, v1, 0x4

    if-nez v7, :cond_6

    .line 135
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    .line 136
    :cond_6
    iget v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->groupGap:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 139
    :cond_7
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_8

    .line 140
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 143
    :cond_8
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 71
    :cond_a
    const-string/jumbo v1, "-1"

    move-object v4, v1

    goto/16 :goto_1

    .line 74
    :cond_b
    const-string/jumbo v1, "-1"

    goto/16 :goto_2

    .line 82
    :cond_c
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 83
    const/4 v1, 0x2

    goto/16 :goto_3

    .line 85
    :cond_d
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 86
    const/4 v1, 0x4

    goto/16 :goto_3

    .line 88
    :cond_e
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 89
    const/16 v1, 0x8

    goto/16 :goto_3

    :cond_f
    move v1, v3

    goto/16 :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 36
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->onLayout(ZIIII)V

    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->postInvalidate()V

    .line 39
    return-void
.end method
