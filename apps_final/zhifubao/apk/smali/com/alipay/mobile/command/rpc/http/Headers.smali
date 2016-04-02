.class public final Lcom/alipay/mobile/command/rpc/http/Headers;
.super Ljava/lang/Object;


# static fields
.field public static final ACCEPT_RANGES:Ljava/lang/String; = "accept-ranges"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field public static final CONN_CLOSE:I = 0x1

.field public static final CONN_DIRECTIVE:Ljava/lang/String; = "connection"

.field public static final CONN_KEEP_ALIVE:I = 0x2

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "content-disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field public static final CONTENT_LEN:Ljava/lang/String; = "content-length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last-modified"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final NO_CONN_TYPE:I = 0x0

.field public static final NO_CONTENT_LENGTH:J = -0x1L

.field public static final NO_TRANSFER_ENCODING:J = 0x0L

.field public static final PRAGMA:Ljava/lang/String; = "pragma"

.field public static final PROXY_AUTHENTICATE:Ljava/lang/String; = "proxy-authenticate"

.field public static final PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field public static final REFRESH:Ljava/lang/String; = "refresh"

.field public static final SET_COOKIE:Ljava/lang/String; = "set-cookie"

.field public static final TRANSFER_ENCODING:Ljava/lang/String; = "transfer-encoding"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "www-authenticate"

.field public static final X_PERMITTED_CROSS_DOMAIN_POLICIES:Ljava/lang/String; = "x-permitted-cross-domain-policies"

.field private static final f:[Ljava/lang/String;


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:[Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "transfer-encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "content-length"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "content-type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "content-encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "connection"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "proxy-connection"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "www-authenticate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "proxy-authenticate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "content-disposition"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "accept-ranges"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "expires"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "cache-control"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "last-modified"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "etag"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "set-cookie"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "pragma"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "refresh"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "x-permitted-cross-domain-policies"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/command/rpc/http/Headers;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->d:Ljava/util/ArrayList;

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->h:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->a:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->c:I

    return-void
.end method

.method private a(Lorg/apache/http/util/CharArrayBuffer;I)V
    .locals 1

    const-string/jumbo v0, "Close"

    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/command/rpc/http/CharArrayBuffers;->a(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->c:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "Keep-Alive"

    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/command/rpc/http/CharArrayBuffers;->a(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->c:I

    goto :goto_0
.end method


# virtual methods
.method public final getAcceptRanges()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getCacheControl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getConnectionType()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->c:I

    return v0
.end method

.method public final getContentDisposition()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->b:J

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getExpires()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getHeaders(Lcom/alipay/mobile/command/rpc/http/Headers$HeaderCallback;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_2

    return-void

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    sget-object v3, Lcom/alipay/mobile/command/rpc/http/Headers;->f:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {p1, v3, v2}, Lcom/alipay/mobile/command/rpc/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/command/rpc/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public final getLastModified()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getPragma()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getProxyAuthenticate()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getRefresh()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getSetCookie()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTransferEncoding()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->a:J

    return-wide v0
.end method

.method public final getWwwAuthenticate()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getXPermittedCrossDomainPolicies()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/16 v4, 0xc

    invoke-static {p1}, Lcom/alipay/mobile/command/rpc/http/CharArrayBuffers;->a(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v5, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "transfer-encoding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    new-instance v3, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v0

    array-length v1, v0

    const-string/jumbo v3, "identity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-wide v6, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->a:J

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    const-string/jumbo v2, "chunked"

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->a:J

    goto :goto_0

    :cond_3
    iput-wide v6, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->a:J

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "content-length"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->b:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "content-type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v2, v0, v1

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "content-encoding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object v2, v0, v1

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v3, "connection"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/command/rpc/http/Headers;->a(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v0, "location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object v2, v0, v1

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v3, "proxy-connection"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/command/rpc/http/Headers;->a(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v0, "www-authenticate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object v2, v0, v1

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "proxy-authenticate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object v2, v0, v1

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v0, "content-disposition"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object v2, v0, v1

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v0, "accept-ranges"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object v2, v0, v1

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v0, "expires"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object v2, v0, v1

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "cache-control"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    aget-object v0, v0, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    aget-object v1, v0, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    aput-object v2, v0, v4

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "last-modified"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xd

    aput-object v2, v0, v1

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v0, "etag"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xe

    aput-object v2, v0, v1

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v0, "set-cookie"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xf

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v0, "pragma"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x10

    aput-object v2, v0, v1

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v0, "refresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x11

    aput-object v2, v0, v1

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v0, "x-permitted-cross-domain-policies"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x12

    aput-object v2, v0, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x5034229e -> :sswitch_12
        -0x4e0958cc -> :sswitch_b
        -0x4b88f79d -> :sswitch_9
        -0x4384d946 -> :sswitch_1
        -0x3a6d1ac4 -> :sswitch_10
        -0x2e3b8122 -> :sswitch_4
        -0x11fc9c2c -> :sswitch_8
        -0xe7c74b5 -> :sswitch_7
        -0xc71a9ee -> :sswitch_c
        0x2fa915 -> :sswitch_e
        0x8f17c20 -> :sswitch_d
        0x110aef9d -> :sswitch_6
        0x2ed4600e -> :sswitch_2
        0x40b292db -> :sswitch_11
        0x49be662f -> :sswitch_f
        0x4bf6b0f5 -> :sswitch_0
        0x53476b3b -> :sswitch_a
        0x714f9fb5 -> :sswitch_5
        0x7ce07427 -> :sswitch_3
    .end sparse-switch
.end method

.method public final setAcceptRanges(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object p1, v0, v1

    return-void
.end method

.method public final setCacheControl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xc

    aput-object p1, v0, v1

    return-void
.end method

.method public final setContentDisposition(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    return-void
.end method

.method public final setContentEncoding(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    return-void
.end method

.method public final setContentLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->b:J

    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    return-void
.end method

.method public final setEtag(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xe

    aput-object p1, v0, v1

    return-void
.end method

.method public final setExpires(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object p1, v0, v1

    return-void
.end method

.method public final setLastModified(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xd

    aput-object p1, v0, v1

    return-void
.end method

.method public final setLocation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    return-void
.end method

.method public final setProxyAuthenticate(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object p1, v0, v1

    return-void
.end method

.method public final setWwwAuthenticate(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object p1, v0, v1

    return-void
.end method

.method public final setXPermittedCrossDomainPolicies(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x12

    aput-object p1, v0, v1

    return-void
.end method
