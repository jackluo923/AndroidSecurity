.class public Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;
.super Lcom/alipay/mobile/commonui/widget/APExtTableView;
.source "DefaultListWidgetView.java"

# interfaces
.implements Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APExtTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public bindWidgetMsgFlag()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayInfo(Ljava/util/Map;)V
    .locals 6
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
    .line 50
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "desc"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "icon"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "tips"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 59
    const-class v1, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;->updateWidgetDisplayInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->setLeftText(Ljava/lang/String;)V

    .line 68
    :cond_2
    if-eqz v5, :cond_3

    .line 69
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->setRightText(Ljava/lang/String;)V

    .line 73
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string/jumbo v0, "http://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {v0, v3}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0

    .line 77
    :cond_4
    const-string/jumbo v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v2, v1, v0

    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 80
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    .line 81
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    aget-object v0, v1, v0

    .line 83
    :cond_5
    array-length v3, v1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_6

    .line 85
    array-length v3, v1

    add-int/lit8 v3, v3, -0x3

    aget-object v1, v1, v3

    .line 86
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v3

    .line 87
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 91
    :goto_1
    if-eqz v1, :cond_0

    .line 92
    const-string/jumbo v3, "drawable"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 93
    if-lez v0, :cond_0

    .line 94
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 89
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_1
.end method

.method public setViewFlag(I)V
    .locals 1

    .prologue
    .line 104
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 105
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->setType(I)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 107
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->setType(I)V

    goto :goto_0

    .line 108
    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    .line 109
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->setType(I)V

    goto :goto_0

    .line 110
    :cond_3
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 111
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->setType(I)V

    goto :goto_0
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->a:Ljava/lang/String;

    .line 46
    return-void
.end method
