.class final Lcom/appyet/b/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndElementListener;


# instance fields
.field final synthetic a:Lcom/appyet/data/FeedItem;

.field final synthetic b:Lcom/appyet/b/a/a;


# direct methods
.method constructor <init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/b/a/n;->b:Lcom/appyet/b/a/a;

    iput-object p2, p0, Lcom/appyet/b/a/n;->a:Lcom/appyet/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/b/a/n;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->copy()Lcom/appyet/data/FeedItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/b/a/n;->b:Lcom/appyet/b/a/a;

    iget-object v1, v1, Lcom/appyet/b/a/a;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setFeed(Lcom/appyet/data/Feed;)V

    iget-object v1, p0, Lcom/appyet/b/a/n;->b:Lcom/appyet/b/a/a;

    iget-object v1, v1, Lcom/appyet/b/a/a;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appyet/b/a/n;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
