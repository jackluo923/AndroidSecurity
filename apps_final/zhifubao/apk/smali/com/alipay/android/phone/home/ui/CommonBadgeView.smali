.class public Lcom/alipay/android/phone/home/ui/CommonBadgeView;
.super Lcom/alipay/mobile/mpass/badge/ui/BadgeView;
.source "CommonBadgeView.java"

# interfaces
.implements Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private d:Ljava/util/Observer;

.field private e:Lcom/alipay/android/phone/home/ui/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 24
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 26
    new-instance v0, Lcom/alipay/android/phone/home/ui/u;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/u;-><init>(Lcom/alipay/android/phone/home/ui/CommonBadgeView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->e:Lcom/alipay/android/phone/home/ui/u;

    .line 30
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->a:Landroid/content/Context;

    .line 31
    invoke-virtual {p0, p0}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setStyleDelegate(Lcom/alipay/mobile/mpass/badge/ui/BadgeView$StyleDelegate;)V

    .line 32
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-nez v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getStrategicApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    .line 60
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/home/ui/CommonBadgeView;)Ljava/util/Observer;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->d:Ljava/util/Observer;

    return-object v0
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->d:Ljava/util/Observer;

    .line 74
    return-void
.end method

.method public getBgDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/16 v2, 0xa

    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    if-ge p2, v2, :cond_1

    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$drawable;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    if-lt p2, v2, :cond_2

    if-ge p2, v3, :cond_2

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$drawable;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_2
    if-lt p2, v3, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$drawable;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getRedPointDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextDpSize()I
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/16 v0, 0xe

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onWidgetInfoUpdate(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)Z
    .locals 5

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->getMsgCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->e:Lcom/alipay/android/phone/home/ui/u;

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;

    const-string/jumbo v3, "RedPoint"

    iget-object v4, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {v2, v3, v4, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;-><init>(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Z)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/ui/u;->notifyObservers(Ljava/lang/Object;)V

    .line 85
    invoke-super {p0, p1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->onWidgetInfoUpdate(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)Z

    move-result v0

    return v0
.end method

.method public setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 44
    return-void
.end method

.method public setAppManageService(Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 70
    return-void
.end method
