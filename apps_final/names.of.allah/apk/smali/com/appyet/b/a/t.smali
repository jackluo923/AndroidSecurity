.class public abstract Lcom/appyet/b/a/t;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# instance fields
.field protected d:Lcom/appyet/context/ApplicationContext;

.field protected e:Landroid/sax/RootElement;

.field protected f:Lcom/appyet/data/Feed;

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/FileCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[^\t\r\n -\ud7ff\ue000-\ufffd\ud800\udc00-\udbff\udfff]"

    sput-object v0, Lcom/appyet/b/a/t;->a:Ljava/lang/String;

    const-string v0, "[^\u0001-\ud7ff\ue000-\ufffd\ud800\udc00-\udbff\udfff]+"

    sput-object v0, Lcom/appyet/b/a/t;->b:Ljava/lang/String;

    const-string v0, "JGH386S4WFaqy1khW"

    sput-object v0, Lcom/appyet/b/a/t;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/b/a/t;->d:Lcom/appyet/context/ApplicationContext;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appyet/b/a/t;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/appyet/b/a/u;
    .locals 6

    new-instance v1, Lcom/appyet/b/a/u;

    invoke-direct {v1}, Lcom/appyet/b/a/u;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lcom/appyet/a/d;

    invoke-direct {v0}, Lcom/appyet/a/d;-><init>()V

    iget-object v3, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v3}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/appyet/a/d;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v3}, Lcom/appyet/data/Feed;->getHTTPETag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/appyet/a/d;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v3}, Lcom/appyet/data/Feed;->getHTTPLastModified()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/appyet/a/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/b/a/t;->d:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v3, v0}, Lcom/appyet/manager/bl;->a(Lcom/appyet/a/d;)Lcom/appyet/a/f;

    move-result-object v2

    iget-object v0, p0, Lcom/appyet/b/a/t;->d:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-static {v2}, Lcom/appyet/manager/bl;->a(Lcom/appyet/a/f;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appyet/b/a/v;->b:Lcom/appyet/b/a/v;

    iput-object v0, v1, Lcom/appyet/b/a/u;->a:Lcom/appyet/b/a/v;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, v2, Lcom/appyet/a/f;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/appyet/d/b;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v2}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    invoke-static {v0}, Lcom/appyet/d/e;->a([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v4}, Lcom/appyet/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v4}, Lcom/appyet/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lcom/appyet/b/a/v;->c:Lcom/appyet/b/a/v;

    iput-object v0, v1, Lcom/appyet/b/a/u;->a:Lcom/appyet/b/a/v;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v4}, Lcom/appyet/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v4}, Lcom/appyet/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, v2, Lcom/appyet/a/f;->d:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/appyet/a/f;->d:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    iget-object v5, v2, Lcom/appyet/a/f;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/appyet/data/Feed;->setEncoding(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v4, v3}, Lcom/appyet/data/Feed;->setStreamHash(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    iget-object v4, v2, Lcom/appyet/a/f;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/appyet/data/Feed;->setHTTPLastModified(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    iget-object v4, v2, Lcom/appyet/a/f;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/appyet/data/Feed;->setHTTPETag(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v3}, Lcom/appyet/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/appyet/d/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/appyet/b/a/v;->b:Lcom/appyet/b/a/v;

    iput-object v0, v1, Lcom/appyet/b/a/u;->a:Lcom/appyet/b/a/v;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    :try_start_3
    iget-object v4, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-static {v0}, Lcom/appyet/d/b;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appyet/data/Feed;->setEncoding(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v4}, Lcom/appyet/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v4}, Lcom/appyet/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_5
    iget-object v4, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Lcom/appyet/data/Feed;->setEncoding(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    sget-object v0, Lcom/appyet/b/a/v;->b:Lcom/appyet/b/a/v;

    iput-object v0, v1, Lcom/appyet/b/a/u;->a:Lcom/appyet/b/a/v;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v2}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    :try_start_5
    sget-object v3, Lcom/appyet/b/a/t;->a:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/appyet/b/a/t;->e:Landroid/sax/RootElement;

    invoke-virtual {v3}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v2}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    iget-object v0, p0, Lcom/appyet/b/a/t;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getUniqueKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getUniqueKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_8
    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->buildUniqueKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/appyet/data/FeedItem;->setUniqueKey(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    iget-object v2, p0, Lcom/appyet/b/a/t;->g:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/appyet/data/Feed;->setFeedItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    iput-object v0, v1, Lcom/appyet/b/a/u;->b:Lcom/appyet/data/Feed;

    sget-object v0, Lcom/appyet/b/a/v;->a:Lcom/appyet/b/a/v;

    iput-object v0, v1, Lcom/appyet/b/a/u;->a:Lcom/appyet/b/a/v;

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://www.facebook.com/feeds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.facebook.com/feeds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "_s.jpg\" alt=\"\" />"

    const-string v1, "_n.jpg\" alt=\"\" />"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://api.flickr.com/services/feeds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_m.jpg\""

    const-string v1, "_b.jpg\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://pinterest.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://pinterest.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "/192x/"

    const-string v1, "/736x/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://photos.googleapis.com/data/feed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/appyet/b/a/t;->f:Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://photos.googleapis.com/data/feed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_7
    const-string v0, "/s288/"

    const-string v1, "/s800/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
