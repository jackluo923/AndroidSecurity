.class public Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;
.super Ljava/lang/Object;
.source "HttpUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x2710

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:I

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->f:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->g:Z

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->c:Landroid/content/Context;

    .line 29
    iput-object p4, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->d:Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->d:Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->d:Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;

    const-string/jumbo v1, "mFilePath or mUrl is null"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;->a(Ljava/lang/String;)V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "HttpUpload"

    const-string/jumbo v3, "upload begin-----------------------------------------"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->g:Z

    if-eqz v0, :cond_6

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "HttpUpload"

    const-string/jumbo v3, "ForceUpload!"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    long-to-int v1, v0

    .line 66
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->b:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 69
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    const-string/jumbo v9, "monitor"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "url: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "  spend: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v4, v6, v4

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v9, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 74
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 75
    const-string/jumbo v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v4, "FileName"

    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->f:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v4, "Connection"

    const-string/jumbo v5, "Keep-Alive"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v4, "Charset"

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v4, "content-type"

    const-string/jumbo v5, "text/html"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 81
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 82
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 87
    :goto_1
    const/4 v2, 0x0

    const/16 v4, 0x400

    invoke-virtual {v3, v0, v2, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_8

    .line 89
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 100
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "HttpUpload"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->d:Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;

    if-eqz v3, :cond_4

    .line 102
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->d:Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 106
    :cond_4
    if-eqz v1, :cond_5

    .line 107
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 109
    :cond_5
    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 112
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 50
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->c:Landroid/content/Context;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/NetUtils;->a(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 52
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "HttpUpload"

    const-string/jumbo v2, "NOT NETTYPE_WIFI"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->d:Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->d:Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;

    const-string/jumbo v1, "is no wifi network, can not upload"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_8
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->d:Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->d:Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;->a()V

    .line 98
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "HttpUpload"

    const-string/jumbo v4, "upload success-----------------------------------------"

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 106
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 109
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 112
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 105
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 106
    :goto_3
    if-eqz v2, :cond_a

    .line 107
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 109
    :cond_a
    if-eqz v3, :cond_b

    .line 110
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 114
    :cond_b
    :goto_4
    throw v0

    .line 112
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 105
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_3

    .line 99
    :catch_4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->f:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->g:Z

    .line 137
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a()V

    .line 121
    return-void
.end method
