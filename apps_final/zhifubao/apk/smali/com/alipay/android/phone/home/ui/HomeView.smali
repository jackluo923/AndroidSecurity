.class public Lcom/alipay/android/phone/home/ui/HomeView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "HomeView.java"

# interfaces
.implements Lcom/alipay/android/launcher/core/IWidget;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string/jumbo v0, "standard"

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->a:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HomeView;->d:Landroid/content/Context;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 41
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 40
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 42
    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/home/ui/HomeFragment;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeView;->addView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const-string/jumbo v0, "standard"

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->a:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HomeView;->d:Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 68
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 67
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 69
    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/home/ui/HomeFragment;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeView;->addView(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const-string/jumbo v0, "standard"

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->a:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HomeView;->d:Landroid/content/Context;

    .line 54
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 55
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 54
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 56
    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/home/ui/HomeFragment;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeView;->addView(Landroid/view/View;)V

    .line 58
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->onDestroy()V

    .line 120
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 90
    return-object p0
.end method

.method public onKeyDownEvent()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public onReLogin()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->onReLogin()V

    .line 124
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeView;->showSimpleVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->a:Ljava/lang/String;

    const-string/jumbo v1, "simple"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeView;->removeAllViews()V

    .line 98
    const-string/jumbo v0, "simple"

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->a:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeView;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/ui/SimpleHomeFragment;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeView;->addView(Landroid/view/View;)V

    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->onRefresh()V

    .line 110
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeView;->showSimpleVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->a:Ljava/lang/String;

    const-string/jumbo v1, "standard"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeView;->removeAllViews()V

    .line 104
    const-string/jumbo v0, "standard"

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->a:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeFragment;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HomeView;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/ui/HomeFragment;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeView;->c:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setActivityApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method showSimpleVersion()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method
