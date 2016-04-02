.class public Lcom/appyet/activity/TranslateActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appyet/context/ApplicationContext;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "en"

    iput-object v0, p0, Lcom/appyet/activity/TranslateActivity;->b:Ljava/lang/String;

    new-instance v0, Lcom/appyet/activity/ac;

    invoke-direct {v0, p0}, Lcom/appyet/activity/ac;-><init>(Lcom/appyet/activity/TranslateActivity;)V

    iput-object v0, p0, Lcom/appyet/activity/TranslateActivity;->d:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/activity/ad;

    invoke-direct {v0, p0}, Lcom/appyet/activity/ad;-><init>(Lcom/appyet/activity/TranslateActivity;)V

    iput-object v0, p0, Lcom/appyet/activity/TranslateActivity;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/activity/TranslateActivity;)Lcom/appyet/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/TranslateActivity;->a:Lcom/appyet/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/activity/TranslateActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/TranslateActivity;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/appyet/activity/TranslateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/TranslateActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/activity/TranslateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/TranslateActivity;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    const v0, 0x7f030064

    invoke-virtual {p0, v0}, Lcom/appyet/activity/TranslateActivity;->setContentView(I)V

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/appyet/activity/TranslateActivity;->setTitle(I)V

    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/appyet/activity/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/appyet/activity/TranslateActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/appyet/activity/TranslateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/TranslateActivity;->a:Lcom/appyet/context/ApplicationContext;

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/activity/TranslateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/TranslateActivity;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const v0, 0x7f0a00e7

    invoke-virtual {p0, v0}, Lcom/appyet/activity/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/activity/TranslateActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00e8

    invoke-virtual {p0, v0}, Lcom/appyet/activity/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/activity/TranslateActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00e6

    invoke-virtual {p0, v0}, Lcom/appyet/activity/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/appyet/activity/TranslateActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v1}, Lcom/appyet/manager/bp;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v1, Lcom/appyet/activity/ae;

    invoke-direct {v1, p0}, Lcom/appyet/activity/ae;-><init>(Lcom/appyet/activity/TranslateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/appyet/activity/TranslateActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "Translate"

    invoke-virtual {v0, v1}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/activity/TranslateActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
