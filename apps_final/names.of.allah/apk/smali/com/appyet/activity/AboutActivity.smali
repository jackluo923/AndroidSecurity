.class public Lcom/appyet/activity/AboutActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/context/ApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/appyet/activity/AboutActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/activity/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/AboutActivity;->a:Lcom/appyet/context/ApplicationContext;

    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/appyet/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080116

    invoke-virtual {p0, v1}, Lcom/appyet/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/appyet/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appyet/activity/AboutActivity;->a:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1}, Lcom/appyet/context/ApplicationContext;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    return-void
.end method
