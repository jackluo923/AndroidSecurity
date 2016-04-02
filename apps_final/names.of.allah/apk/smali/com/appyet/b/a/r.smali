.class final Lcom/appyet/b/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field final synthetic a:Lcom/appyet/data/FeedItem;

.field final synthetic b:Lcom/appyet/b/a/a;


# direct methods
.method constructor <init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/b/a/r;->b:Lcom/appyet/b/a/a;

    iput-object p2, p0, Lcom/appyet/b/a/r;->a:Lcom/appyet/data/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "href"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "href"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_0
    const-string v2, "rel"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "rel"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v4, "length"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v1, "length"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    const-string v4, "type"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v2, :cond_3

    const-string v4, "enclosure"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/appyet/b/a/r;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v2, v3}, Lcom/appyet/data/FeedItem;->setEnclosureLink(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appyet/b/a/r;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v2, v0}, Lcom/appyet/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/b/a/r;->a:Lcom/appyet/data/FeedItem;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setEnclosureLength(Ljava/lang/Integer;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/appyet/b/a/r;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_2

    const-string v0, "alternate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/appyet/b/a/r;->a:Lcom/appyet/data/FeedItem;

    invoke-virtual {v0, v3}, Lcom/appyet/data/FeedItem;->setLink(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    move-object v2, v0

    goto :goto_1

    :cond_6
    move-object v3, v0

    goto :goto_0
.end method
