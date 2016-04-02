.class final Lcom/appyet/b/a/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field final synthetic a:Lcom/appyet/data/FeedItem;

.field final synthetic b:Lcom/appyet/b/a/w;


# direct methods
.method constructor <init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/b/a/av;->b:Lcom/appyet/b/a/w;

    iput-object p2, p0, Lcom/appyet/b/a/av;->a:Lcom/appyet/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/b/a/av;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0, p1}, Lcom/appyet/data/FeedItem;->setTitle(Ljava/lang/String;)V

    return-void
.end method
