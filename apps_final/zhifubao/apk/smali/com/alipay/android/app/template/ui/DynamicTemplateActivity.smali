.class public Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "DynamicTemplateActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field public publishVersion:Ljava/lang/String;

.field public templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
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

.method public getPageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->templateId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 26
    const-string/jumbo v1, "templateId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->templateId:Ljava/lang/String;

    .line 27
    const-string/jumbo v1, "publishVersion"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->publishVersion:Ljava/lang/String;

    .line 29
    const-string/jumbo v1, "temporaryCacheKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/alipay/android/app/template/action/TplController;->getInstance()Lcom/alipay/android/app/template/action/TplController;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/action/TplController;->getTemporaryCachedView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->showTemplate(Landroid/view/View;)V

    .line 33
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->pushActivity(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Landroid/view/View;

    .line 65
    iput-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->templateId:Ljava/lang/String;

    .line 66
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 67
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->templateId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/Tracker;->leavePage(Landroid/view/View;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 47
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->templateId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/Tracker;->enterPage(Landroid/view/View;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public showTemplate(Landroid/view/View;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->dismissProgressDialog()V

    .line 39
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 40
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 41
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
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
