.class final Lcom/appyet/b/a/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndElementListener;


# instance fields
.field final synthetic a:Lcom/appyet/data/FeedItem;

.field final synthetic b:Lcom/appyet/b/a/w;


# direct methods
.method constructor <init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/b/a/au;->b:Lcom/appyet/b/a/w;

    iput-object p2, p0, Lcom/appyet/b/a/au;->a:Lcom/appyet/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/b/a/au;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->copy()Lcom/appyet/data/FeedItem;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/b/a/au;->b:Lcom/appyet/b/a/w;

    iget-object v1, v1, Lcom/appyet/b/a/w;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setFeed(Lcom/appyet/data/Feed;)V

    iget-object v1, p0, Lcom/appyet/b/a/au;->b:Lcom/appyet/b/a/w;

    iget-object v1, v1, Lcom/appyet/b/a/w;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appyet/b/a/au;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->clear()V

    return-void
.end method
