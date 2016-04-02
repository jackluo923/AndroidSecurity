.class public Lcom/alipay/android/phone/home/user/UserSettingActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "UserSettingActivity.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private final b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/android/phone/home/user/UserContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 23
    const-class v0, Lcom/alipay/android/phone/home/user/UserInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserSettingActivity;->b:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserSettingActivity;->d:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lcom/alipay/android/phone/openplatform/R$layout;->o:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserSettingActivity;->setContentView(I)V

    .line 36
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserSettingActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserSettingActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTitlebarBg()Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$color;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setBackgroundResource(I)V

    .line 39
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->Z:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/user/UserContainer;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserSettingActivity;->e:Lcom/alipay/android/phone/home/user/UserContainer;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 41
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 40
    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserSettingActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserSettingActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserSettingActivity;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    const-string/jumbo v1, "userConfig"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getUserAppsFromLocal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/user/UserSettingActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "userConfig.list.size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserSettingActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserSettingActivity;->e:Lcom/alipay/android/phone/home/user/UserContainer;

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserSettingActivity;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/user/UserContainer;->setUserAppList(Ljava/util/List;)V

    .line 44
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
