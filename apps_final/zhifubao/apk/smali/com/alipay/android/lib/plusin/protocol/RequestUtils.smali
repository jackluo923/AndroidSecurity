.class public Lcom/alipay/android/lib/plusin/protocol/RequestUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/net/MspClient;


# direct methods
.method public static a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    if-nez v1, :cond_2

    :cond_0
    new-instance v3, Lcom/alipay/android/app/exception/NetErrorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    new-instance v2, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v2, v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_0
    throw v0

    :cond_2
    :try_start_3
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    :cond_3
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v0, v4

    if-gez v0, :cond_7

    const/16 v0, 0x1000

    move v2, v0

    :goto_1
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "UTF-8"

    :cond_4
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    const/16 v2, 0x400

    new-array v2, v2, [C

    :goto_2
    invoke-virtual {v3, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    :goto_3
    return-object v0

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_0

    :cond_7
    move v2, v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2

    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a:Lcom/alipay/android/app/net/MspClient;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/android/app/net/MspClient;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/net/MspClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a:Lcom/alipay/android/app/net/MspClient;

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a:Lcom/alipay/android/app/net/MspClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/alipay/android/app/net/MspClient;->a(Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a:Lcom/alipay/android/app/net/MspClient;

    invoke-virtual {v0}, Lcom/alipay/android/app/net/MspClient;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a:Lcom/alipay/android/app/net/MspClient;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/net/MspClient;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;)Lorg/apache/http/HttpResponse;
    .locals 2

    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a:Lcom/alipay/android/app/net/MspClient;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/android/app/net/MspClient;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/net/MspClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a:Lcom/alipay/android/app/net/MspClient;

    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a:Lcom/alipay/android/app/net/MspClient;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/android/app/net/MspClient;->a(Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a:Lcom/alipay/android/app/net/MspClient;

    invoke-virtual {v0}, Lcom/alipay/android/app/net/MspClient;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a:Lcom/alipay/android/app/net/MspClient;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/net/MspClient;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a:Lcom/alipay/android/app/net/MspClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/alipay/android/app/net/MspClient;->a(Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_1
.end method
