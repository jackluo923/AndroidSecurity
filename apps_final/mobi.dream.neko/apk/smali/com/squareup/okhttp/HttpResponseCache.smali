.class public final Lcom/squareup/okhttp/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/HttpResponseCache$3;,
        Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;,
        Lcom/squareup/okhttp/HttpResponseCache$EntryCacheResponse;,
        Lcom/squareup/okhttp/HttpResponseCache$Entry;,
        Lcom/squareup/okhttp/HttpResponseCache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final DIGITS:[C

.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lcom/squareup/okhttp/internal/DiskLruCache;

.field private hitCount:I

.field private networkCount:I

.field final okResponseCache:Lcom/squareup/okhttp/internal/http/OkResponseCache;

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/squareup/okhttp/HttpResponseCache;->DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 146
    new-instance v0, Lcom/squareup/okhttp/HttpResponseCache$1;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/HttpResponseCache$1;-><init>(Lcom/squareup/okhttp/HttpResponseCache;)V

    iput-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->okResponseCache:Lcom/squareup/okhttp/internal/http/OkResponseCache;

    .line 171
    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, Lcom/squareup/okhttp/internal/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/squareup/okhttp/internal/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    .line 172
    return-void
.end method

.method private abortQuietly(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .locals 1
    .param p1, "editor"    # Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/HttpResponseCache;Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/HttpResponseCache;
    .param p1, "x1"    # Ljava/net/CacheResponse;
    .param p2, "x2"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/HttpResponseCache;->update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/HttpResponseCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/HttpResponseCache;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/squareup/okhttp/HttpResponseCache;->trackConditionalCacheHit()V

    return-void
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/HttpResponseCache;Lcom/squareup/okhttp/ResponseSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/HttpResponseCache;
    .param p1, "x1"    # Lcom/squareup/okhttp/ResponseSource;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/HttpResponseCache;->trackResponse(Lcom/squareup/okhttp/ResponseSource;)V

    return-void
.end method

.method static synthetic access$708(Lcom/squareup/okhttp/HttpResponseCache;)I
    .locals 2
    .param p0, "x0"    # Lcom/squareup/okhttp/HttpResponseCache;

    .prologue
    .line 121
    iget v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/HttpResponseCache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$808(Lcom/squareup/okhttp/HttpResponseCache;)I
    .locals 2
    .param p0, "x0"    # Lcom/squareup/okhttp/HttpResponseCache;

    .prologue
    .line 121
    iget v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/HttpResponseCache;->writeAbortCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/squareup/okhttp/HttpResponseCache;->newBodyInputStream(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    .line 187
    sget-object v5, Lcom/squareup/okhttp/HttpResponseCache;->DIGITS:[C

    .line 188
    .local v5, "digits":[C
    array-length v8, p0

    mul-int/lit8 v8, v8, 0x2

    new-array v2, v8, [C

    .line 189
    .local v2, "buf":[C
    const/4 v3, 0x0

    .line 190
    .local v3, "c":I
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v4, v3

    .end local v3    # "c":I
    .local v4, "c":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-byte v1, v0, v6

    .line 191
    .local v1, "b":B
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "c":I
    .restart local v3    # "c":I
    shr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v5, v8

    aput-char v8, v2, v4

    .line 192
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "c":I
    .restart local v4    # "c":I
    and-int/lit8 v8, v1, 0xf

    aget-char v8, v5, v8

    aput-char v8, v2, v3

    .line 190
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "b":B
    :cond_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    return-object v8
.end method

.method private getHttpEngine(Ljava/net/URLConnection;)Lcom/squareup/okhttp/internal/http/HttpEngine;
    .locals 1
    .param p1, "httpConnection"    # Ljava/net/URLConnection;

    .prologue
    .line 308
    instance-of v0, p1, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    if-eqz v0, :cond_0

    .line 309
    check-cast p1, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    .end local p1    # "httpConnection":Ljava/net/URLConnection;
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getHttpEngine()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 310
    .restart local p1    # "httpConnection":Ljava/net/URLConnection;
    :cond_0
    instance-of v0, p1, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;

    if-eqz v0, :cond_1

    .line 311
    check-cast p1, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;

    .end local p1    # "httpConnection":Ljava/net/URLConnection;
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->getHttpEngine()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    goto :goto_0

    .line 313
    .restart local p1    # "httpConnection":Ljava/net/URLConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newBodyInputStream(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .locals 2
    .param p0, "snapshot"    # Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .prologue
    .line 613
    new-instance v0, Lcom/squareup/okhttp/HttpResponseCache$2;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/squareup/okhttp/HttpResponseCache$2;-><init>(Ljava/io/InputStream;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)V

    return-object v0
.end method

.method private declared-synchronized trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized trackResponse(Lcom/squareup/okhttp/ResponseSource;)V
    .locals 2
    .param p1, "source"    # Lcom/squareup/okhttp/ResponseSource;

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->requestCount:I

    .line 337
    sget-object v0, Lcom/squareup/okhttp/HttpResponseCache$3;->$SwitchMap$com$squareup$okhttp$ResponseSource:[I

    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseSource;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    monitor-exit p0

    return-void

    .line 339
    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 343
    :pswitch_1
    :try_start_2
    iget v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->networkCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 10
    .param p1, "conditionalCacheHit"    # Ljava/net/CacheResponse;
    .param p2, "httpConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0, p2}, Lcom/squareup/okhttp/HttpResponseCache;->getHttpEngine(Ljava/net/URLConnection;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v3

    .line 277
    .local v3, "httpEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getUri()Ljava/net/URI;

    move-result-object v6

    .line 278
    .local v6, "uri":Ljava/net/URI;
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v4

    .line 279
    .local v4, "response":Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestHeaders()Lcom/squareup/okhttp/internal/http/RequestHeaders;

    move-result-object v8

    invoke-virtual {v8}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v8

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getAll(Ljava/util/Set;)Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v7

    .line 281
    .local v7, "varyHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    new-instance v2, Lcom/squareup/okhttp/HttpResponseCache$Entry;

    invoke-direct {v2, v6, v7, p2}, Lcom/squareup/okhttp/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    .line 282
    .local v2, "entry":Lcom/squareup/okhttp/HttpResponseCache$Entry;
    instance-of v8, p1, Lcom/squareup/okhttp/HttpResponseCache$EntryCacheResponse;

    if-eqz v8, :cond_1

    check-cast p1, Lcom/squareup/okhttp/HttpResponseCache$EntryCacheResponse;

    .end local p1    # "conditionalCacheHit":Ljava/net/CacheResponse;
    # getter for: Lcom/squareup/okhttp/HttpResponseCache$EntryCacheResponse;->snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    invoke-static {p1}, Lcom/squareup/okhttp/HttpResponseCache$EntryCacheResponse;->access$400(Lcom/squareup/okhttp/HttpResponseCache$EntryCacheResponse;)Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v5

    .line 285
    .local v5, "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :goto_0
    const/4 v1, 0x0

    .line 287
    .local v1, "editor":Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    :try_start_0
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->edit()Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->writeTo(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    .line 290
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_1
    return-void

    .line 282
    .end local v1    # "editor":Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .end local v5    # "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    .restart local p1    # "conditionalCacheHit":Ljava/net/CacheResponse;
    :cond_1
    check-cast p1, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;

    .end local p1    # "conditionalCacheHit":Ljava/net/CacheResponse;
    # getter for: Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    invoke-static {p1}, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;->access$500(Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;)Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v5

    goto :goto_0

    .line 292
    .restart local v1    # "editor":Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .restart local v5    # "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/HttpResponseCache;->abortQuietly(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    goto :goto_1
.end method

.method private uriToKey(Ljava/net/URI;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 176
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 177
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 178
    .local v1, "md5bytes":[B
    invoke-static {v1}, Lcom/squareup/okhttp/HttpResponseCache;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 179
    .end local v1    # "md5bytes":[B
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 181
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->delete()V

    .line 324
    return-void
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 6
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .prologue
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 199
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->get(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v3

    .line 204
    .local v3, "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    if-nez v3, :cond_0

    .line 218
    .end local v3    # "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :goto_0
    return-object v4

    .line 207
    .restart local v3    # "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :cond_0
    new-instance v1, Lcom/squareup/okhttp/HttpResponseCache$Entry;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/squareup/okhttp/HttpResponseCache$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .local v1, "entry":Lcom/squareup/okhttp/HttpResponseCache$Entry;
    invoke-virtual {v1, p1, p2, p3}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 214
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 208
    .end local v1    # "entry":Lcom/squareup/okhttp/HttpResponseCache$Entry;
    .end local v3    # "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "entry":Lcom/squareup/okhttp/HttpResponseCache$Entry;
    .restart local v3    # "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :cond_1
    # invokes: Lcom/squareup/okhttp/HttpResponseCache$Entry;->isHttps()Z
    invoke-static {v1}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$300(Lcom/squareup/okhttp/HttpResponseCache$Entry;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;

    invoke-direct {v4, v1, v3}, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;-><init>(Lcom/squareup/okhttp/HttpResponseCache$Entry;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)V

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/squareup/okhttp/HttpResponseCache$EntryCacheResponse;

    invoke-direct {v4, v1, v3}, Lcom/squareup/okhttp/HttpResponseCache$EntryCacheResponse;-><init>(Lcom/squareup/okhttp/HttpResponseCache$Entry;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)V

    goto :goto_0
.end method

.method public declared-synchronized getHitCount()I
    .locals 1

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNetworkCount()I
    .locals 1

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestCount()I
    .locals 1

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteAbortCount()I
    .locals 1

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteSuccessCount()I
    .locals 1

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 12
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 223
    instance-of v10, p2, Ljava/net/HttpURLConnection;

    if-nez v10, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-object v9

    :cond_1
    move-object v3, p2

    .line 227
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 228
    .local v3, "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "requestMethod":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "key":Ljava/lang/String;
    const-string v10, "POST"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "PUT"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "DELETE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 234
    :cond_2
    :try_start_0
    iget-object v10, p0, Lcom/squareup/okhttp/HttpResponseCache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v10, v5}, Lcom/squareup/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v10

    goto :goto_0

    .line 239
    :cond_3
    const-string v10, "GET"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 246
    invoke-direct {p0, v3}, Lcom/squareup/okhttp/HttpResponseCache;->getHttpEngine(Ljava/net/URLConnection;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v4

    .line 247
    .local v4, "httpEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v7

    .line 253
    .local v7, "response":Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->hasVaryAll()Z

    move-result v10

    if-nez v10, :cond_0

    .line 257
    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestHeaders()Lcom/squareup/okhttp/internal/http/RequestHeaders;

    move-result-object v10

    invoke-virtual {v10}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v10

    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getAll(Ljava/util/Set;)Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v8

    .line 259
    .local v8, "varyHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    new-instance v2, Lcom/squareup/okhttp/HttpResponseCache$Entry;

    invoke-direct {v2, p1, v8, v3}, Lcom/squareup/okhttp/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    .line 260
    .local v2, "entry":Lcom/squareup/okhttp/HttpResponseCache$Entry;
    const/4 v1, 0x0

    .line 262
    .local v1, "editor":Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    :try_start_1
    iget-object v10, p0, Lcom/squareup/okhttp/HttpResponseCache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v10, v5}, Lcom/squareup/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->writeTo(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    .line 267
    new-instance v10, Lcom/squareup/okhttp/HttpResponseCache$CacheRequestImpl;

    invoke-direct {v10, p0, v1}, Lcom/squareup/okhttp/HttpResponseCache$CacheRequestImpl;-><init>(Lcom/squareup/okhttp/HttpResponseCache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    goto :goto_0

    .line 268
    :catch_1
    move-exception v0

    .line 269
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/HttpResponseCache;->abortQuietly(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    goto :goto_0
.end method
