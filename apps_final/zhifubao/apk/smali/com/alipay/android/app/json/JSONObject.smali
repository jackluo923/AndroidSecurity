.class public Lcom/alipay/android/app/json/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# instance fields
.field private a:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    .line 30
    :cond_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    .line 25
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFastJsonObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;
    .locals 2

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    .line 200
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    .line 202
    new-instance v0, Lcom/alipay/android/app/json/JSONArray;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONArray;-><init>(Lcom/alibaba/fastjson/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getJSONObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;
    .locals 2

    .prologue
    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    .line 179
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_0

    .line 181
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v0

    return v0
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 106
    const-class v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    move-object v0, v1

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    const-class v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Lcom/alipay/android/app/json/JSONArray;

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONArray;-><init>(Lcom/alibaba/fastjson/JSONArray;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 50
    :cond_0
    return p2
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 85
    :cond_0
    return p2
.end method

.method public optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;
    .locals 2

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    .line 91
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    new-instance v0, Lcom/alipay/android/app/json/JSONArray;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONArray;-><init>(Lcom/alibaba/fastjson/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_0

    .line 192
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    .line 194
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    const-string/jumbo v0, ""

    .line 58
    :cond_0
    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p2, v0

    .line 68
    :cond_0
    return-object p2
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONArray;)V
    .locals 2

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p2}, Lcom/alipay/android/app/json/JSONArray;->a()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p2}, Lcom/alipay/android/app/json/JSONObject;->getJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONObject;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
