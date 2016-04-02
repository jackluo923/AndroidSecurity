.class public abstract Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;
.super Landroid/widget/FrameLayout;
.source "WidgetContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected containerId:Ljava/lang/String;

.field protected groupGap:I

.field protected widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

.field protected widgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->widgetList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->a:Ljava/util/List;

    .line 40
    sget-object v0, Lcom/alipay/mobile/base/commonbiz/R$styleable;->widgetContainer:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->containerId:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 44
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->groupGap:I

    .line 46
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->refresh()V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getContentView(Ljava/util/List;)Landroid/view/View;
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
.end method

.method public getIWidgetViewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->widgetList:Ljava/util/List;

    return-object v0
.end method

.method public getWidgetViewById(Ljava/lang/String;)Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->widgetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 129
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;

    .line 130
    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    .line 147
    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-interface {v1, p1, v2, v3, v4}, Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;->performWidgetClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 157
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 158
    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 159
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 7

    .prologue
    .line 55
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    .line 57
    const-class v0, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->containerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;->getWidgetInfoListbyContainerId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->b:Ljava/util/List;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    :goto_1
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    .line 64
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppType()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 70
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->b:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    :cond_2
    const-string/jumbo v6, "nativeapp"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 76
    const-string/jumbo v6, "alipayapp"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/framework/BundleContext;->isLazyBundleByAppId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 78
    invoke-interface {v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v1

    if-nez v1, :cond_3

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    if-eqz v1, :cond_4

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    invoke-interface {v1, v5, v4}, Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;->isWidgetVisible(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 94
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 60
    :cond_4
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 85
    :cond_5
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallStatusService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallStatusService;

    .line 86
    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallStatusService;->isAppAvailableById(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 103
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->widgetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->removeAllViews()V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->getContentView(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->addView(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public setAdapter(Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    .line 124
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;->refresh()V

    .line 125
    return-void
.end method
