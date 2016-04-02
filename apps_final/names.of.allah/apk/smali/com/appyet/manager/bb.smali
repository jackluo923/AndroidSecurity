.class final Lcom/appyet/manager/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/appyet/manager/as;


# direct methods
.method constructor <init>(Lcom/appyet/manager/as;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    const/high16 v5, 0x43480000    # 200.0f

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->e(Lcom/appyet/manager/as;)Z

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    new-instance v1, Lcom/appyet/manager/MediaProgressNotification;

    iget-object v2, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v2}, Lcom/appyet/manager/as;->g(Lcom/appyet/manager/as;)Lcom/appyet/context/ApplicationContext;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v3}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/appyet/manager/MediaProgressNotification;-><init>(Lcom/appyet/context/ApplicationContext;I)V

    invoke-static {v0, v1}, Lcom/appyet/manager/as;->a(Lcom/appyet/manager/as;Lcom/appyet/manager/MediaProgressNotification;)Lcom/appyet/manager/MediaProgressNotification;

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v1}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v2}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v1}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v2}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->g(Lcom/appyet/manager/as;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v1}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v2}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    iget-object v3, v0, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v3}, Lcom/appyet/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v3

    new-instance v4, Lcom/appyet/manager/l;

    invoke-direct {v4, v0, v2, v1}, Lcom/appyet/manager/l;-><init>(Lcom/appyet/manager/d;Ljava/lang/Integer;Ljava/lang/Long;)V

    invoke-static {v3, v4}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v1}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setEnclosureDuration(Ljava/lang/Integer;)V

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v1}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v2}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v1}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureCurrentPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->j(Lcom/appyet/manager/as;)Lcom/appyet/activity/MediaPlayerActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->j(Lcom/appyet/manager/as;)Lcom/appyet/activity/MediaPlayerActivity;

    move-result-object v0

    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_3
    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->i()V

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->k(Lcom/appyet/manager/as;)V

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->l()V

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->l(Lcom/appyet/manager/as;)V

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->m(Lcom/appyet/manager/as;)V

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v2}, Lcom/appyet/manager/as;->g(Lcom/appyet/manager/as;)Lcom/appyet/context/ApplicationContext;

    move-result-object v2

    const-class v3, Lcom/appyet/service/MediaService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/appyet/manager/as;->a(Lcom/appyet/manager/as;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->g(Lcom/appyet/manager/as;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v1}, Lcom/appyet/manager/as;->n(Lcom/appyet/manager/as;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->o(Lcom/appyet/manager/as;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->i(Lcom/appyet/manager/as;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/manager/bb;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method
