.class public Lcom/alipay/asset/common/view/AccountInfoView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "AccountInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/asset/common/view/AccountItemView;

.field private c:Lcom/alipay/asset/common/view/AccountItemView;

.field private d:Lcom/alipay/asset/common/view/AccountItemView;

.field private e:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private f:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private g:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private k:Lcom/alipay/mobile/commonui/widget/APFrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/AccountInfoView;->a(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/AccountInfoView;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/AccountInfoView;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->a:I

    .line 123
    const/4 v2, 0x1

    .line 122
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->j:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/AccountItemView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->b:Lcom/alipay/asset/common/view/AccountItemView;

    .line 125
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/AccountItemView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->c:Lcom/alipay/asset/common/view/AccountItemView;

    .line 126
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->B:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/AccountItemView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->d:Lcom/alipay/asset/common/view/AccountItemView;

    .line 127
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->b:Lcom/alipay/asset/common/view/AccountItemView;

    const-string/jumbo v1, "WEALTH_HOME_BANKCARD"

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/AccountItemView;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->c:Lcom/alipay/asset/common/view/AccountItemView;

    const-string/jumbo v1, "WEALTH_HOME_ACC_BALANCE"

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/AccountItemView;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->d:Lcom/alipay/asset/common/view/AccountItemView;

    const-string/jumbo v1, "WEALTH_HOME_KABAO"

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/AccountItemView;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->b:Lcom/alipay/asset/common/view/AccountItemView;

    invoke-virtual {v0, p0}, Lcom/alipay/asset/common/view/AccountItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->c:Lcom/alipay/asset/common/view/AccountItemView;

    invoke-virtual {v0, p0}, Lcom/alipay/asset/common/view/AccountItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->d:Lcom/alipay/asset/common/view/AccountItemView;

    invoke-virtual {v0, p0}, Lcom/alipay/asset/common/view/AccountItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->h:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->h:Landroid/view/View;

    const-string/jumbo v1, "WEALTH_HOME_TOTAL_ASSET"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->T:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 138
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->v:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 139
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->w:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 141
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->i:Landroid/view/View;

    .line 142
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->H:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/AccountInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->k:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 143
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 164
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$string;->j:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    iget-object v2, p0, Lcom/alipay/asset/common/view/AccountInfoView;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSchema()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "WEALTH_HOME_TOTAL_ASSET"

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->b()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(I)V

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alipay/asset/common/view/AccountInfoView;->i:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSchema()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/utils/LogAgentUtil;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->j:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public setAccountInfoMap(Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 64
    iput-object p1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->a:Ljava/util/Map;

    .line 65
    if-nez p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->reset()V

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string/jumbo v0, "WEALTH_HOME_TOTAL_ASSET"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->i:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$dimen;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APAutoResizeTextView;->setAutoTextSize(I)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "isInsuOpen"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getExtInfos()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "isInsuOpen"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$color;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/android/phone/wealth/home/R$drawable;->c:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    :goto_3
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :goto_4
    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSecondaryInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getSecondaryInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/widgets/asset/widget/WidgetMsgFlagManager;->a(Ljava/lang/String;)Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->j:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    iput-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->j:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AccountInfoView"

    const-string/jumbo v3, "bindWidgetFlagView, widgetId"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/asset/common/view/AccountInfoView;->k:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-eq v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->k:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->k:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->addView(Landroid/view/View;)V

    .line 71
    :cond_2
    :goto_6
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->b:Lcom/alipay/asset/common/view/AccountItemView;

    const-string/jumbo v0, "WEALTH_HOME_BANKCARD"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2, v4}, Lcom/alipay/asset/common/view/AccountItemView;->bindWealthModule(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Ljava/lang/String;Z)V

    .line 72
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->c:Lcom/alipay/asset/common/view/AccountItemView;

    const-string/jumbo v0, "WEALTH_HOME_ACC_BALANCE"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    .line 73
    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->d:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v1, v0, v2, p2}, Lcom/alipay/asset/common/view/AccountItemView;->bindWealthModule(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Ljava/lang/String;Z)V

    .line 74
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->d:Lcom/alipay/asset/common/view/AccountItemView;

    const-string/jumbo v0, "WEALTH_HOME_KABAO"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2, v4}, Lcom/alipay/asset/common/view/AccountItemView;->bindWealthModule(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 70
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getMainInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->getMainInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$string;->d:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->i:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/wealth/home/R$color;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/android/phone/wealth/home/R$drawable;->b:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    iget-object v1, p0, Lcom/alipay/asset/common/view/AccountInfoView;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_9
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->k:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    goto/16 :goto_6
.end method

.method public setAmountHidden(Z)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/asset/common/view/AccountInfoView;->a:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/asset/common/view/AccountInfoView;->setAccountInfoMap(Ljava/util/Map;Z)V

    .line 79
    return-void
.end method
