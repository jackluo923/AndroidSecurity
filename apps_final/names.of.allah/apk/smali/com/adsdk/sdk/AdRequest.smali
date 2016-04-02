.class public Lcom/adsdk/sdk/AdRequest;
.super Ljava/lang/Object;


# static fields
.field private static final REQUEST_TYPE_ANDROID:Ljava/lang/String; = "android_app"


# instance fields
.field private adspaceHeight:I

.field private adspaceStrict:Z

.field private adspaceWidth:I

.field private androidAdId:Ljava/lang/String;

.field private androidID:Ljava/lang/String;

.field private androidIMEI:Ljava/lang/String;

.field private connectionType:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceId2:Ljava/lang/String;

.field private gender:Lcom/adsdk/sdk/Gender;

.field private headers:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private isVideoRequest:Z

.field private keywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private latitude:D

.field private listAds:Ljava/lang/String;

.field private longitude:D

.field private protocolVersion:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field private requestURL:Ljava/lang/String;

.field private timestamp:J

.field private userAge:I

.field private userAgent:Ljava/lang/String;

.field private userAgent2:Ljava/lang/String;

.field private videoMaxDuration:I

.field private videoMinDuration:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    iput-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    const-string v0, ""

    iput-object v0, p0, Lcom/adsdk/sdk/AdRequest;->androidIMEI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsdk/sdk/AdRequest;->androidID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsdk/sdk/AdRequest;->androidAdId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdspaceHeight()I
    .locals 1

    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->adspaceHeight:I

    return v0
.end method

.method public getAdspaceWidth()I
    .locals 1

    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->adspaceWidth:I

    return v0
.end method

.method public getAndroidAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->androidAdId:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->androidID:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidIMEI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->androidIMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->deviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeviceId2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->deviceId2:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMode()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->headers:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->headers:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->ipAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->ipAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    return-wide v0
.end method

.method public getListAds()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->listAds:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->listAds:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    return-wide v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->protocolVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "5.2.0"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->protocolVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->publisherId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->publisherId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    const-string v0, "android_app"

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->requestURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/adsdk/sdk/AdRequest;->timestamp:J

    return-wide v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserAgent2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent2:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/AdRequest;->userAgent2:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoMaxDuration()I
    .locals 1

    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->videoMaxDuration:I

    return v0
.end method

.method public getVideoMinDuration()I
    .locals 1

    iget v0, p0, Lcom/adsdk/sdk/AdRequest;->videoMinDuration:I

    return v0
.end method

.method public isAdspaceStrict()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsdk/sdk/AdRequest;->adspaceStrict:Z

    return v0
.end method

.method public isVideoRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsdk/sdk/AdRequest;->isVideoRequest:Z

    return v0
.end method

