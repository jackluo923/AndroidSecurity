.class public Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "FlybirdDemoActivity.java"


# instance fields
.field private a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private b:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;)Lcom/alipay/android/app/template/service/DynamicTemplateService;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static extractTplIdFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    const-string/jumbo v0, "/sdcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 112
    const-string/jumbo v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 111
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 114
    :cond_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/alipay/android/app/template/R$layout;->activity_flybird_demo:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;->setContentView(I)V

    .line 55
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 58
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 54
    iput-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 59
    sget v0, Lcom/alipay/android/app/template/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 60
    const-string/jumbo v1, "\u9e1f\u5de2\u6d4b\u8bd5"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 61
    sget v0, Lcom/alipay/android/app/template/R$id;->flybirdLayout:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;->b:Landroid/widget/FrameLayout;

    .line 62
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 64
    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 62
    new-instance v1, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;-><init>(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;)V

    .line 105
    const-string/jumbo v2, "FlybirdDemoActivity"

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 163
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    .line 179
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 187
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onStart()V

    .line 195
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
