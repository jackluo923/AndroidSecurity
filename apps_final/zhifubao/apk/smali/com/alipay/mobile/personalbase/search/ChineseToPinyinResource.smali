.class public Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;
.super Ljava/lang/Object;
.source "ChineseToPinyinResource.java"


# static fields
.field private static b:Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->b:Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x51a6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->a:[Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->a()V

    .line 36
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 42
    .line 46
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "unicode_to_hanyu_pinyin.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 47
    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    const-string/jumbo v0, "ISO-8859-1"

    invoke-direct {v3, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 54
    const/4 v0, 0x0

    .line 55
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v2

    if-nez v2, :cond_0

    .line 65
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 66
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 67
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 71
    :goto_1
    return-void

    .line 56
    :cond_0
    :try_start_5
    iget-object v5, p0, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->a:[Ljava/lang/String;

    aput-object v2, v5, v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 60
    :goto_2
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "SocialSdk_PersonalBase"

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 65
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 66
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 67
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 68
    :catch_1
    move-exception v0

    goto :goto_1

    .line 61
    :catch_2
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    .line 62
    :goto_3
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v5, "SocialSdk_PersonalBase"

    invoke-interface {v1, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 65
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 66
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 67
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 68
    :catch_3
    move-exception v0

    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    .line 65
    :goto_4
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 66
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 67
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 70
    :goto_5
    throw v0

    .line 71
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_5

    .line 63
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_4

    .line 61
    :catch_6
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 59
    :catch_9
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_2

    :catch_a
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :catch_b
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_2
.end method

.method public static declared-synchronized clearInstance()V
    .locals 3

    .prologue
    .line 142
    const-class v1, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->b:Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->b:Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->a:[Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->b:Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit v1

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;
    .locals 2

    .prologue
    .line 135
    const-class v1, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->b:Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;-><init>()V

    sput-object v0, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->b:Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;

    .line 138
    :cond_0
    sget-object v0, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->b:Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getHanyuPinyinStringArray(C)[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 82
    const/16 v1, 0x4e00

    if-lt p1, v1, :cond_3

    const v1, 0x9fbb

    if-gt p1, v1, :cond_3

    const-string/jumbo v1, "4E00"

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->a:[Ljava/lang/String;

    aget-object v1, v2, v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "(none0)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    .line 84
    :goto_1
    if-eqz v1, :cond_0

    .line 85
    const-string/jumbo v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 86
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 88
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    return-object v0

    .line 82
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method
