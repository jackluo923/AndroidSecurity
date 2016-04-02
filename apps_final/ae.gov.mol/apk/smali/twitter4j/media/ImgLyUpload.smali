.class Ltwitter4j/media/ImgLyUpload;
.super Ltwitter4j/media/AbstractImageUploadImpl;
.source "ImgLyUpload.java"


# direct methods
.method public constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V
    .locals 0
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "oauth"    # Ltwitter4j/auth/OAuthAuthorization;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ltwitter4j/media/AbstractImageUploadImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected postUpload()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v4, p0, Ltwitter4j/media/ImgLyUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v4}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v3

    .line 40
    .local v3, "statusCode":I
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    .line 41
    new-instance v4, Ltwitter4j/TwitterException;

    const-string v5, "ImgLy image upload returned invalid status code"

    iget-object v6, p0, Ltwitter4j/media/ImgLyUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-direct {v4, v5, v6}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v4

    .line 43
    :cond_0
    iget-object v4, p0, Ltwitter4j/media/ImgLyUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v4}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, v2}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "json":Ltwitter4j/internal/org/json/JSONObject;
    const-string v4, "url"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 48
    const-string v4, "url"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 49
    .end local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ltwitter4j/internal/org/json/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ImgLy response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 53
    .end local v0    # "e":Ltwitter4j/internal/org/json/JSONException;
    .restart local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    :cond_1
    new-instance v4, Ltwitter4j/TwitterException;

    const-string v5, "Unknown ImgLy response"

    iget-object v6, p0, Ltwitter4j/media/ImgLyUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-direct {v4, v5, v6}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v4
.end method

.method protected preUpload()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    const-string v2, "http://img.ly/api/2/upload.json"

    iput-object v2, p0, Ltwitter4j/media/ImgLyUpload;->uploadUrl:Ljava/lang/String;

    .line 59
    const-string v2, "https://api.twitter.com/1.1/account/verify_credentials.json"

    invoke-virtual {p0, v2}, Ltwitter4j/media/ImgLyUpload;->generateVerifyCredentialsAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "verifyCredentialsAuthorizationHeader":Ljava/lang/String;
    iget-object v2, p0, Ltwitter4j/media/ImgLyUpload;->headers:Ljava/util/Map;

    const-string v3, "X-Auth-Service-Provider"

    const-string v4, "https://api.twitter.com/1.1/account/verify_credentials.json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v2, p0, Ltwitter4j/media/ImgLyUpload;->headers:Ljava/util/Map;

    const-string v3, "X-Verify-Credentials-Authorization"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-array v0, v6, [Ltwitter4j/internal/http/HttpParameter;

    iget-object v2, p0, Ltwitter4j/media/ImgLyUpload;->image:Ltwitter4j/internal/http/HttpParameter;

    aput-object v2, v0, v5

    .line 65
    .local v0, "params":[Ltwitter4j/internal/http/HttpParameter;
    iget-object v2, p0, Ltwitter4j/media/ImgLyUpload;->message:Ltwitter4j/internal/http/HttpParameter;

    if-eqz v2, :cond_0

    .line 66
    new-array v2, v6, [Ltwitter4j/internal/http/HttpParameter;

    iget-object v3, p0, Ltwitter4j/media/ImgLyUpload;->message:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v2, v5

    invoke-virtual {p0, v2, v0}, Ltwitter4j/media/ImgLyUpload;->appendHttpParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    .line 69
    :cond_0
    iput-object v0, p0, Ltwitter4j/media/ImgLyUpload;->postParameter:[Ltwitter4j/internal/http/HttpParameter;

    .line 70
    return-void
.end method
