.class public final Lcom/alipay/mobile/common/transport/http/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


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

    .prologue
    .line 125
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

    sput-object v0, Lcom/alipay/mobile/common/transport/http/Headers;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->d:Ljava/util/ArrayList;

    .line 124
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->g:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->h:Ljava/util/ArrayList;

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->a:J

    .line 153
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->b:J

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->c:I

    .line 155
    return-void
.end method

.method private a(Lorg/apache/http/util/CharArrayBuffer;I)V
    .locals 1

    .prologue
    .line 455
    const-string/jumbo v0, "Close"

    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/common/transport/http/CharArrayBuffers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->c:I

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const-string/jumbo v0, "Keep-Alive"

    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/common/transport/http/CharArrayBuffers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->c:I

    goto :goto_0
.end method


# virtual methods
.method public final getAcceptRanges()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getCacheControl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getConnectionType()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->c:I

    return v0
.end method

.method public final getContentDisposition()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->b:J

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getEtag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getExpires()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getHeaders(Lcom/alipay/mobile/common/transport/http/Headers$HeaderCallback;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 436
    move v1, v0

    :goto_0
    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 437
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 438
    if-eqz v2, :cond_0

    .line 439
    sget-object v3, Lcom/alipay/mobile/common/transport/http/Headers;->f:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {p1, v3, v2}, Lcom/alipay/mobile/common/transport/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/Headers;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    .line 443
    :goto_1
    if-ge v2, v3, :cond_2

    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/Headers;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/transport/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 452
    :cond_2
    return-void
.end method

.method public final getLastModified()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getPragma()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getProxyAuthenticate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getRefresh()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

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

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTransferEncoding()J
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->a:J

    return-wide v0
.end method

.method public final getWwwAuthenticate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getXPermittedCrossDomainPolicies()Ljava/lang/String;
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xc

    .line 158
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/http/CharArrayBuffers;->setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I

    move-result v0

    .line 159
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p1, v5, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    add-int/lit8 v0, v0, 0x1

    .line 168
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :sswitch_0
    const-string/jumbo v3, "transfer-encoding"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    aput-object v2, v1, v5

    .line 177
    sget-object v1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    new-instance v3, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 182
    array-length v1, v0

    .line 183
    const-string/jumbo v3, "identity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 184
    if-lez v1, :cond_2

    const-string/jumbo v2, "chunked"

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->a:J

    goto :goto_0

    .line 190
    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->a:J

    goto :goto_0

    .line 195
    :sswitch_1
    const-string/jumbo v0, "content-length"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 198
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->b:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0

    .line 204
    :sswitch_2
    const-string/jumbo v0, "content-type"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 209
    :sswitch_3
    const-string/jumbo v0, "content-encoding"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 214
    :sswitch_4
    const-string/jumbo v3, "connection"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/transport/http/Headers;->a(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto/16 :goto_0

    .line 220
    :sswitch_5
    const-string/jumbo v0, "location"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 225
    :sswitch_6
    const-string/jumbo v3, "proxy-connection"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 227
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/transport/http/Headers;->a(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto/16 :goto_0

    .line 231
    :sswitch_7
    const-string/jumbo v0, "www-authenticate"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 236
    :sswitch_8
    const-string/jumbo v0, "proxy-authenticate"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 241
    :sswitch_9
    const-string/jumbo v0, "content-disposition"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 246
    :sswitch_a
    const-string/jumbo v0, "accept-ranges"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 251
    :sswitch_b
    const-string/jumbo v0, "expires"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 256
    :sswitch_c
    const-string/jumbo v0, "cache-control"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    aget-object v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    aget-object v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    goto/16 :goto_0

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    aput-object v2, v0, v4

    goto/16 :goto_0

    .line 268
    :sswitch_d
    const-string/jumbo v0, "last-modified"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xd

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 273
    :sswitch_e
    const-string/jumbo v0, "etag"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xe

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 278
    :sswitch_f
    const-string/jumbo v0, "set-cookie"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xf

    aput-object v2, v0, v1

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 284
    :sswitch_10
    const-string/jumbo v0, "pragma"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x10

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 289
    :sswitch_11
    const-string/jumbo v0, "refresh"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x11

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 294
    :sswitch_12
    const-string/jumbo v0, "x-permitted-cross-domain-policies"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x12

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 173
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

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object p1, v0, v1

    .line 406
    return-void
.end method

.method public final setCacheControl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xc

    aput-object p1, v0, v1

    .line 414
    return-void
.end method

.method public final setContentDisposition(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    .line 402
    return-void
.end method

.method public final setContentEncoding(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 386
    return-void
.end method

.method public final setContentLength(J)V
    .locals 0

    .prologue
    .line 377
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/Headers;->b:J

    .line 378
    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 382
    return-void
.end method

.method public final setEtag(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xe

    aput-object p1, v0, v1

    .line 422
    return-void
.end method

.method public final setExpires(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object p1, v0, v1

    .line 410
    return-void
.end method

.method public final setLastModified(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0xd

    aput-object p1, v0, v1

    .line 418
    return-void
.end method

.method public final setLocation(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 390
    return-void
.end method

.method public final setProxyAuthenticate(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object p1, v0, v1

    .line 398
    return-void
.end method

.method public final setWwwAuthenticate(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object p1, v0, v1

    .line 394
    return-void
.end method

.method public final setXPermittedCrossDomainPolicies(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/Headers;->e:[Ljava/lang/String;

    const/16 v1, 0x12

    aput-object p1, v0, v1

    .line 426
    return-void
.end method
