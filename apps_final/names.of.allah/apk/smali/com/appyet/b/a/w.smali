.class public final Lcom/appyet/b/a/w;
.super Lcom/appyet/b/a/t;


# direct methods
.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/b/a/t;-><init>(Lcom/appyet/context/ApplicationContext;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appyet/data/Feed;)Lcom/appyet/b/a/u;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/appyet/data/Feed;

    invoke-direct {v0}, Lcom/appyet/data/Feed;-><init>()V

    iput-object v0, p0, Lcom/appyet/b/a/w;->f:Lcom/appyet/data/Feed;

    iget-object v0, p0, Lcom/appyet/b/a/w;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/b/a/w;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setEncoding(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/b/a/w;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setStreamHash(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/b/a/w;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getHTTPETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setHTTPETag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/b/a/w;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getHTTPLastModified()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setHTTPLastModified(Ljava/lang/String;)V

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    const-string v2, "RDF"

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/b/a/w;->e:Landroid/sax/RootElement;

    iget-object v0, p0, Lcom/appyet/b/a/w;->e:Landroid/sax/RootElement;

    const-string v1, "http://purl.org/rss/1.0/"

    const-string v2, "channel"

    invoke-virtual {v0, v1, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "http://purl.org/rss/1.0/"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/b/a/x;

    invoke-direct {v2, p0}, Lcom/appyet/b/a/x;-><init>(Lcom/appyet/b/a/w;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "http://purl.org/rss/1.0/"

    const-string v2, "link"

    invoke-virtual {v0, v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/b/a/ai;

    invoke-direct {v2, p0}, Lcom/appyet/b/a/ai;-><init>(Lcom/appyet/b/a/w;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "http://purl.org/rss/1.0/"

    const-string v2, "pubDate"

    invoke-virtual {v0, v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/b/a/ar;

    invoke-direct {v2, p0}, Lcom/appyet/b/a/ar;-><init>(Lcom/appyet/b/a/w;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "http://purl.org/dc/elements/1.1/"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/b/a/as;

    invoke-direct {v2, p0}, Lcom/appyet/b/a/as;-><init>(Lcom/appyet/b/a/w;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "http://purl.org/rss/1.0/"

    const-string v2, "lastBuildDate"

    invoke-virtual {v0, v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/appyet/b/a/at;

    invoke-direct {v1, p0}, Lcom/appyet/b/a/at;-><init>(Lcom/appyet/b/a/w;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v0, Lcom/appyet/data/FeedItem;

    invoke-direct {v0}, Lcom/appyet/data/FeedItem;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appyet/b/a/w;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/appyet/b/a/w;->e:Landroid/sax/RootElement;

    const-string v2, "http://purl.org/rss/1.0/"

    const-string v3, "item"

    invoke-virtual {v1, v2, v3}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/b/a/au;

    invoke-direct {v2, p0, v0}, Lcom/appyet/b/a/au;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/"

    const-string v3, "title"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/av;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/av;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/"

    const-string v3, "link"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/aw;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/aw;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/"

    const-string v3, "description"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/ax;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/ax;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "guid"

    invoke-virtual {v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/y;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/y;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    const-string v3, "summary"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/z;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/z;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://wellformedweb.org/CommentAPI/"

    const-string v3, "commentRss"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/aa;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/aa;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://wellformedweb.org/CommentAPI/"

    const-string v3, "commentRSS"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/ab;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/ab;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/modules/slash/"

    const-string v3, "comments"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/ac;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/ac;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "comments"

    invoke-virtual {v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/ad;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/ad;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/"

    const-string v3, "enclosure"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/ae;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/ae;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "content"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/af;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/af;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "thumbnail"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/ag;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/ag;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    const-string v3, "duration"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/ah;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/ah;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/"

    const-string v3, "pubDate"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/aj;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/aj;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const-string v3, "date"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/ak;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/ak;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const-string v3, "creator"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/al;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/al;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/modules/syndication/"

    const-string v3, "updateBase"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/am;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/am;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/modules/content/"

    const-string v3, "encoded"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/an;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/an;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "group"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "thumbnail"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/ao;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/ao;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "description"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/ap;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/ap;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://gdata.youtube.com/schemas/2007"

    const-string v3, "uploaded"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/b/a/aq;

    invoke-direct {v2, p0, v0}, Lcom/appyet/b/a/aq;-><init>(Lcom/appyet/b/a/w;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    invoke-virtual {p0}, Lcom/appyet/b/a/w;->a()Lcom/appyet/b/a/u;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
