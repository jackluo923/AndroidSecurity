.class public Lcom/alipay/android/app/logic/decorator/ZipDecorator;
.super Lcom/alipay/android/app/logic/decorator/BaseDecorator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;-><init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string/jumbo v1, "gzip"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "form"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "quickpay"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "quickpay"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/logic/util/LogicUtil;->b([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/encrypt/MD5;->encryptMd5_32_byte([B)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "md5"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v1, "form"

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4, v3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    :cond_0
    const-string/jumbo v1, "css"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string/jumbo v1, "android"

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "android"

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/logic/util/LogicUtil;->b([B)[B

    move-result-object v3

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v4, v1

    :goto_0
    if-eqz v5, :cond_6

    const-string/jumbo v1, "common"

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "common"

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/logic/util/LogicUtil;->b([B)[B

    move-result-object v3

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v6, "utf-8"

    invoke-direct {v1, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v3, v1

    :goto_1
    if-eqz v5, :cond_5

    const-string/jumbo v1, "form"

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "form"

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v5, :cond_1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    move-result-object v2

    invoke-virtual {v2, v3, v4, v1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    iget-object v2, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)V

    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_2
    :try_start_2
    new-instance v1, Lcom/alipay/android/app/exception/GzipException;

    const-string/jumbo v2, "client md5  not equal server md5"

    invoke-direct {v1, v2}, Lcom/alipay/android/app/exception/GzipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v1

    :goto_5
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v7}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Z)V

    goto :goto_3

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Z)V
    :try_end_3
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    :goto_6
    iget-object v1, p0, Lcom/alipay/android/app/logic/decorator/ZipDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v1, v7}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_5

    :cond_5
    move-object v1, v2

    goto :goto_2

    :cond_6
    move-object v3, v2

    goto :goto_1

    :cond_7
    move-object v4, v2

    goto/16 :goto_0
.end method

.method public final a([BLjava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
