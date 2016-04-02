.class public Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;
.super Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;


# instance fields
.field public currentTimeMillis:J

.field public httpsSupport:Z

.field public signatures:[Landroid/content/pm/Signature;

.field public ssoExpireTime:J

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public parse([B)Ljava/lang/Object;
    .locals 9

    const/4 v1, 0x0

    new-instance v3, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;

    invoke-direct {v3}, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;-><init>()V

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v4, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;

    invoke-direct {v4}, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;-><init>()V

    invoke-virtual {v4, v0}, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->parseResult(Ljava/lang/String;)Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->success:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->mIsSuccess:Z

    iget-object v0, v4, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->data:Lorg/json/JSONObject;

    const-string/jumbo v2, "currentTimeMillis"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "currentTimeMillis"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->currentTimeMillis:J

    :cond_0
    const-string/jumbo v2, "httpsSupport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "httpsSupport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->httpsSupport:Z

    :cond_1
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->version:Ljava/lang/String;

    :cond_2
    const-string/jumbo v2, "ssoExpireTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ssoExpireTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    iput-wide v5, v3, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->ssoExpireTime:J

    :cond_3
    const-string/jumbo v2, "whiteList"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "whiteList"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v0, "pubKey"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    new-instance v0, Landroid/content/pm/Signature;

    const-string/jumbo v8, "pubKey"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "whitelist pubkey fromat error! pubkey = "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "pubKey"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, "unknow_err"

    iput-object v0, v3, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->mRetCode:Ljava/lang/String;

    :goto_2
    return-object v3

    :cond_5
    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/Signature;

    iput-object v0, v3, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->signatures:[Landroid/content/pm/Signature;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/Signature;

    iget-object v5, v3, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->signatures:[Landroid/content/pm/Signature;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    iget-object v0, v4, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errCode:Ljava/lang/String;

    iput-object v0, v3, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->mRetCode:Ljava/lang/String;

    iget-object v0, v4, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errInfo:Ljava/lang/String;

    iput-object v0, v3, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->mRetInfo:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method
