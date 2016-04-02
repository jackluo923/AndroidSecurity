.class public final Lcom/appyet/g/g;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/net/URL;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/appyet/g/i;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/appyet/g/e;

.field public e:Lcom/appyet/g/c;

.field f:Lcom/appyet/g/a;

.field g:[Ljavax/net/ssl/TrustManager;

.field h:[Ljavax/net/ssl/KeyManager;

.field i:Ljava/net/Proxy;

.field public j:I

.field private final k:I


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    const-string v0, "aXMLRPC"

    invoke-direct {p0, p1, v0}, Lcom/appyet/g/g;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/g;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/g;->c:Ljava/util/Map;

    new-instance v0, Lcom/appyet/g/b/j;

    invoke-direct {v0}, Lcom/appyet/g/b/j;-><init>()V

    sput-object v0, Lcom/appyet/g/b/j;->a:Lcom/appyet/g/b/j;

    iput-object p1, p0, Lcom/appyet/g/g;->a:Ljava/net/URL;

    const/4 v0, 0x4

    iput v0, p0, Lcom/appyet/g/g;->k:I

    new-instance v0, Lcom/appyet/g/e;

    invoke-direct {v0}, Lcom/appyet/g/e;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/g;->d:Lcom/appyet/g/e;

    new-instance v0, Lcom/appyet/g/c;

    invoke-direct {v0}, Lcom/appyet/g/c;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/g;->e:Lcom/appyet/g/c;

    new-instance v0, Lcom/appyet/g/a;

    invoke-direct {v0}, Lcom/appyet/g/a;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/g;->f:Lcom/appyet/g/a;

    iget-object v0, p0, Lcom/appyet/g/g;->b:Ljava/util/Map;

    const-string v1, "Content-Type"

    const-string v2, "text/xml; charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appyet/g/g;->b:Ljava/util/Map;

    const-string v1, "User-Agent"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/appyet/g/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/appyet/g/h;

    invoke-direct {v2, p0}, Lcom/appyet/g/h;-><init>(Lcom/appyet/g/g;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/appyet/g/g;->g:[Ljavax/net/ssl/TrustManager;

    :cond_0
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/appyet/g/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "http.proxyHost"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http.proxyPort"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v2, p0, Lcom/appyet/g/g;->i:Ljava/net/Proxy;

    :cond_1
    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/appyet/g/i;

    invoke-direct {v0, p0}, Lcom/appyet/g/i;-><init>(Lcom/appyet/g/g;)V

    invoke-virtual {v0, p1, p2}, Lcom/appyet/g/i;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/g/g;->b:Ljava/util/Map;

    const-string v1, "User-Agent"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Host"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/appyet/g/n;

    const-string v1, "You cannot modify the Host, Content-Type or Content-Length header."

    invoke-direct {v0, v1}, Lcom/appyet/g/n;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/g/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/g/g;->e:Lcom/appyet/g/c;

    iget v1, v0, Lcom/appyet/g/c;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    iput-object p1, v0, Lcom/appyet/g/c;->b:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method final a(I)Z
    .locals 1

    iget v0, p0, Lcom/appyet/g/g;->k:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
