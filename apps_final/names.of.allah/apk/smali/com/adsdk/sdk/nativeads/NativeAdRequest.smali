.class public Lcom/adsdk/sdk/nativeads/NativeAdRequest;
.super Ljava/lang/Object;


# static fields
.field private static final IMAGE_TYPES:Ljava/lang/String; = "icon,main"

.field private static final REQUEST_TYPE:Ljava/lang/String; = "native"

.field private static final REQUEST_TYPE_ANDROID:Ljava/lang/String; = "android_app"

.field private static final RESPONSE_TYPE:Ljava/lang/String; = "json"

.field private static final TEXT_TYPES:Ljava/lang/String; = "headline,description,cta,advertiser,rating"


# instance fields
.field private adTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private androidAdId:Ljava/lang/String;

.field private androidID:Ljava/lang/String;

.field private androidIMEI:Ljava/lang/String;

.field private gender:Lcom/adsdk/sdk/Gender;

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

.field private longitude:D

.field private protocolVersion:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field private request_url:Ljava/lang/String;

.field private userAge:I

.field private userAgent:Ljava/lang/String;

.field private userAgent2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidIMEI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidAdId:Ljava/lang/String;

    iput-wide v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->longitude:D

    iput-wide v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->latitude:D

    return-void
.end method


# virtual methods
.method public getAdTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adTypes:Ljava/util/List;

    return-object v0
.end method

.method public getAndroidAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidAdId:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidID:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidIMEI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidIMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/adsdk/sdk/Gender;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->gender:Lcom/adsdk/sdk/Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->keywords:Ljava/util/List;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->longitude:D

    return-wide v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->protocolVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "5.2.0"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->protocolVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAge()I
    .locals 1

    iget v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAge:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserAgent2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAgent2:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAgent2:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAdTypes(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adTypes:Ljava/util/List;

    return-void
.end method

.method public setAndroidAdId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidAdId:Ljava/lang/String;

    return-void
.end method

.method public setAndroidID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidID:Ljava/lang/String;

    return-void
.end method

.method public setAndroidIMEI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidIMEI:Ljava/lang/String;

    return-void
.end method

.method public setGender(Lcom/adsdk/sdk/Gender;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->gender:Lcom/adsdk/sdk/Gender;

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

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->keywords:Ljava/util/List;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->longitude:D

    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->protocolVersion:Ljava/lang/String;

    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->publisherId:Ljava/lang/String;

    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->request_url:Ljava/lang/String;

    return-void
.end method

.method public setUserAge(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAge:I

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAgent2:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->toUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Landroid/net/Uri;
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->request_url:Ljava/lang/String;

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

    const-string v3, "android_app"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "r_type"

    const-string v3, "native"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "r_resp"

    const-string v3, "json"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "n_img"

    const-string v3, "icon,main"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "n_txt"

    const-string v3, "headline,description,cta,advertiser,rating"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adTypes:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ", "

    iget-object v3, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->adTypes:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "n_type"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    const-string v2, "s"

    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getPublisherId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "u"

    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "u2"

    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getUserAgent2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "r_random"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "o_androidid"

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "o_androidimei"

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidIMEI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "o_andadvid"

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->androidAdId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "v"

    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getProtocolVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAge:I

    if-eqz v1, :cond_1

    const-string v1, "demo.age"

    iget v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->userAge:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->gender:Lcom/adsdk/sdk/Gender;

    if-eqz v1, :cond_2

    const-string v1, "demo.gender"

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->gender:Lcom/adsdk/sdk/Gender;

    invoke-virtual {v2}, Lcom/adsdk/sdk/Gender;->getServerParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->keywords:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->keywords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ", "

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->keywords:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "demo.keywords"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    const-string v1, "u_wv"

    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "u_br"

    invoke-virtual {p0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-wide v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->longitude:D

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_4

    iget-wide v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->latitude:D

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_4

    const-string v1, "longitude"

    iget-wide v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "latitude"

    iget-wide v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
