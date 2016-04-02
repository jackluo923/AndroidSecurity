.class public Lcom/alipay/asset/common/view/BaseWealthWidgetView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "BaseWealthWidgetView.java"

# interfaces
.implements Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;


# static fields
.field private static c:Lcom/alipay/mobile/commonbiz/image/ImageWorker;


# instance fields
.field private a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private b:Lcom/alipay/mobile/framework/service/common/SchemeService;

.field protected iconView:Lcom/alipay/mobile/commonui/widget/APImageView;

.field protected mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected redPointContainerView:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

.field protected secondaryInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected titleView:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

.field protected widgetId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->getLayoutId()I

    move-result v1

    .line 76
    const/4 v2, 0x1

    .line 75
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->Q:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->titleView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 78
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->E:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->mainInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 79
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->L:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->secondaryInfoView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 80
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->H:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->redPointContainerView:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 81
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->p:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->iconView:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 82
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 84
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 82
    iput-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->b:Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 85
    instance-of v0, p0, Lcom/alipay/asset/common/view/WealthSummaryView;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/alipay/asset/common/view/a;

    invoke-direct {v0, p0}, Lcom/alipay/asset/common/view/a;-><init>(Lcom/alipay/asset/common/view/BaseWealthWidgetView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5

    .prologue
    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 192
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v2, v1, v0

    .line 193
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 194
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 195
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    aget-object v0, v1, v0

    .line 198
    :cond_2
    array-length v3, v1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    .line 200
    array-length v3, v1

    add-int/lit8 v3, v3, -0x3

    aget-object v1, v1, v3

    .line 201
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v3

    .line 202
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 207
    :goto_1
    if-eqz v1, :cond_0

    .line 209
    :try_start_0
    const-string/jumbo v3, "drawable"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 210
    if-lez v0, :cond_0

    .line 211
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 212
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 204
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/alipay/asset/common/view/BaseWealthWidgetView;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public bindWidgetFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 111
    iput-object p1, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 112
    const-string/jumbo v0, "BaseWealthWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bindWidgetFlagView, widgetId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->widgetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->redPointContainerView:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-eq v0, v1, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->redPointContainerView:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    .line 119
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->redPointContainerView:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->addView(Landroid/view/View;)V

    .line 121
    :cond_1
    return-void
.end method

.method public bindWidgetMsgFlag()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public cleanWidgetFlag()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public getBindedWidgetFlagView()Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public handleClick()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSchema()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSchema()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    const-string/jumbo v1, "u"

    iget-object v2, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v2}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSchema()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v1, "st"

    const-string/jumbo v2, "YES"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v1, "sb"

    const-string/jumbo v2, "NO"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 131
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 132
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 134
    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 135
    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 146
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/utils/LogAgentUtil;->a(Ljava/lang/String;)V

    .line 149
    :cond_1
    return-void

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->b:Lcom/alipay/mobile/framework/service/common/SchemeService;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->b:Lcom/alipay/mobile/framework/service/common/SchemeService;

    iget-object v1, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->wealthHomeModule:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto :goto_0

    .line 143
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->j:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public loadIcon(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 152
    if-nez p3, :cond_0

    .line 185
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    sget-object v0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->c:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->c:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setCachePeriod(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    :cond_1
    sget-object v0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->c:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    new-instance v1, Lcom/alipay/asset/common/view/b;

    invoke-direct {v1, p0, p3, p2}, Lcom/alipay/asset/common/view/b;-><init>(Lcom/alipay/asset/common/view/BaseWealthWidgetView;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    goto :goto_0

    .line 184
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public onDataChanged(Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->isHideFlag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->ackClick()V

    .line 267
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setDisplayInfo(Ljava/util/Map;)V
    .locals 0
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
    .line 260
    return-void
.end method

.method public setViewFlag(I)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 238
    iput-object p1, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->widgetId:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->widgetId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method
