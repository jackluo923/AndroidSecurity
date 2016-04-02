.class Ltwitter4j/media/TwippleUpload;
.super Ltwitter4j/media/AbstractImageUploadImpl;
.source "TwippleUpload.java"


# direct methods
.method public constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V
    .locals 0
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "oauth"    # Ltwitter4j/auth/OAuthAuthorization;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ltwitter4j/media/AbstractImageUploadImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V

    .line 32
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
    .line 36
    iget-object v3, p0, Ltwitter4j/media/TwippleUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v2

    .line 37
    .local v2, "statusCode":I
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 38
    new-instance v3, Ltwitter4j/TwitterException;

    const-string v4, "Twipple image upload returned invalid status code"

    iget-object v5, p0, Ltwitter4j/media/TwippleUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-direct {v3, v4, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v3

    .line 41
    :cond_0
    iget-object v3, p0, Ltwitter4j/media/TwippleUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v3}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "response":Ljava/lang/String;
    const-string v3, "<rsp stat=\"fail\">"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    const-string v3, "msg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "error":Ljava/lang/String;
    new-instance v3, Ltwitter4j/TwitterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Twipple image upload failed with this error message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltwitter4j/media/TwippleUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-direct {v3, v4, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v3

    .line 46
    .end local v0    # "error":Ljava/lang/String;
    :cond_1
    const-string v3, "<rsp stat=\"ok\">"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
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

    .line 50
    :cond_2
    new-instance v3, Ltwitter4j/TwitterException;

    const-string v4, "Unknown Twipple response"

    iget-object v5, p0, Ltwitter4j/media/TwippleUpload;->httpResponse:Ltwitter4j/internal/http/HttpResponse;

    invoke-direct {v3, v4, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V

    throw v3
.end method

.method protected preUpload()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 55
    const-string v1, "http://p.twipple.jp/api/upload"

    iput-object v1, p0, Ltwitter4j/media/TwippleUpload;->uploadUrl:Ljava/lang/String;

    .line 56
    const-string v1, "https://api.twitter.com/1.1/account/verify_credentials.json"

    invoke-virtual {p0, v1}, Ltwitter4j/media/TwippleUpload;->generateVerifyCredentialsAuthorizationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "signedVerifyCredentialsURL":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "verify_url"

    invoke-direct {v3, v4, v0}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ltwitter4j/media/TwippleUpload;->image:Ltwitter4j/internal/http/HttpParameter;

    aput-object v3, v1, v2

    iput-object v1, p0, Ltwitter4j/media/TwippleUpload;->postParameter:[Ltwitter4j/internal/http/HttpParameter;

    .line 61
    return-void
.end method
