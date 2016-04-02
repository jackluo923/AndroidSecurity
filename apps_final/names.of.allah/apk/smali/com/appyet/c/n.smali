.class final Lcom/appyet/c/n;
.super Lcom/appyet/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appyet/f/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/appyet/c/k;


# direct methods
.method public constructor <init>(Lcom/appyet/c/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/n;->b:Lcom/appyet/c/k;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    iput-object p2, p0, Lcom/appyet/c/n;->a:Ljava/lang/String;

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 10

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/n;->a:Ljava/lang/String;

    const-string v1, "///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/appyet/c/n;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/appyet/f/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/appyet/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/appyet/c/n;->b:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/appyet/c/n;->b:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->j(Lcom/appyet/c/k;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    iget-object v1, p0, Lcom/appyet/c/n;->b:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getCacheGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/appyet/manager/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/data/FileCache;

    iget-object v7, p0, Lcom/appyet/c/n;->b:Lcom/appyet/c/k;

    invoke-static {v7}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v7

    iget-object v7, v7, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    invoke-virtual {v1}, Lcom/appyet/data/FileCache;->getFileCacheName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/appyet/c/n;->b:Lcom/appyet/c/k;

    invoke-static {v9}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v9

    iget-object v9, v9, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v9}, Lcom/appyet/manager/bp;->B()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/appyet/manager/al;->a(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Lcom/appyet/data/FileCache;->getFileCacheName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Lcom/appyet/data/FileCache;->getFileLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_5
    if-lez v3, :cond_4

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/appyet/c/n;->b:Lcom/appyet/c/k;

    invoke-static {v3}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v3

    const-class v4, Lcom/appyet/activity/ImageViewerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "SHARE_TITLE"

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "SHARE_URL"

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SELECTED_POSITION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "IMAGE_LINKS"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/c/n;->b:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/n;->b:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->i(Lcom/appyet/c/k;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appyet/c/n;->b:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->i(Lcom/appyet/c/k;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/c/n;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
