.class public Lcom/appyet/activity/SplashActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/appyet/context/ApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/appyet/activity/SplashActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/SplashActivity;->b:Lcom/appyet/context/ApplicationContext;

    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Lcom/appyet/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/appyet/activity/SplashActivity;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/appyet/activity/SplashActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/appyet/activity/SplashActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v1, v1, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataSetting;->SplashScreenBgColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const v0, 0x7f04000e

    const v1, 0x7f040010

    invoke-virtual {p0, v0, v1}, Lcom/appyet/activity/SplashActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/appyet/activity/SplashActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-boolean v0, v0, Lcom/appyet/metadata/MetadataSetting;->IsShowSplashScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/SplashActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-short v0, v0, Lcom/appyet/metadata/MetadataSetting;->SplashTime:S

    if-lez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/appyet/activity/ab;

    invoke-direct {v1, p0}, Lcom/appyet/activity/ab;-><init>(Lcom/appyet/activity/SplashActivity;)V

    iget-object v2, p0, Lcom/appyet/activity/SplashActivity;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v2, v2, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-short v2, v2, Lcom/appyet/metadata/MetadataSetting;->SplashTime:S

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/activity/SplashActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/appyet/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
