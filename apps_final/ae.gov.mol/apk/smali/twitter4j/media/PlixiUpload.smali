.class Ltwitter4j/media/PlixiUpload;
.super Ltwitter4j/media/AbstractImageUploadImpl;
.source "PlixiUpload.java"


# direct methods
.method public constructor <init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ltwitter4j/auth/OAuthAuthorization;)V
    .locals 2
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "oauth"    # Ltwitter4j/auth/OAuthAuthorization;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/media/AbstractImageUploadImpl;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ltwitter4j/auth/OAuthAuthorization;)V

    .line 35
    sget-object v0, Ltwitter4j/media/PlixiUpload;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Lockerz is no longer providing API."

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 36
    const-string v0, "http://api.plixi.com/api/upload.aspx"

    iput-object v0, p0, Ltwitter4j/media/PlixiUpload;->uploadUrl:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method protected postUpload()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v3, p0, Ltwitter4j/media/PlixiUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v2

    .line 42
    .local v2, "statusCode":I
    const/16 v3, 0xc9

    if-eq v2, v3, :cond_0

    .line 43
    new-instance v3, Ltwitter4j/TwitterException;

    const-string v4, "Plixi image upload returned invalid status code"

    iget-object v5, p0, Ltwitter4j/media/PlixiUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-direct {v3, v4, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v3

    .line 45
    :cond_0
    iget-object v3, p0, Ltwitter4j/media/PlixiUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "response":Ljava/lang/String;
    const-string v3, "<Error><ErrorCode>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    const-string v3, "<ErrorCode>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "<ErrorCode>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const-string v4, "</ErrorCode>"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "error":Ljava/lang/String;
    new-instance v3, Ltwitter4j/TwitterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Plixi image upload failed with this error message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltwitter4j/media/PlixiUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-direct {v3, v4, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v3

    .line 51
    .end local v0    # "error":Ljava/lang/String;
    :cond_1
    const-string v3, "<Status>OK</Status>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    const-string v3, "<MediaUrl>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "<MediaUrl>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const-string v4, "</MediaUrl>"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 55
    :cond_2
    new-instance v3, Ltwitter4j/TwitterException;

    const-string v4, "Unknown Plixi response"

    iget-object v5, p0, Ltwitter4j/media/PlixiUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-direct {v3, v4, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v3
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

    .line 60
    const-string v2, "https://api.twitter.com/1.1/account/verify_credentials.json"

    invoke-virtual {p0, v2}, Ltwitter4j/media/PlixiUpload;->generateVerifyCredentialsAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "verifyCredentialsAuthorizationHeader":Ljava/lang/String;
    iget-object v2, p0, Ltwitter4j/media/PlixiUpload;->headers:Ljava/util/Map;

    const-string v3, "X-Auth-Service-Provider"

    const-string v4, "https://api.twitter.com/1.1/account/verify_credentials.json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v2, p0, Ltwitter4j/media/PlixiUpload;->headers:Ljava/util/Map;

    const-string v3, "X-Verify-Credentials-Authorization"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v2, p0, Ltwitter4j/media/PlixiUpload;->apiKey:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 66
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No API Key for Plixi specified. put media.providerAPIKey in twitter4j.properties."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "api_key"

    iget-object v4, p0, Ltwitter4j/media/PlixiUpload;->apiKey:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v5

    iget-object v2, p0, Ltwitter4j/media/PlixiUpload;->image:Ltwitter4j/internal/http/HttpParameter;

    aput-object v2, v0, v6

    .line 72
    .local v0, "params":[Ltwitter4j/internal/http/HttpParameter;
    iget-object v2, p0, Ltwitter4j/media/PlixiUpload;->message:Ltwitter4j/internal/http/HttpParameter;

    if-eqz v2, :cond_1

    .line 73
    new-array v2, v6, [Ltwitter4j/internal/http/HttpParameter;

    iget-object v3, p0, Ltwitter4j/media/PlixiUpload;->message:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v2, v5

    invoke-virtual {p0, v2, v0}, Ltwitter4j/media/PlixiUpload;->appendHttpParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    .line 76
    :cond_1
    iput-object v0, p0, Ltwitter4j/media/PlixiUpload;->postParameter:[Ltwitter4j/internal/http/HttpParameter;

    .line 77
    return-void
.end method
