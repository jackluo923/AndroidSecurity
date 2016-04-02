.class Ltwitter4j/media/YFrogUpload;
.super Ltwitter4j/media/AbstractImageUploadImpl;
.source "YFrogUpload.java"


# direct methods
.method public constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V
    .locals 0
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "oauth"    # Ltwitter4j/auth/OAuthAuthorization;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ltwitter4j/media/AbstractImageUploadImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V

    .line 36
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
    .line 40
    iget-object v3, p0, Ltwitter4j/media/YFrogUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v2

    .line 41
    .local v2, "statusCode":I
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 42
    new-instance v3, Ltwitter4j/TwitterException;

    const-string v4, "YFrog image upload returned invalid status code"

    iget-object v5, p0, Ltwitter4j/media/YFrogUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-direct {v3, v4, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v3

    .line 45
    :cond_0
    iget-object v3, p0, Ltwitter4j/media/YFrogUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "response":Ljava/lang/String;
    const-string v3, "<rsp stat=\"fail\">"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    const-string v3, "msg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "error":Ljava/lang/String;
    new-instance v3, Ltwitter4j/TwitterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "YFrog image upload failed with this error message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltwitter4j/media/YFrogUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-direct {v3, v4, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v3

    .line 50
    .end local v0    # "error":Ljava/lang/String;
    :cond_1
    const-string v3, "<rsp stat=\"ok\">"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    const-string v3, "<mediaurl>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "<mediaurl>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const-string v4, "</mediaurl>"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 54
    :cond_2
    new-instance v3, Ltwitter4j/TwitterException;

    const-string v4, "Unknown YFrog response"

    iget-object v5, p0, Ltwitter4j/media/YFrogUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-direct {v3, v4, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v3
.end method

.method protected preUpload()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    const-string v3, "https://yfrog.com/api/xauth_upload"

    iput-object v3, p0, Ltwitter4j/media/YFrogUpload;->uploadUrl:Ljava/lang/String;

    .line 60
    const-string v3, "https://api.twitter.com/1/account/verify_credentials.xml"

    invoke-virtual {p0, v3}, Ltwitter4j/media/YFrogUpload;->generateVerifyCredentialsAuthorizationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "signedVerifyCredentialsURL":Ljava/lang/String;
    new-instance v3, Ltwitter4j/TwitterFactory;

    invoke-direct {v3}, Ltwitter4j/TwitterFactory;-><init>()V

    iget-object v4, p0, Ltwitter4j/media/YFrogUpload;->oauth:Ltwitter4j/auth/OAuthAuthorization;

    invoke-virtual {v3, v4}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object v2

    .line 63
    .local v2, "tw":Ltwitter4j/Twitter;
    const/4 v3, 0x4

    new-array v0, v3, [Ltwitter4j/internal/http/HttpParameter;

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "auth"

    const-string v5, "oauth"

    invoke-direct {v3, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v6

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "username"

    invoke-interface {v2}, Ltwitter4j/Twitter;->verifyCredentials()Ltwitter4j/User;

    move-result-object v5

    invoke-interface {v5}, Ltwitter4j/User;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v7

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "verify_url"

    invoke-direct {v4, v5, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    const/4 v3, 0x3

    iget-object v4, p0, Ltwitter4j/media/YFrogUpload;->image:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v0, v3

    .line 69
    .local v0, "params":[Ltwitter4j/internal/http/HttpParameter;
    iget-object v3, p0, Ltwitter4j/media/YFrogUpload;->message:Ltwitter4j/internal/http/HttpParameter;

    if-eqz v3, :cond_0

    .line 70
    new-array v3, v7, [Ltwitter4j/internal/http/HttpParameter;

    iget-object v4, p0, Ltwitter4j/media/YFrogUpload;->message:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v3, v6

    invoke-virtual {p0, v3, v0}, Ltwitter4j/media/YFrogUpload;->appendHttpParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    .line 74
    :cond_0
    iput-object v0, p0, Ltwitter4j/media/YFrogUpload;->postParameter:[Ltwitter4j/internal/http/HttpParameter;

    .line 75
    return-void
.end method
