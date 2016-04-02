.class public Lcom/alipay/android/app/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private a:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->a:Lcom/alibaba/fastjson/JSONArray;

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/android/app/json/JSONArray;->a:Lcom/alibaba/fastjson/JSONArray;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->a:Lcom/alibaba/fastjson/JSONArray;

    .line 17
    return-void
.end method


# virtual methods
.method protected final a()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->a:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public get(I)Lcom/alipay/android/app/json/JSONObject;
    .locals 2

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 64
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJSONObject(I)Lcom/alipay/android/app/json/JSONObject;
    .locals 2

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public length()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    return v0
.end method

.method public optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONObject;->getJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->a:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