.method public setAdspaceHeight(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/AdRequest;->adspaceHeight:I

    return-void
.end method

.method public setAdspaceStrict(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsdk/sdk/AdRequest;->adspaceStrict:Z

    return-void
.end method

.method public setAdspaceWidth(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/AdRequest;->adspaceWidth:I

    return-void
.end method

.method public setAndroidAdId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->androidAdId:Ljava/lang/String;

    return-void
.end method

.method public setAndroidID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->androidID:Ljava/lang/String;

    return-void
.end method

.method public setAndroidIMEI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->androidIMEI:Ljava/lang/String;

    return-void
.end method

.method public setConnectionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->connectionType:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->deviceId2:Ljava/lang/String;

    return-void
.end method

.method public setGender(Lcom/adsdk/sdk/Gender;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->gender:Lcom/adsdk/sdk/Gender;

    return-void
.end method

.method public setHeaders(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->headers:Ljava/lang/String;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->keywords:Ljava/util/List;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    return-void
.end method

.method public setListAds(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->listAds:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->protocolVersion:Ljava/lang/String;

    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->publisherId:Ljava/lang/String;

    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->requestURL:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/adsdk/sdk/AdRequest;->timestamp:J

    return-void
.end method

.method public setUserAge(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/AdRequest;->userAge:I

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdRequest;->userAgent2:Ljava/lang/String;

    return-void
.end method

.method public setVideoMaxDuration(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/AdRequest;->videoMaxDuration:I

    return-void
.end method

.method public setVideoMinDuration(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/AdRequest;->videoMinDuration:I

    return-void
.end method

.method public setVideoRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsdk/sdk/AdRequest;->isVideoRequest:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->toUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Landroid/net/Uri;
    .locals 6

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getRequestURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0xc350

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const-string v2, "rt"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getRequestType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "v"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getProtocolVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "i"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "u"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "u2"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "s"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getPublisherId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "o"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "o_androidimei"

    iget-object v3, p0, Lcom/adsdk/sdk/AdRequest;->androidIMEI:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "o_androidid"

    iget-object v3, p0, Lcom/adsdk/sdk/AdRequest;->androidID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "o_andadvid"

    iget-object v3, p0, Lcom/adsdk/sdk/AdRequest;->androidAdId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "r_random"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "o2"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getDeviceId2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "t"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "connection_type"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "listads"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getListAds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "c_customevents"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "c.mraid"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-boolean v1, p0, Lcom/adsdk/sdk/AdRequest;->isVideoRequest:Z

    if-eqz v1, :cond_7

    const-string v1, "r_type"

    const-string v2, "video"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "r_resp"

    const-string v2, "vast20"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget v1, p0, Lcom/adsdk/sdk/AdRequest;->videoMaxDuration:I

    if-eqz v1, :cond_0

    const-string v1, "v_dur_max"

    iget v2, p0, Lcom/adsdk/sdk/AdRequest;->videoMaxDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    iget v1, p0, Lcom/adsdk/sdk/AdRequest;->videoMinDuration:I

    if-eqz v1, :cond_1

    const-string v1, "v_dur_min"

    iget v2, p0, Lcom/adsdk/sdk/AdRequest;->videoMinDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    :goto_0
    iget v1, p0, Lcom/adsdk/sdk/AdRequest;->userAge:I

    if-eqz v1, :cond_2

    const-string v1, "demo.age"

    iget v2, p0, Lcom/adsdk/sdk/AdRequest;->userAge:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    iget-object v1, p0, Lcom/adsdk/sdk/AdRequest;->gender:Lcom/adsdk/sdk/Gender;

    if-eqz v1, :cond_3

    const-string v1, "demo.gender"

    iget-object v2, p0, Lcom/adsdk/sdk/AdRequest;->gender:Lcom/adsdk/sdk/Gender;

    invoke-virtual {v2}, Lcom/adsdk/sdk/Gender;->getServerParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    iget-object v1, p0, Lcom/adsdk/sdk/AdRequest;->keywords:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/adsdk/sdk/AdRequest;->keywords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ", "

    iget-object v2, p0, Lcom/adsdk/sdk/AdRequest;->keywords:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "demo.keywords"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    const-string v1, "u_wv"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "u_br"

    invoke-virtual {p0}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-wide v1, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_5

    iget-wide v1, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_5

    const-string v1, "longitude"

    iget-wide v2, p0, Lcom/adsdk/sdk/AdRequest;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "latitude"

    iget-wide v2, p0, Lcom/adsdk/sdk/AdRequest;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_5
    iget v1, p0, Lcom/adsdk/sdk/AdRequest;->adspaceHeight:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/adsdk/sdk/AdRequest;->adspaceWidth:I

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/adsdk/sdk/AdRequest;->adspaceStrict:Z

    if-eqz v1, :cond_8

    const-string v1, "adspace.strict"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_1
    const-string v1, "adspace.width"

    iget v2, p0, Lcom/adsdk/sdk/AdRequest;->adspaceWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "adspace.height"

    iget v2, p0, Lcom/adsdk/sdk/AdRequest;->adspaceHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_6
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v1, "r_type"

    const-string v2, "banner"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_0

    :cond_8
    const-string v1, "adspace.strict"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method
