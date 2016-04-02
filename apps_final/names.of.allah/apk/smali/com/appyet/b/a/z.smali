.class final Lcom/appyet/b/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field final synthetic a:Lcom/appyet/data/FeedItem;

.field final synthetic b:Lcom/appyet/b/a/w;


# direct methods
.method constructor <init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/b/a/z;->b:Lcom/appyet/b/a/w;

    iput-object p2, p0, Lcom/appyet/b/a/z;->a:Lcom/appyet/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/b/a/z;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/b/a/z;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0, p1}, Lcom/appyet/data/FeedItem;->setDescription(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
