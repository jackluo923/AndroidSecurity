.class public Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer;
.super Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;
.source "WidgetGridContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getContentView(Ljava/util/List;)Landroid/view/View;
    .locals 13
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
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v12, -0x2

    const/4 v4, 0x0

    .line 46
    new-instance v0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer$1;-><init>(Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 60
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->table_square_top:I

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    move v3, v4

    move-object v2, v5

    .line 66
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    .line 162
    return-object v8

    .line 67
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    .line 69
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getGroup()Ljava/lang/String;

    move-result-object v9

    .line 70
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 71
    if-lez v3, :cond_5

    add-int/lit8 v1, v3, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    .line 74
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getGroup()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 76
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_6

    .line 77
    add-int/lit8 v1, v3, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getGroup()Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 83
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    move v1, v7

    .line 98
    :goto_3
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 99
    const-string/jumbo v6, "name"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v6, "icon"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getIcon()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v6, "desc"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getDisc()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v6, "tips"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getTips()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v6, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    if-eqz v6, :cond_c

    .line 107
    iget-object v6, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    .line 108
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppId()Ljava/lang/String;

    move-result-object v11

    .line 107
    invoke-interface {v6, v10, v11, v9, v1}, Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;->getWidgetView(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;

    move-result-object v6

    .line 112
    :goto_4
    if-nez v6, :cond_1

    .line 113
    new-instance v6, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;-><init>(Landroid/content/Context;)V

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->setWidgetId(Ljava/lang/String;)V

    .line 118
    invoke-interface {v6, v9}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->setDisplayInfo(Ljava/util/Map;)V

    .line 119
    invoke-interface {v6, v1}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->setViewFlag(I)V

    .line 120
    iget-object v9, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    if-eqz v9, :cond_2

    .line 121
    iget-object v9, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    .line 122
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppId()Ljava/lang/String;

    move-result-object v11

    .line 121
    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;->needBindWidgetMsgFlag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 123
    invoke-interface {v6}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->bindWidgetMsgFlag()V

    .line 125
    :cond_2
    iget-object v9, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer;->widgetList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v6}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->getView()Landroid/view/View;

    move-result-object v6

    .line 129
    if-eqz v6, :cond_b

    .line 130
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    sget v9, Lcom/alipay/mobile/ui/R$id;->performance_sdk_monitor_key:I

    .line 135
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v6, v9, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 138
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 137
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 140
    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_3

    .line 141
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    .line 142
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    :goto_5
    if-nez v0, :cond_4

    .line 150
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 155
    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v1

    .line 66
    :goto_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto/16 :goto_0

    .line 74
    :cond_5
    const-string/jumbo v1, "-1"

    move-object v6, v1

    goto/16 :goto_1

    .line 77
    :cond_6
    const-string/jumbo v1, "-1"

    goto/16 :goto_2

    .line 86
    :cond_7
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 87
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 88
    const/4 v1, 0x2

    goto/16 :goto_3

    .line 90
    :cond_8
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 91
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 92
    const/4 v1, 0x4

    goto/16 :goto_3

    .line 94
    :cond_9
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 95
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 96
    const/16 v1, 0x8

    goto/16 :goto_3

    :cond_a
    move-object v1, v2

    goto :goto_5

    :cond_b
    move-object v0, v2

    goto :goto_6

    :cond_c
    move-object v6, v5

    goto/16 :goto_4

    :cond_d
    move v1, v4

    goto/16 :goto_3
.end method
