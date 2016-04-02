.class public Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;
.super Ljava/lang/Object;


# static fields
.field public static final ERR_CODE:Ljava/lang/String; = "ERR_CODE"

.field public static final FAIL:Ljava/lang/String; = "FAIL"

.field public static final KEY:Ljava/lang/String; = "KEY"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final VALUE:Ljava/lang/String; = "VALUE"


# instance fields
.field public api:Ljava/lang/String;

.field public data:Lorg/json/JSONObject;

.field public errCode:Ljava/lang/String;

.field public errInfo:Ljava/lang/String;

.field public success:Z

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseResult(Ljava/lang/String;)Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;
    .locals 7

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->success:Z

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "api"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->api:Ljava/lang/String;

    const-string/jumbo v0, "v"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->v:Ljava/lang/String;

    const-string/jumbo v0, "ret"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->parserRet([Ljava/lang/String;)V

    const-string/jumbo v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->data:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iput-boolean v1, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->success:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errInfo:Ljava/lang/String;

    goto :goto_1
.end method

.method public parserRet([Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    array-length v1, p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v4, p1, v0

    const-string/jumbo v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "KEY"

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "VALUE"

    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "SUCCESS"

    const-string/jumbo v3, "KEY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v9, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->success:Z

    const-string/jumbo v1, "KEY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errCode:Ljava/lang/String;

    const-string/jumbo v1, "VALUE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errInfo:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void

    :cond_3
    iput-boolean v2, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->success:Z

    const-string/jumbo v1, "KEY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errCode:Ljava/lang/String;

    const-string/jumbo v1, "VALUE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errInfo:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v3, "FAIL"

    const-string/jumbo v4, "KEY"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "ERR_CODE"

    const-string/jumbo v4, "KEY"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v2, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->success:Z

    const-string/jumbo v2, "VALUE"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errCode:Ljava/lang/String;

    const-string/jumbo v1, "VALUE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errInfo:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iput-boolean v2, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->success:Z

    const-string/jumbo v0, "KEY"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errCode:Ljava/lang/String;

    const-string/jumbo v0, "VALUE"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/ApiResponse;->errInfo:Ljava/lang/String;

    goto :goto_1
.end method
