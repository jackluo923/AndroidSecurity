.class public Lcom/appyet/activity/PodcastActionActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field d:Landroid/view/View$OnClickListener;

.field private e:Lcom/appyet/context/ApplicationContext;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:I

.field private l:Lcom/appyet/data/FeedItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/appyet/activity/v;

    invoke-direct {v0, p0}, Lcom/appyet/activity/v;-><init>(Lcom/appyet/activity/PodcastActionActivity;)V

    iput-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/activity/w;

    invoke-direct {v0, p0}, Lcom/appyet/activity/w;-><init>(Lcom/appyet/activity/PodcastActionActivity;)V

    iput-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/activity/x;

    invoke-direct {v0, p0}, Lcom/appyet/activity/x;-><init>(Lcom/appyet/activity/PodcastActionActivity;)V

    iput-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->c:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/appyet/activity/y;

    invoke-direct {v0, p0}, Lcom/appyet/activity/y;-><init>(Lcom/appyet/activity/PodcastActionActivity;)V

    iput-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/activity/PodcastActionActivity;)Lcom/appyet/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/activity/PodcastActionActivity;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/activity/VideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL"

    iget-object v2, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TITLE"

    iget-object v2, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->f()Lcom/appyet/data/FeedItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->f()Lcom/appyet/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    iget-object v1, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/as;->a(Lcom/appyet/data/FeedItem;)V

    :cond_2
    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v0, p1}, Lcom/appyet/manager/as;->a(Z)V

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appyet/activity/MediaPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/appyet/activity/PodcastActionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/appyet/activity/PodcastActionActivity;)Lcom/appyet/data/FeedItem;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

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
    .locals 4

    invoke-virtual {p0}, Lcom/appyet/activity/PodcastActionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/appyet/activity/PodcastActionActivity;->setContentView(I)V

    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/appyet/activity/PodcastActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Lcom/appyet/activity/PodcastActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/appyet/activity/PodcastActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "POSITION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "POSITION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appyet/activity/PodcastActionActivity;->k:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    iget v1, p0, Lcom/appyet/activity/PodcastActionActivity;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    iput-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

    const v0, 0x7f0a00d4

    invoke-virtual {p0, v0}, Lcom/appyet/activity/PodcastActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lcom/appyet/activity/PodcastActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->f:Landroid/widget/Button;

    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Lcom/appyet/activity/PodcastActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->g:Landroid/widget/Button;

    const v0, 0x7f0a00d7

    invoke-virtual {p0, v0}, Lcom/appyet/activity/PodcastActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->h:Landroid/widget/Button;

    const v0, 0x7f0a00d8

    invoke-virtual {p0, v0}, Lcom/appyet/activity/PodcastActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/activity/PodcastActionActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/activity/PodcastActionActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/activity/PodcastActionActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/appyet/activity/PodcastActionActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    iget-object v1, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

    invoke-virtual {v2}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/activity/PodcastActionActivity;->l:Lcom/appyet/data/FeedItem;

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/appyet/manager/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/af;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->e:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    const-string v1, "PodcastAction"

    invoke-virtual {v0, v1}, Lcom/appyet/manager/ap;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-void

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/appyet/activity/PodcastActionActivity;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/activity/PodcastActionActivity;->i:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method
