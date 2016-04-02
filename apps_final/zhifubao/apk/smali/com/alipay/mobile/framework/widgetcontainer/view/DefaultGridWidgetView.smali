.class public Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
.source "DefaultGridWidgetView.java"

# interfaces
.implements Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$layout;->widget_default_grid_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->item_description:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 40
    return-void
.end method


# virtual methods
.method public bindWidgetMsgFlag()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayInfo(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 68
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "desc"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "icon"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "tips"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 77
    const-class v1, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;->updateWidgetDisplayInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string/jumbo v0, "http://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const-string/jumbo v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v2, v1, v0

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 91
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 92
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    aget-object v0, v1, v0

    .line 94
    :cond_3
    array-length v3, v1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_4

    .line 96
    array-length v3, v1

    add-int/lit8 v3, v3, -0x3

    aget-object v1, v1, v3

    .line 97
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 103
    :goto_1
    const-string/jumbo v3, "drawable"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    if-lez v0, :cond_0

    .line 106
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 108
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    .line 107
    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6, v0, v6, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_1
.end method

.method public setViewFlag(I)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultGridWidgetView;->a:Ljava/lang/String;

    .line 50
    return-void
.end method
