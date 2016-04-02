.class Ltwitter4j/media/TwitgooUpload;
.super Ltwitter4j/media/AbstractImageUploadImpl;
.source "TwitgooUpload.java"


# direct methods
.method public constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V
    .locals 0
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "oauth"    # Ltwitter4j/auth/OAuthAuthorization;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ltwitter4j/media/AbstractImageUploadImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected postUpload()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 38
    iget-object v6, p0, Ltwitter4j/media/TwitgooUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v6}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v5

    .line 39
    .local v5, "statusCode":I
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 40
    new-instance v6, Ltwitter4j/TwitterException;

    const-string v7, "Twitgoo image upload returned invalid status code"

    iget-object v8, p0, Ltwitter4j/media/TwitgooUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-direct {v6, v7, v8}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v6

    .line 42
    :cond_0
    iget-object v6, p0, Ltwitter4j/media/TwitgooUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v6}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "response":Ljava/lang/String;
    const-string v6, "<rsp status=\"ok\">"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 44
    const-string v0, "<mediaurl>"

    .line 45
    .local v0, "h":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 46
    .local v1, "i":I
    if-eq v1, v8, :cond_2

    .line 47
    const-string v6, "</mediaurl>"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 48
    .local v2, "j":I
    if-eq v2, v8, :cond_2

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 52
    .end local v0    # "h":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1
    const-string v6, "<rsp status=\"fail\">"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 53
    const-string v0, "msg=\""

    .line 54
    .restart local v0    # "h":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 55
    .restart local v1    # "i":I
    if-eq v1, v8, :cond_2

    .line 56
    const-string v6, "\""

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 57
    .restart local v2    # "j":I
    if-eq v2, v8, :cond_2

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "msg":Ljava/lang/String;
    new-instance v6, Ltwitter4j/TwitterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid Twitgoo response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 64
    .end local v0    # "h":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "msg":Ljava/lang/String;
    :cond_2
    new-instance v6, Ltwitter4j/TwitterException;

    const-string v7, "Unknown Twitgoo response"

    iget-object v8, p0, Ltwitter4j/media/TwitgooUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-direct {v6, v7, v8}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v6
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

    .line 69
    const-string v2, "http://twitgoo.com/api/uploadAndPost"

    iput-object v2, p0, Ltwitter4j/media/TwitgooUpload;->uploadUrl:Ljava/lang/String;

    .line 70
    const-string v2, "https://api.twitter.com/1/account/verify_credentials.json"

    invoke-virtual {p0, v2}, Ltwitter4j/media/TwitgooUpload;->generateVerifyCredentialsAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "verifyCredentialsAuthorizationHeader":Ljava/lang/String;
    iget-object v2, p0, Ltwitter4j/media/TwitgooUpload;->headers:Ljava/util/Map;

    const-string v3, "X-Auth-Service-Provider"

    const-string v4, "https://api.twitter.com/1/account/verify_credentials.json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v2, p0, Ltwitter4j/media/TwitgooUpload;->headers:Ljava/util/Map;

    const-string v3, "X-Verify-Credentials-Authorization"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/4 v2, 0x2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "no_twitter_post"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v5

    iget-object v2, p0, Ltwitter4j/media/TwitgooUpload;->image:Ltwitter4j/internal/http/HttpParameter;

    aput-object v2, v0, v6

    .line 79
    .local v0, "params":[Ltwitter4j/internal/http/HttpParameter;
    iget-object v2, p0, Ltwitter4j/media/TwitgooUpload;->message:Ltwitter4j/internal/http/HttpParameter;

    if-eqz v2, :cond_0

    .line 80
    new-array v2, v6, [Ltwitter4j/internal/http/HttpParameter;

    iget-object v3, p0, Ltwitter4j/media/TwitgooUpload;->message:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v2, v5

    invoke-virtual {p0, v2, v0}, Ltwitter4j/media/TwitgooUpload;->appendHttpParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    .line 84
    :cond_0
    iput-object v0, p0, Ltwitter4j/media/TwitgooUpload;->postParameter:[Ltwitter4j/internal/http/HttpParameter;

    .line 85
    return-void
.end method
