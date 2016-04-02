.class public Ltwitter4j/media/ImageUploadFactory;
.super Ljava/lang/Object;
.source "ImageUploadFactory.java"


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final conf:Ltwitter4j/conf/Configuration;

.field private final defaultMediaProvider:Ltwitter4j/media/MediaProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/media/ImageUploadFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 4
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getMediaProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "mediaProvider":Ljava/lang/String;
    const-string v1, "twitter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Ltwitter4j/media/MediaProvider;->TWITTER:Ltwitter4j/media/MediaProvider;

    iput-object v1, p0, Ltwitter4j/media/ImageUploadFactory;->defaultMediaProvider:Ltwitter4j/media/MediaProvider;

    .line 71
    :goto_0
    iput-object p1, p0, Ltwitter4j/media/ImageUploadFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 72
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getMediaProviderAPIKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/media/ImageUploadFactory;->apiKey:Ljava/lang/String;

    .line 73
    return-void

    .line 50
    :cond_0
    const-string v1, "imgly"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "img_ly"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    :cond_1
    sget-object v1, Ltwitter4j/media/MediaProvider;->IMG_LY:Ltwitter4j/media/MediaProvider;

    iput-object v1, p0, Ltwitter4j/media/ImageUploadFactory;->defaultMediaProvider:Ltwitter4j/media/MediaProvider;

    goto :goto_0

    .line 52
    :cond_2
    const-string v1, "plixi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    sget-object v1, Ltwitter4j/media/MediaProvider;->PLIXI:Ltwitter4j/media/MediaProvider;

    iput-object v1, p0, Ltwitter4j/media/ImageUploadFactory;->defaultMediaProvider:Ltwitter4j/media/MediaProvider;

    goto :goto_0

    .line 54
    :cond_3
    const-string v1, "lockerz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    sget-object v1, Ltwitter4j/media/MediaProvider;->LOCKERZ:Ltwitter4j/media/MediaProvider;

    iput-object v1, p0, Ltwitter4j/media/ImageUploadFactory;->defaultMediaProvider:Ltwitter4j/media/MediaProvider;

    goto :goto_0

    .line 56
    :cond_4
    const-string v1, "twipple"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 57
    sget-object v1, Ltwitter4j/media/MediaProvider;->TWIPPLE:Ltwitter4j/media/MediaProvider;

    iput-object v1, p0, Ltwitter4j/media/ImageUploadFactory;->defaultMediaProvider:Ltwitter4j/media/MediaProvider;

    goto :goto_0

    .line 58
    :cond_5
    const-string v1, "twitgoo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 59
    sget-object v1, Ltwitter4j/media/MediaProvider;->TWITGOO:Ltwitter4j/media/MediaProvider;

    iput-object v1, p0, Ltwitter4j/media/ImageUploadFactory;->defaultMediaProvider:Ltwitter4j/media/MediaProvider;

    goto :goto_0

    .line 60
    :cond_6
    const-string v1, "twitpic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 61
    sget-object v1, Ltwitter4j/media/MediaProvider;->TWITPIC:Ltwitter4j/media/MediaProvider;

    iput-object v1, p0, Ltwitter4j/media/ImageUploadFactory;->defaultMediaProvider:Ltwitter4j/media/MediaProvider;

    goto :goto_0

    .line 62
    :cond_7
    const-string v1, "yfrog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 63
    sget-object v1, Ltwitter4j/media/MediaProvider;->YFROG:Ltwitter4j/media/MediaProvider;

    iput-object v1, p0, Ltwitter4j/media/ImageUploadFactory;->defaultMediaProvider:Ltwitter4j/media/MediaProvider;

    goto :goto_0

    .line 64
    :cond_8
    const-string v1, "mobypicture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 65
    sget-object v1, Ltwitter4j/media/MediaProvider;->MOBYPICTURE:Ltwitter4j/media/MediaProvider;

    iput-object v1, p0, Ltwitter4j/media/ImageUploadFactory;->defaultMediaProvider:Ltwitter4j/media/MediaProvider;

    goto :goto_0

    .line 66
    :cond_9
    const-string v1, "posterous"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 67
    sget-object v1, Ltwitter4j/media/MediaProvider;->POSTEROUS:Ltwitter4j/media/MediaProvider;

    iput-object v1, p0, Ltwitter4j/media/ImageUploadFactory;->defaultMediaProvider:Ltwitter4j/media/MediaProvider;

    goto/16 :goto_0

    .line 69
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported media provider:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getInstance()Ltwitter4j/media/ImageUpload;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ltwitter4j/media/ImageUploadFactory;->defaultMediaProvider:Ltwitter4j/media/MediaProvider;

    invoke-virtual {p0, v0}, Ltwitter4j/media/ImageUploadFactory;->getInstance(Ltwitter4j/media/MediaProvider;)Ltwitter4j/media/ImageUpload;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/media/ImageUpload;
    .locals 1
    .param p1, "authorization"    # Ltwitter4j/auth/Authorization;

    .prologue
    .line 92
    iget-object v0, p0, Ltwitter4j/media/ImageUploadFactory;->defaultMediaProvider:Ltwitter4j/media/MediaProvider;

    invoke-virtual {p0, v0, p1}, Ltwitter4j/media/ImageUploadFactory;->getInstance(Ltwitter4j/media/MediaProvider;Ltwitter4j/auth/Authorization;)Ltwitter4j/media/ImageUpload;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ltwitter4j/media/MediaProvider;)Ltwitter4j/media/ImageUpload;
    .locals 2
    .param p1, "mediaProvider"    # Ltwitter4j/media/MediaProvider;

    .prologue
    .line 102
    iget-object v1, p0, Ltwitter4j/media/ImageUploadFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v1}, Ltwitter4j/auth/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;

    move-result-object v0

    .line 103
    .local v0, "authorization":Ltwitter4j/auth/Authorization;
    invoke-virtual {p0, p1, v0}, Ltwitter4j/media/ImageUploadFactory;->getInstance(Ltwitter4j/media/MediaProvider;Ltwitter4j/auth/Authorization;)Ltwitter4j/media/ImageUpload;

    move-result-object v1

    return-object v1
