.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;
.super Ljava/lang/Object;
.source "ResourceFetcher.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;->b:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 136
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 141
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :try_start_1
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 147
    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    .line 148
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 151
    :catch_0
    move-exception v1

    .line 152
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    if-eqz v2, :cond_0

    .line 157
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 150
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;->a([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 155
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_3

    .line 157
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 161
    :cond_3
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 155
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 151
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 167
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 169
    aget-byte v1, p0, v0

    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0x100

    :cond_0
    div-int/lit8 v3, v1, 0x10

    rem-int/lit8 v1, v1, 0x10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;->a:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;->a:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 124
    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 37
    iget-object v0, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "targetResource is not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "ResourceFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fetchResource url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iget-object v3, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->e:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 45
    :goto_0
    if-nez v3, :cond_3

    .line 46
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "targetFile is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v3, v1

    .line 44
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_1
    return-object v0

    .line 54
    :cond_5
    iget-object v0, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 55
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 56
    iget-object v0, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->c:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_8

    .line 57
    :cond_6
    :goto_2
    iget-object v0, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->d:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 58
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ResourceFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "save content to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 56
    :cond_8
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_3
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_9

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_9
    :goto_5
    throw v0

    .line 64
    :cond_a
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iget-object v1, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setPath(Ljava/lang/String;)V

    .line 81
    new-instance v1, Lcom/alipay/mobile/common/transport/download/DownloadManager;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/download/DownloadManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 83
    const-wide/32 v1, 0x22ca40

    :try_start_7
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 88
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    .line 89
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "download fail"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :catch_3
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "download fail"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_b
    iget-object v0, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->d:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceInfo;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/ResourceFetcher;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "checkFileInMd5 fail"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_c
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto :goto_5

    .line 56
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method
