.class public Lcom/alipay/android/app/statistic/LogUploadTask;
.super Lcom/alipay/android/app/statistic/NetworkTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/statistic/NetworkTask;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/alipay/android/app/statistic/NetworkPacket;

    iget-boolean v2, p0, Lcom/alipay/android/app/statistic/LogUploadTask;->b:Z

    invoke-direct {v1, v2}, Lcom/alipay/android/app/statistic/NetworkPacket;-><init>(Z)V

    :try_start_0
    new-instance v2, Lcom/alipay/android/app/statistic/Letter;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "api_name"

    const-string/jumbo v5, "/sdk/log"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "api_version"

    const-string/jumbo v5, "1.0.0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "log_v"

    const-string/jumbo v6, "1.0"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/alipay/android/app/statistic/LogUploadTask;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/alipay/android/app/statistic/Letter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/android/app/statistic/LogUploadTask;->a:Z

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/statistic/NetworkPacket;->a(Lcom/alipay/android/app/statistic/Letter;Z)Lcom/alipay/android/app/statistic/PackInfo;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/statistic/NetworkHandler;

    invoke-direct {v3}, Lcom/alipay/android/app/statistic/NetworkHandler;-><init>()V

    invoke-static {}, Lcom/alipay/android/app/statistic/SDKConfig;->a()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    invoke-static {}, Lcom/alipay/android/app/statistic/SDKConfig;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/alipay/android/app/statistic/PackInfo;->b()[B

    move-result-object v5

    invoke-virtual {v2}, Lcom/alipay/android/app/statistic/PackInfo;->a()Z

    move-result v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v8, "msp-gzip"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/android/app/statistic/NetworkHandler;->a(Ljava/lang/String;[BLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/statistic/LogUploadTask;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v3

    invoke-static {v2}, Lcom/alipay/android/app/statistic/NetworkHandler;->a(Lorg/apache/http/HttpResponse;)[B

    move-result-object v2

    new-instance v4, Lcom/alipay/android/app/statistic/PackInfo;

    invoke-direct {v4, v3, v2}, Lcom/alipay/android/app/statistic/PackInfo;-><init>(Z[B)V

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/statistic/NetworkPacket;->a(Lcom/alipay/android/app/statistic/PackInfo;)Lcom/alipay/android/app/statistic/Letter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/app/statistic/Letter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/statistic/LogUploadTask;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/alipay/android/app/statistic/LogUploadTask;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/statistic/LogUploadTask;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
