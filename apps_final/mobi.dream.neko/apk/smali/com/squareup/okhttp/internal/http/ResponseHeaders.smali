.class public final Lcom/squareup/okhttp/internal/http/ResponseHeaders;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String; = "X-Android-Received-Millis"

.field static final RESPONSE_SOURCE:Ljava/lang/String; = "X-Android-Response-Source"

.field private static final SENT_MILLIS:Ljava/lang/String; = "X-Android-Sent-Millis"


# instance fields
.field private ageSeconds:I

.field private connection:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLength:I

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private final headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

.field private isPublic:Z

.field private lastModified:Ljava/util/Date;

.field private maxAgeSeconds:I

.field private mustRevalidate:Z

.field private noCache:Z

.field private noStore:Z

.field private receivedResponseMillis:J

.field private sMaxAgeSeconds:I

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private varyFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V
    .locals 10
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "headers"    # Lcom/squareup/okhttp/internal/http/RawHeaders;

    .prologue
    const/4 v9, -0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v9, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->maxAgeSeconds:I

    .line 94
    iput v9, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sMaxAgeSeconds:I

    .line 106
    iput v9, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->ageSeconds:I

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    iput-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 113
    iput v9, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentLength:I

    .line 117
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->uri:Ljava/net/URI;

    .line 118
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 120
    new-instance v2, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;

    invoke-direct {v2, p0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;-><init>(Lcom/squareup/okhttp/internal/http/ResponseHeaders;)V

    .line 138
    .local v2, "handler":Lcom/squareup/okhttp/internal/http/HeaderParser$CacheControlHandler;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v8

    if-ge v3, v8, :cond_f

    .line 139
    invoke-virtual {p2, v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p2, v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "value":Ljava/lang/String;
    const-string v8, "Cache-Control"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 142
    invoke-static {v6, v2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/squareup/okhttp/internal/http/HeaderParser$CacheControlHandler;)V

    .line 138
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :cond_1
    const-string v8, "Date"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 144
    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    goto :goto_1

    .line 145
    :cond_2
    const-string v8, "Expires"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 146
    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    goto :goto_1

    .line 147
    :cond_3
    const-string v8, "Last-Modified"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 148
    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    goto :goto_1

    .line 149
    :cond_4
    const-string v8, "ETag"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 150
    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->etag:Ljava/lang/String;

    goto :goto_1

    .line 151
    :cond_5
    const-string v8, "Pragma"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 152
    const-string v8, "no-cache"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 153
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noCache:Z

    goto :goto_1

    .line 155
    :cond_6
    const-string v8, "Age"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 156
    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->ageSeconds:I

    goto :goto_1

    .line 157
    :cond_7
    const-string v8, "Vary"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 159
    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 160
    new-instance v8, Ljava/util/TreeSet;

    sget-object v9, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 162
    :cond_8
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_0

    aget-object v7, v0, v4

    .line 163
    .local v7, "varyField":Ljava/lang/String;
    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 165
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "varyField":Ljava/lang/String;
    :cond_9
    const-string v8, "Content-Encoding"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 166
    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 167
    :cond_a
    const-string v8, "Transfer-Encoding"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 168
    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 169
    :cond_b
    const-string v8, "Content-Length"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 171
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentLength:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 172
    :catch_0
    move-exception v8

    goto/16 :goto_1

    .line 174
    :cond_c
    const-string v8, "Connection"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 175
    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->connection:Ljava/lang/String;

    goto/16 :goto_1

    .line 176
    :cond_d
    const-string v8, "X-Android-Sent-Millis"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 177
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sentRequestMillis:J

    goto/16 :goto_1

    .line 178
    :cond_e
    const-string v8, "X-Android-Received-Millis"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 179
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->receivedResponseMillis:J

    goto/16 :goto_1

    .line 182
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method static synthetic access$002(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noStore:Z

    return p1
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/http/ResponseHeaders;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$302(Lcom/squareup/okhttp/internal/http/ResponseHeaders;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sMaxAgeSeconds:I

    return p1
.end method

.method static synthetic access$402(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isPublic:Z

    return p1
.end method

.method static synthetic access$502(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->mustRevalidate:Z

    return p1
.end method

.method private computeAge(J)J
    .locals 12
    .param p1, "nowMillis"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 286
    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->receivedResponseMillis:J

    iget-object v10, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 288
    .local v0, "apparentReceivedAge":J
    :cond_0
    iget v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->ageSeconds:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 291
    .local v2, "receivedAge":J
    :goto_0
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->receivedResponseMillis:J

    iget-wide v10, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 292
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->receivedResponseMillis:J

    sub-long v4, p1, v8

    .line 293
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_1
    move-wide v2, v0

    .line 288
    goto :goto_0
.end method

.method private computeFreshnessLifetime()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 301
    iget v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 302
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->maxAgeSeconds:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 316
    :cond_0
    :goto_0
    return-wide v4

    .line 303
    :cond_1
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-eqz v6, :cond_4

    .line 304
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 305
    .local v2, "servedMillis":J
    :goto_1
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 306
    .local v0, "delta":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    .end local v0    # "delta":J
    :goto_2
    move-wide v4, v0

    goto :goto_0

    .line 304
    .end local v2    # "servedMillis":J
    :cond_2
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->receivedResponseMillis:J

    goto :goto_1

    .restart local v0    # "delta":J
    .restart local v2    # "servedMillis":J
    :cond_3
    move-wide v0, v4

    .line 306
    goto :goto_2

    .line 307
    .end local v0    # "delta":J
    .end local v2    # "servedMillis":J
    :cond_4
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 312
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 313
    .restart local v2    # "servedMillis":J
    :goto_3
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 314
    .restart local v0    # "delta":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const-wide/16 v4, 0xa

    div-long v4, v0, v4

    goto :goto_0

    .line 312
    .end local v0    # "delta":J
    .end local v2    # "servedMillis":J
    :cond_5
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sentRequestMillis:J

    goto :goto_3
.end method

.method private static isEndToEnd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 488
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public chooseResponseSource(JLcom/squareup/okhttp/internal/http/RequestHeaders;)Lcom/squareup/okhttp/ResponseSource;
    .locals 15
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;

    .prologue
    .line 384
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isCacheable(Lcom/squareup/okhttp/internal/http/RequestHeaders;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 385
    sget-object v11, Lcom/squareup/okhttp/ResponseSource;->NETWORK:Lcom/squareup/okhttp/ResponseSource;

    .line 430
    :goto_0
    return-object v11

    .line 388
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->isNoCache()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->hasConditions()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 389
    :cond_1
    sget-object v11, Lcom/squareup/okhttp/ResponseSource;->NETWORK:Lcom/squareup/okhttp/ResponseSource;

    goto :goto_0

    .line 392
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->computeAge(J)J

    move-result-wide v1

    .line 393
    .local v1, "ageMillis":J
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->computeFreshnessLifetime()J

    move-result-wide v3

    .line 395
    .local v3, "freshMillis":J
    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 396
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 399
    :cond_3
    const-wide/16 v7, 0x0

    .line 400
    .local v7, "minFreshMillis":J
    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 401
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 404
    :cond_4
    const-wide/16 v5, 0x0

    .line 405
    .local v5, "maxStaleMillis":J
    iget-boolean v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v11, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 406
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 409
    :cond_5
    iget-boolean v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noCache:Z

    if-nez v11, :cond_8

    add-long v11, v1, v7

    add-long v13, v3, v5

    cmp-long v11, v11, v13

    if-gez v11, :cond_8

    .line 410
    add-long v11, v1, v7

    cmp-long v11, v11, v3

    if-ltz v11, :cond_6

    .line 411
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v12, "Warning"

    const-string v13, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v11, v12, v13}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_6
    const-wide/32 v9, 0x5265c00

    .line 414
    .local v9, "oneDayMillis":J
    cmp-long v11, v1, v9

    if-lez v11, :cond_7

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isFreshnessLifetimeHeuristic()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 415
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v12, "Warning"

    const-string v13, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v11, v12, v13}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_7
    sget-object v11, Lcom/squareup/okhttp/ResponseSource;->CACHE:Lcom/squareup/okhttp/ResponseSource;

    goto/16 :goto_0

    .line 420
    .end local v9    # "oneDayMillis":J
    :cond_8
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v11, :cond_b

    .line 421
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 426
    :cond_9
    :goto_1
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->etag:Ljava/lang/String;

    if-eqz v11, :cond_a

    .line 427
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->etag:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setIfNoneMatch(Ljava/lang/String;)V

    .line 430
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->hasConditions()Z

    move-result v11

    if-eqz v11, :cond_c

    sget-object v11, Lcom/squareup/okhttp/ResponseSource;->CONDITIONAL_CACHE:Lcom/squareup/okhttp/ResponseSource;

    goto/16 :goto_0

    .line 422
    :cond_b
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v11, :cond_9

    .line 423
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    goto :goto_1

    .line 430
    :cond_c
    sget-object v11, Lcom/squareup/okhttp/ResponseSource;->NETWORK:Lcom/squareup/okhttp/ResponseSource;

    goto/16 :goto_0
.end method

.method public combine(Lcom/squareup/okhttp/internal/http/ResponseHeaders;)Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .locals 6
    .param p1, "network"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v2, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    .line 460
    .local v2, "result":Lcom/squareup/okhttp/internal/http/RawHeaders;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 462
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 463
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "fieldName":Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "value":Ljava/lang/String;
    const-string v4, "Warning"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 462
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    :cond_1
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 469
    :cond_2
    invoke-virtual {v2, v0, v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 473
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 474
    iget-object v4, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    .restart local v0    # "fieldName":Ljava/lang/String;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 476
    iget-object v4, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 480
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_5
    new-instance v4, Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-direct {v4, v5, v2}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    return-object v4
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentLength:I

    return v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public getSMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sMaxAgeSeconds:I

    return v0
.end method

.method public getServedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getVaryFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    return-object v0
.end method

.method public hasConnectionClose()Z
    .locals 2

    .prologue
    .line 203
    const-string v0, "close"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasVaryAll()Z
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCacheable(Lcom/squareup/okhttp/internal/http/RequestHeaders;)Z
    .locals 4
    .param p1, "request"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v0

    .line 336
    .local v0, "responseCode":I
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    const/16 v2, 0xcb

    if-eq v0, v2, :cond_1

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_1

    const/16 v2, 0x19a

    if-eq v0, v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v1

    .line 346
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->hasAuthorization()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isPublic:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sMaxAgeSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 350
    :cond_2
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noStore:Z

    if-nez v2, :cond_0

    .line 354
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isChunked()Z
    .locals 2

    .prologue
    .line 199
    const-string v0, "chunked"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContentEncodingGzip()Z
    .locals 2

    .prologue
    .line 185
    const-string v0, "gzip"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMustRevalidate()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->mustRevalidate:Z

    return v0
.end method

.method public isNoCache()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noCache:Z

    return v0
.end method

.method public isNoStore()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noStore:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isPublic:Z

    return v0
.end method

.method public setLocalTimestamps(JJ)V
    .locals 3
    .param p1, "sentRequestMillis"    # J
    .param p3, "receivedResponseMillis"    # J

    .prologue
    .line 271
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sentRequestMillis:J

    .line 272
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "X-Android-Sent-Millis"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iput-wide p3, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->receivedResponseMillis:J

    .line 274
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "X-Android-Received-Millis"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public setResponseSource(Lcom/squareup/okhttp/ResponseSource;)V
    .locals 4
    .param p1, "responseSource"    # Lcom/squareup/okhttp/ResponseSource;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "X-Android-Response-Source"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseSource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public stripContentEncoding()V
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public stripContentLength()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentLength:I

    .line 195
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public validate(Lcom/squareup/okhttp/internal/http/ResponseHeaders;)Z
    .locals 5
    .param p1, "networkResponse"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    .prologue
    const/4 v0, 0x1

    .line 438
    iget-object v1, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v0

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 451
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varyMatches(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "cachedRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p2, "newRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    .local v0, "field":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 373
    const/4 v2, 0x0

    .line 376
    .end local v0    # "field":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
