.class public Lcom/adsdk/sdk/nativeads/NativeAdManager;
.super Ljava/lang/Object;


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

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private includeLocation:Z

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

.field private listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

.field private nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

.field private publisherId:Ljava/lang/String;

.field private request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

.field private requestUrl:Ljava/lang/String;

.field private telephonyPermission:I

.field private userAge:I

.field private userGender:Lcom/adsdk/sdk/Gender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/adsdk/sdk/nativeads/NativeAdListener;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/adsdk/sdk/nativeads/NativeAdListener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->includeLocation:Z

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Publisher Id cannot be null or empty"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User Id cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->requestUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->includeLocation:Z

    iput-object p4, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->publisherId:Ljava/lang/String;

    iput-object p5, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    iput-object p6, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->adTypes:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->handler:Landroid/os/Handler;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->telephonyPermission:I

    invoke-static {p1}, Lcom/adsdk/sdk/Util;->prepareAndroidAdId(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Lcom/adsdk/sdk/nativeads/NativeAdRequest;
    .locals 1

    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->getRequest()Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/nativeads/NativeAdManager;Lcom/adsdk/sdk/nativeads/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Lcom/adsdk/sdk/nativeads/NativeAd;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/nativeads/NativeAdManager;Lcom/adsdk/sdk/nativeads/NativeAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->notifyAdLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->notifyAdFailed()V

    return-void
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->notifyAdClicked()V

    return-void
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Lcom/adsdk/sdk/nativeads/NativeAdListener;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    return-object v0
.end method

.method private createOnNativeAdClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/nativeads/NativeAdManager$3;

    invoke-direct {v0, p0, p1}, Lcom/adsdk/sdk/nativeads/NativeAdManager$3;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;Ljava/lang/String;)V

    return-object v0
.end method

.method private getRequest()Lcom/adsdk/sdk/nativeads/NativeAdRequest;
    .locals 5

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    if-nez v0, :cond_1

    new-instance v0, Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-direct {v0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->telephonyPermission:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setAndroidIMEI(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setAndroidID(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->getAndroidAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setAndroidAdId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->publisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setPublisherId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setUserAgent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->buildUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setUserAgent2(Ljava/lang/String;)V

    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebKit UserAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-virtual {v2}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setRequestUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->adTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setAdTypes(Ljava/util/List;)V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->userGender:Lcom/adsdk/sdk/Gender;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setGender(Lcom/adsdk/sdk/Gender;)V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->userAge:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setUserAge(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->adTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setAdTypes(Ljava/util/List;)V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->keywords:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setKeywords(Ljava/util/List;)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->includeLocation:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location is longitude: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setLatitude(D)V

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setLongitude(D)V

    :goto_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-virtual {v0, v3, v4}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setLatitude(D)V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->request:Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    invoke-virtual {v0, v3, v4}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->setLongitude(D)V

    goto :goto_0
.end method

.method private notifyAdClicked()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/nativeads/NativeAdManager$6;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/nativeads/NativeAdManager$6;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyAdFailed()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/nativeads/NativeAdManager$5;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/nativeads/NativeAdManager$5;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyAdLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/nativeads/NativeAdManager$4;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/nativeads/NativeAdManager$4;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;Lcom/adsdk/sdk/nativeads/NativeAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getNativeAdView(Lcom/adsdk/sdk/nativeads/NativeAd;Lcom/adsdk/sdk/nativeads/NativeViewBinder;)Lcom/adsdk/sdk/nativeads/NativeAdView;
    .locals 3

    new-instance v0, Lcom/adsdk/sdk/nativeads/NativeAdView;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/adsdk/sdk/nativeads/NativeAdView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/nativeads/NativeAd;Lcom/adsdk/sdk/nativeads/NativeViewBinder;Lcom/adsdk/sdk/nativeads/NativeAdListener;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adsdk/sdk/nativeads/NativeAd;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->createOnNativeAdClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v0
.end method

.method public requestAd()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/adsdk/sdk/nativeads/NativeAdManager$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/nativeads/NativeAdManager$2;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

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

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->keywords:Ljava/util/List;

    return-void
.end method

.method public setUserAge(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->userAge:I

    return-void
.end method

.method public setUserGender(Lcom/adsdk/sdk/Gender;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager;->userGender:Lcom/adsdk/sdk/Gender;

    return-void
.end method