.end method

.method public getInstance(Ltwitter4j/media/MediaProvider;Ltwitter4j/auth/Authorization;)Ltwitter4j/media/ImageUpload;
    .locals 4
    .param p1, "mediaProvider"    # Ltwitter4j/media/MediaProvider;
    .param p2, "authorization"    # Ltwitter4j/auth/Authorization;

    .prologue
    .line 115
    instance-of v1, p2, Ltwitter4j/auth/OAuthAuthorization;

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "OAuth authorization is required."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    .line 118
    check-cast v0, Ltwitter4j/auth/OAuthAuthorization;

    .line 119
    .local v0, "oauth":Ltwitter4j/auth/OAuthAuthorization;
    sget-object v1, Ltwitter4j/media/MediaProvider;->TWITTER:Ltwitter4j/media/MediaProvider;

    if-ne p1, v1, :cond_1

    .line 120
    new-instance v1, Ltwitter4j/media/TwitterUpload;

    iget-object v2, p0, Ltwitter4j/media/ImageUploadFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, v0}, Ltwitter4j/media/TwitterUpload;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V

    .line 138
    :goto_0
    return-object v1

    .line 121
    :cond_1
    sget-object v1, Ltwitter4j/media/MediaProvider;->IMG_LY:Ltwitter4j/media/MediaProvider;

    if-ne p1, v1, :cond_2

    .line 122
    new-instance v1, Ltwitter4j/media/ImgLyUpload;

    iget-object v2, p0, Ltwitter4j/media/ImageUploadFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, v0}, Ltwitter4j/media/ImgLyUpload;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V

    goto :goto_0

    .line 123
    :cond_2
    sget-object v1, Ltwitter4j/media/MediaProvider;->PLIXI:Ltwitter4j/media/MediaProvider;

    if-ne p1, v1, :cond_3

    .line 124
    new-instance v1, Ltwitter4j/media/PlixiUpload;

    iget-object v2, p0, Ltwitter4j/media/ImageUploadFactory;->conf:Ltwitter4j/conf/Configuration;

    iget-object v3, p0, Ltwitter4j/media/ImageUploadFactory;->apiKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Ltwitter4j/media/PlixiUpload;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ltwitter4j/auth/OAuthAuthorization;)V

    goto :goto_0

    .line 125
    :cond_3
    sget-object v1, Ltwitter4j/media/MediaProvider;->LOCKERZ:Ltwitter4j/media/MediaProvider;

    if-ne p1, v1, :cond_4

    .line 126
    new-instance v1, Ltwitter4j/media/PlixiUpload;

    iget-object v2, p0, Ltwitter4j/media/ImageUploadFactory;->conf:Ltwitter4j/conf/Configuration;

    iget-object v3, p0, Ltwitter4j/media/ImageUploadFactory;->apiKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Ltwitter4j/media/PlixiUpload;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ltwitter4j/auth/OAuthAuthorization;)V

    goto :goto_0

    .line 127
    :cond_4
    sget-object v1, Ltwitter4j/media/MediaProvider;->TWIPPLE:Ltwitter4j/media/MediaProvider;

    if-ne p1, v1, :cond_5

    .line 128
    new-instance v1, Ltwitter4j/media/TwippleUpload;

    iget-object v2, p0, Ltwitter4j/media/ImageUploadFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, v0}, Ltwitter4j/media/TwippleUpload;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V

    goto :goto_0

    .line 129
    :cond_5
    sget-object v1, Ltwitter4j/media/MediaProvider;->TWITGOO:Ltwitter4j/media/MediaProvider;

    if-ne p1, v1, :cond_6

    .line 130
    new-instance v1, Ltwitter4j/media/TwitgooUpload;

    iget-object v2, p0, Ltwitter4j/media/ImageUploadFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, v0}, Ltwitter4j/media/TwitgooUpload;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V

    goto :goto_0

    .line 131
    :cond_6
    sget-object v1, Ltwitter4j/media/MediaProvider;->TWITPIC:Ltwitter4j/media/MediaProvider;

    if-ne p1, v1, :cond_7

    .line 132
    new-instance v1, Ltwitter4j/media/TwitpicUpload;

    iget-object v2, p0, Ltwitter4j/media/ImageUploadFactory;->conf:Ltwitter4j/conf/Configuration;

    iget-object v3, p0, Ltwitter4j/media/ImageUploadFactory;->apiKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Ltwitter4j/media/TwitpicUpload;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ltwitter4j/auth/OAuthAuthorization;)V

    goto :goto_0

    .line 133
    :cond_7
    sget-object v1, Ltwitter4j/media/MediaProvider;->YFROG:Ltwitter4j/media/MediaProvider;

    if-ne p1, v1, :cond_8

    .line 134
    new-instance v1, Ltwitter4j/media/YFrogUpload;

    iget-object v2, p0, Ltwitter4j/media/ImageUploadFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, v0}, Ltwitter4j/media/YFrogUpload;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V

    goto :goto_0

    .line 135
    :cond_8
    sget-object v1, Ltwitter4j/media/MediaProvider;->MOBYPICTURE:Ltwitter4j/media/MediaProvider;

    if-ne p1, v1, :cond_9

    .line 136
    new-instance v1, Ltwitter4j/media/MobypictureUpload;

    iget-object v2, p0, Ltwitter4j/media/ImageUploadFactory;->conf:Ltwitter4j/conf/Configuration;

    iget-object v3, p0, Ltwitter4j/media/ImageUploadFactory;->apiKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Ltwitter4j/media/MobypictureUpload;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ltwitter4j/auth/OAuthAuthorization;)V

    goto :goto_0

    .line 137
    :cond_9
    sget-object v1, Ltwitter4j/media/MediaProvider;->POSTEROUS:Ltwitter4j/media/MediaProvider;

    if-ne p1, v1, :cond_a

    .line 138
    new-instance v1, Ltwitter4j/media/PosterousUpload;

    iget-object v2, p0, Ltwitter4j/media/ImageUploadFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, v0}, Ltwitter4j/media/PosterousUpload;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/OAuthAuthorization;)V

    goto :goto_0

    .line 140
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unknown provider"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
