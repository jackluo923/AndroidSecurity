.class final Lcom/appyet/manager/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/appyet/manager/as;


# direct methods
.method constructor <init>(Lcom/appyet/manager/as;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/bd;->a:Lcom/appyet/manager/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/bd;->a:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->h()V

    iget-object v0, p0, Lcom/appyet/manager/bd;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->p(Lcom/appyet/manager/as;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/bd;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bd;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bd;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Lcom/appyet/manager/bi;

    iget-object v2, p0, Lcom/appyet/manager/bd;->a:Lcom/appyet/manager/as;

    invoke-direct {v1, v2, v0}, Lcom/appyet/manager/bi;-><init>(Lcom/appyet/manager/as;I)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/appyet/manager/bi;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    iget-object v1, p0, Lcom/appyet/manager/bd;->a:Lcom/appyet/manager/as;

    invoke-static {v1}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/data/FeedItem;->setEnclosureCurrentPosition(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
