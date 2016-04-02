.class Lcom/millennialmedia/android/MMJSResponse;
.super Ljava/lang/Object;


# static fields
.field static final ERROR:I = 0x0

.field static final SUCCESS:I = 0x1


# instance fields
.field className:Ljava/lang/String;

.field dataResponse:[B

.field methodName:Ljava/lang/String;

.field response:Ljava/lang/Object;

.field result:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static responseWithError()Lcom/millennialmedia/android/MMJSResponse;
    .locals 1

    const-string v0, "An unknown error occured."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method static responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2

    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/MMJSResponse;->result:I

    iput-object p0, v0, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    return-object v0
.end method

.method static responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;
    .locals 1

    const-string v0, "Success."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method static responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2

    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/millennialmedia/android/MMJSResponse;->result:I

    iput-object p0, v0, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method toJSONString()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "class"

    iget-object v2, p0, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "call"

    iget-object v2, p0, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "result"

    iget v2, p0, Lcom/millennialmedia/android/MMJSResponse;->result:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    if-eqz v1, :cond_2

    const-string v1, "response"

    iget-object v2, p0, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/millennialmedia/android/MMJSResponse;->dataResponse:[B

    if-eqz v1, :cond_3

    const-string v1, "response"

    iget-object v2, p0, Lcom/millennialmedia/android/MMJSResponse;->dataResponse:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/millennialmedia/android/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_1

    :cond_3
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
