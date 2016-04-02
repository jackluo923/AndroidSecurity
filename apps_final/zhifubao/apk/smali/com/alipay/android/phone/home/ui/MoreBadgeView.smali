.class public Lcom/alipay/android/phone/home/ui/MoreBadgeView;
.super Lcom/alipay/mobile/mpass/badge/ui/BadgeView;
.source "MoreBadgeView.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private d:Ljava/util/Observer;

.field private e:Lcom/alipay/android/phone/home/ui/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/alipay/android/phone/home/ui/aq;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/aq;-><init>(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->e:Lcom/alipay/android/phone/home/ui/aq;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Lcom/alipay/android/phone/home/ui/aq;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/aq;-><init>(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->e:Lcom/alipay/android/phone/home/ui/aq;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Lcom/alipay/android/phone/home/ui/aq;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/aq;-><init>(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->e:Lcom/alipay/android/phone/home/ui/aq;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Ljava/util/Observer;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->d:Ljava/util/Observer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Lcom/alipay/android/phone/home/ui/aq;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->e:Lcom/alipay/android/phone/home/ui/aq;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object v0
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->d:Ljava/util/Observer;

    .line 49
    return-void
.end method

.method protected onWidgetInfoUpdate(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000081"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setMoreBadgeViewStyleMsg()V

    .line 62
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 45
    return-void
.end method

.method public setAppManageService(Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 53
    return-void
.end method

.method public setMoreBadgeViewStyleMsg()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/home/ui/ap;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/ap;-><init>(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 118
    return-void
.end method
