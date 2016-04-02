.class public Lcom/alipay/android/app/template/DynamicTemplateApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "DynamicTemplateApp.java"


# static fields
.field public static final AppId:Ljava/lang/String; = "20001002"

.field public static final REQUEST_TYPE_KEY:Ljava/lang/String; = "request_type"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateApp;->a:Landroid/os/Bundle;

    .line 34
    return-void
.end method

.method public static verifyLaunchParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 224
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp;->a:Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/alipay/android/app/template/DynamicTemplateApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 55
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 56
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->clearCache()V

    .line 59
    :cond_0
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/alipay/android/app/template/DynamicTemplateApp;->getActiveActivityCount()I

    move-result v1

    .line 64
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 70
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp;->a:Landroid/os/Bundle;

    .line 71
    invoke-virtual {p0}, Lcom/alipay/android/app/template/DynamicTemplateApp;->onStart()V

    .line 72
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/DynamicTemplateApp;->getActivityAt(I)Landroid/app/Activity;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 64
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onStart()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 78
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    .line 79
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateApp;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateApp;->a:Landroid/os/Bundle;

    const-string/jumbo v4, "operationType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/android/app/template/DynamicTemplateApp;->a:Landroid/os/Bundle;

    const-string/jumbo v5, "pageData"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/app/template/DynamicTemplateApp;->a:Landroid/os/Bundle;

    const-string/jumbo v6, "templateId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/app/template/DynamicTemplateApp;->a:Landroid/os/Bundle;

    const-string/jumbo v7, "template_time"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Lcom/alipay/android/app/template/DynamicTemplateApp;->verifyLaunchParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 80
    sget v0, Lcom/alipay/android/app/template/R$string;->template_args_invalid:I

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    .line 84
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 87
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    .line 88
    const-string/jumbo v4, "launchPage"

    aput-object v4, v3, v2

    .line 89
    const-string/jumbo v2, "launchListView"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    .line 90
    const-string/jumbo v2, "launchRecyclerView"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    .line 91
    const-string/jumbo v2, "preLoad"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    .line 92
    const-string/jumbo v2, "handleBirdResponse"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    .line 93
    const-string/jumbo v2, "generateView"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    .line 94
    const-string/jumbo v2, "close"

    aput-object v2, v3, v1

    .line 96
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v2, Lcom/alipay/android/app/template/DynamicTemplateApp$1;

    invoke-direct {v2, p0, v3, v0}, Lcom/alipay/android/app/template/DynamicTemplateApp$1;-><init>(Lcom/alipay/android/app/template/DynamicTemplateApp;[Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method
