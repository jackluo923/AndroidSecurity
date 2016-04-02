.class public Lcom/appyet/activity/WebActionActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field private d:Lcom/appyet/context/ApplicationContext;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/appyet/activity/aj;

    invoke-direct {v0, p0}, Lcom/appyet/activity/aj;-><init>(Lcom/appyet/activity/WebActionActivity;)V

    iput-object v0, p0, Lcom/appyet/activity/WebActionActivity;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/activity/ak;

    invoke-direct {v0, p0}, Lcom/appyet/activity/ak;-><init>(Lcom/appyet/activity/WebActionActivity;)V

    iput-object v0, p0, Lcom/appyet/activity/WebActionActivity;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/activity/al;

    invoke-direct {v0, p0}, Lcom/appyet/activity/al;-><init>(Lcom/appyet/activity/WebActionActivity;)V

    iput-object v0, p0, Lcom/appyet/activity/WebActionActivity;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/activity/WebActionActivity;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/activity/WebActionActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/appyet/f/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/WebActionActivity;->d:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/activity/VideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL"

    iget-object v2, p0, Lcom/appyet/activity/WebActionActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TITLE"

    iget-object v2, p0, Lcom/appyet/activity/WebActionActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/WebActionActivity;->d:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/appyet/activity/WebActionActivity;->d:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    iget-object v1, p0, Lcom/appyet/activity/WebActionActivity;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/appyet/activity/WebActionActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/as;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/activity/WebActionActivity;->d:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appyet/manager/as;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/activity/MediaPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WebActionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appyet/activity/WebActionActivity;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/activity/WebActionActivity;->d:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/appyet/activity/WebActionActivity;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/appyet/activity/WebActionActivity;->d:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/appyet/activity/WebActionActivity;)Lcom/appyet/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/WebActionActivity;->d:Lcom/appyet/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/activity/WebActionActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/WebActionActivity;->i:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/appyet/activity/WebActionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/WebActionActivity;->d:Lcom/appyet/context/ApplicationContext;

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030067

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WebActionActivity;->setContentView(I)V

    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WebActionActivity;->setTitle(I)V

    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WebActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/appyet/activity/WebActionActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/activity/WebActionActivity;->getIntent()Landroid/content/Intent;

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

    iput-object v0, p0, Lcom/appyet/activity/WebActionActivity;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const v0, 0x7f0a00d4

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WebActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/activity/WebActionActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/activity/WebActionActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appyet/activity/WebActionActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WebActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appyet/activity/WebActionActivity;->e:Landroid/widget/Button;

    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WebActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appyet/activity/WebActionActivity;->f:Landroid/widget/Button;

    const v0, 0x7f0a00d7

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WebActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appyet/activity/WebActionActivity;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/appyet/activity/WebActionActivity;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/activity/WebActionActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/activity/WebActionActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/activity/WebActionActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/activity/WebActionActivity;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/activity/WebActionActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/activity/WebActionActivity;->d:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "WebAction"

    invoke-virtual {v0, v1}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/activity/WebActionActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
