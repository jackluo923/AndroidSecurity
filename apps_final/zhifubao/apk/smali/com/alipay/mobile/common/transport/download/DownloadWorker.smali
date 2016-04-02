.class public Lcom/alipay/mobile/common/transport/download/DownloadWorker;
.super Lcom/alipay/mobile/common/transport/http/HttpWorker;
.source "DownloadWorker.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/text/SimpleDateFormat;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 51
    check-cast p2, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    .line 54
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b:Ljava/text/SimpleDateFormat;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 60
    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Ljava/io/File;)Lcom/alipay/mobile/common/transport/Response;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 219
    .line 221
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 223
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 224
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v1

    invoke-virtual {p4}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 226
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download failed! code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :catch_0
    move-exception v1

    :goto_0
    :try_start_2
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 236
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download failed! code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    .line 228
    :cond_3
    :try_start_3
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    .line 230
    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    if-eqz v0, :cond_4

    .line 239
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object v1

    .line 238
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 233
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 193
    const-string/jumbo v0, "DownloadWorker"

    const-string/jumbo v1, "deleteAllFile"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string/jumbo v1, "DownloadWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 253
    :try_start_0
    const-string/jumbo v0, "Last-Modified"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 254
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    .line 257
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const-string/jumbo v0, "DownloadWorker"

    const-string/jumbo v1, "setLastModified error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected getHeaders()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 64
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->isRedownload()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 74
    cmp-long v3, v1, v6

    if-lez v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "If-Modified-Since"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const-string/jumbo v2, "DownloadWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "If-Modified-Since:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 82
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 83
    cmp-long v5, v1, v6

    if-lez v5, :cond_0

    cmp-long v5, v3, v6

    if-lez v5, :cond_0

    .line 85
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v6, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "bytes="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const-string/jumbo v5, "DownloadWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Range:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->b:Ljava/text/SimpleDateFormat;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "If-Range"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    const-string/jumbo v2, "DownloadWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "If-Range:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handleResponse(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/mobile/common/transport/Response;
    .locals 18

    .prologue
    .line 101
    const-string/jumbo v4, "DownloadWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "resCode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->isRedownload()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a()V

    .line 106
    const/16 v4, 0xc8

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    .line 107
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "download failed! code must be equal to 200  code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 111
    :cond_0
    const/16 v4, 0x130

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 112
    new-instance v4, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v4, v5, v0, v1, v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    .line 187
    :goto_0
    return-object v4

    .line 115
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 117
    if-eqz v4, :cond_9

    .line 118
    const-string/jumbo v5, "DownloadWorker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "file len:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/16 v5, 0x1a0

    move/from16 v0, p2

    if-ne v0, v5, :cond_2

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Ljava/io/File;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v4

    goto :goto_0

    .line 124
    :cond_2
    const/16 v5, 0xc8

    move/from16 v0, p2

    if-ne v0, v5, :cond_3

    .line 125
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a()V

    .line 127
    :cond_3
    const/16 v5, 0xc8

    move/from16 v0, p2

    if-eq v0, v5, :cond_4

    const/16 v5, 0xce

    move/from16 v0, p2

    if-eq v0, v5, :cond_4

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a()V

    .line 130
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "download failed! code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 132
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 133
    const/4 v6, 0x0

    .line 134
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    const/4 v10, 0x1

    invoke-direct {v5, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 138
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v8, v5}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    invoke-virtual {v4, v11, v12}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addSocketTime(J)V

    .line 141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v11

    sub-long/2addr v11, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v9, v13, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "phone"

    invoke-virtual {v4, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v14

    const-string/jumbo v15, "monitor"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "url: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v16, " socketSpend: "

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " size: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " netDetail: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "|"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v15, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    sub-long v6, v9, v7

    invoke-virtual {v4, v6, v7}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addDataSize(J)V

    .line 145
    new-instance v4, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v4, v6, v0, v1, v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    .line 148
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->noteTraficConsume(Lcom/alipay/mobile/common/transport/Response;Lorg/apache/http/HttpResponse;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 154
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_7

    .line 155
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Couldn\'t create dir: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :catch_0
    move-exception v4

    .line 161
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->e:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->isRedownload()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 162
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a()V

    .line 170
    :cond_5
    :goto_2
    const-string/jumbo v6, "DownloadWorker"

    invoke-static {v6, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V

    .line 172
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "download failed!"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v5, :cond_6

    .line 177
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 183
    :cond_6
    throw v4

    .line 157
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-static {v6, v7}, Lcom/alipay/mobile/common/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 158
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->d:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 159
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 178
    :catch_1
    move-exception v4

    .line 179
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "ArrayOutputStream close error!"

    invoke-virtual {v4}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 165
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 166
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 178
    :catch_2
    move-exception v4

    .line 179
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "ArrayOutputStream close error!"

    invoke-virtual {v4}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 187
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 175
    :catchall_1
    move-exception v4

    move-object v5, v6

    goto :goto_3

    .line 160
    :catch_3
    move-exception v4

    move-object v5, v6

    goto/16 :goto_1
.end method

.method protected willHandleOtherCode(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 267
    const/16 v0, 0xce

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x130

    if-ne p1, v0, :cond_1

    .line 270
    :cond_0
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
