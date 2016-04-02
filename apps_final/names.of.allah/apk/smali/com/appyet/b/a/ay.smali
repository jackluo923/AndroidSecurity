.class public final Lcom/appyet/b/a/ay;
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

    iput-object v0, p0, Lcom/appyet/b/a/ay;->f:Lcom/appyet/data/Feed;

    iget-object v0, p0, Lcom/appyet/b/a/ay;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/b/a/ay;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setEncoding(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/b/a/ay;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setStreamHash(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/b/a/ay;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getHTTPETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setHTTPETag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/b/a/ay;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getHTTPLastModified()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setHTTPLastModified(Ljava/lang/String;)V

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, "rss"

    invoke-direct {v0, v1}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/b/a/ay;->e:Landroid/sax/RootElement;

    iget-object v0, p0, Lcom/appyet/b/a/ay;->e:Landroid/sax/RootElement;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/b/a/az;

    invoke-direct {v2, p0}, Lcom/appyet/b/a/az;-><init>(Lcom/appyet/b/a/ay;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "link"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/b/a/bk;

    invoke-direct {v2, p0}, Lcom/appyet/b/a/bk;-><init>(Lcom/appyet/b/a/ay;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "pubDate"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/b/a/bt;

    invoke-direct {v2, p0}, Lcom/appyet/b/a/bt;-><init>(Lcom/appyet/b/a/ay;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "http://purl.org/dc/elements/1.1/"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/b/a/bu;

    invoke-direct {v2, p0}, Lcom/appyet/b/a/bu;-><init>(Lcom/appyet/b/a/ay;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v1, "lastBuildDate"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/b/a/bv;

    invoke-direct {v2, p0}, Lcom/appyet/b/a/bv;-><init>(Lcom/appyet/b/a/ay;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v1, Lcom/appyet/data/FeedItem;

    invoke-direct {v1}, Lcom/appyet/data/FeedItem;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/appyet/b/a/ay;->g:Ljava/util/List;

    const-string v2, "item"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v2, Lcom/appyet/b/a/bw;

    invoke-direct {v2, p0, v1}, Lcom/appyet/b/a/bw;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v0, v2}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bx;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bx;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "link"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/by;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/by;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bz;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bz;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "guid"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/ba;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/ba;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    const-string v3, "summary"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bb;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bb;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://wellformedweb.org/CommentAPI/"

    const-string v3, "commentRss"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bc;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bc;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://wellformedweb.org/CommentAPI/"

    const-string v3, "commentRSS"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bd;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bd;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/modules/slash/"

    const-string v3, "comments"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/be;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/be;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "comments"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bf;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bf;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "enclosure"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bg;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bg;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "content"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bh;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bh;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "thumbnail"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bi;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bi;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    const-string v3, "duration"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bj;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bj;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "pubDate"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bl;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bl;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const-string v3, "date"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bm;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bm;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const-string v3, "creator"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bn;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bn;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "encoded"

    invoke-virtual {v0, v2}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bo;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bo;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://purl.org/rss/1.0/modules/content/"

    const-string v3, "encoded"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bp;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bp;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "group"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "thumbnail"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/bq;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/bq;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "description"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/br;

    invoke-direct {v3, p0, v1}, Lcom/appyet/b/a/br;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://gdata.youtube.com/schemas/2007"

    const-string v3, "uploaded"

    invoke-virtual {v0, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v2, Lcom/appyet/b/a/bs;

    invoke-direct {v2, p0, v1}, Lcom/appyet/b/a/bs;-><init>(Lcom/appyet/b/a/ay;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v0, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    invoke-virtual {p0}, Lcom/appyet/b/a/ay;->a()Lcom/appyet/b/a/u;
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
