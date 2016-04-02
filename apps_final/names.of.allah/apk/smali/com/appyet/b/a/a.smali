.class public final Lcom/appyet/b/a/a;
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

    iput-object v0, p0, Lcom/appyet/b/a/a;->f:Lcom/appyet/data/Feed;

    iget-object v0, p0, Lcom/appyet/b/a/a;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setLink(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/b/a/a;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setEncoding(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/b/a/a;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setStreamHash(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/b/a/a;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getHTTPETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setHTTPETag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/b/a/a;->f:Lcom/appyet/data/Feed;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getHTTPLastModified()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/data/Feed;->setHTTPLastModified(Ljava/lang/String;)V

    new-instance v0, Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "feed"

    invoke-direct {v0, v1, v2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/b/a/a;->e:Landroid/sax/RootElement;

    iget-object v0, p0, Lcom/appyet/b/a/a;->e:Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/appyet/b/a/b;

    invoke-direct {v1, p0}, Lcom/appyet/b/a/b;-><init>(Lcom/appyet/b/a/a;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    iget-object v0, p0, Lcom/appyet/b/a/a;->e:Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "link"

    invoke-virtual {v0, v1, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/appyet/b/a/l;

    invoke-direct {v1, p0}, Lcom/appyet/b/a/l;-><init>(Lcom/appyet/b/a/a;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    iget-object v0, p0, Lcom/appyet/b/a/a;->e:Landroid/sax/RootElement;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "updated"

    invoke-virtual {v0, v1, v2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/appyet/b/a/m;

    invoke-direct {v1, p0}, Lcom/appyet/b/a/m;-><init>(Lcom/appyet/b/a/a;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    new-instance v0, Lcom/appyet/data/FeedItem;

    invoke-direct {v0}, Lcom/appyet/data/FeedItem;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appyet/b/a/a;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/appyet/b/a/a;->e:Landroid/sax/RootElement;

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "entry"

    invoke-virtual {v1, v2, v3}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/b/a/n;

    invoke-direct {v2, p0, v0}, Lcom/appyet/b/a/n;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "title"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/o;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/o;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/p;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/p;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "summary"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/q;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/q;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "link"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/r;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/r;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "content"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/s;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/s;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "thumbnail"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/c;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/c;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    const-string v3, "duration"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/d;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/d;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "content"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/e;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/e;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.itunes.com/dtds/podcast-1.0.dtd"

    const-string v3, "summary"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/f;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/f;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "updated"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/g;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/g;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "published"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/h;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/h;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "group"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "thumbnail"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/i;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/i;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "description"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    new-instance v3, Lcom/appyet/b/a/j;

    invoke-direct {v3, p0, v0}, Lcom/appyet/b/a/j;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    const-string v2, "http://gdata.youtube.com/schemas/2007"

    const-string v3, "uploaded"

    invoke-virtual {v1, v2, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    new-instance v2, Lcom/appyet/b/a/k;

    invoke-direct {v2, p0, v0}, Lcom/appyet/b/a/k;-><init>(Lcom/appyet/b/a/a;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v1, v2}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    invoke-virtual {p0}, Lcom/appyet/b/a/a;->a()Lcom/appyet/b/a/u;
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
