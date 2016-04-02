.class public final Lcom/google/ads/mediation/millennial/MillennialAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/c;
.implements Lcom/google/ads/mediation/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/c",
        "<",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;",
        ">;",
        "Lcom/google/ads/mediation/e",
        "<",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$ads$AdRequest$Gender:[I


# instance fields
.field private adView:Lcom/millennialmedia/android/MMAdView;

.field private bannerListener:Lcom/google/ads/mediation/d;

.field private interstitialListener:Lcom/google/ads/mediation/f;

.field private interstitialView:Lcom/millennialmedia/android/MMInterstitial;

.field private wrappedAdView:Landroid/widget/FrameLayout;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$ads$AdRequest$Gender()[I
    .locals 3

    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->$SWITCH_TABLE$com$google$ads$AdRequest$Gender:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/ads/c;->values()[Lcom/google/ads/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/ads/c;->c:Lcom/google/ads/c;

    invoke-virtual {v1}, Lcom/google/ads/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/ads/c;->b:Lcom/google/ads/c;

    invoke-virtual {v1}, Lcom/google/ads/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/ads/c;->a:Lcom/google/ads/c;

    invoke-virtual {v1}, Lcom/google/ads/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->$SWITCH_TABLE$com$google$ads$AdRequest$Gender:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/d;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/d;

    return-object v0
.end method

.method static synthetic access$3(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/f;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/f;

    return-object v0
.end method

.method private populateAdViewParameters(Lcom/millennialmedia/android/MMAd;Ljava/util/Hashtable;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/android/MMAd;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/mediation/a;",
            "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    new-instance p4, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    invoke-direct {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;-><init>()V

    :cond_0
    invoke-virtual {p3}, Lcom/google/ads/mediation/a;->c()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "keywords"

    const-string v1, ","

    invoke-virtual {p3}, Lcom/google/ads/mediation/a;->c()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getChildren()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "children"

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getChildren()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "true"

    :goto_0
    invoke-virtual {p2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    invoke-virtual {p3}, Lcom/google/ads/mediation/a;->b()Lcom/google/ads/c;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->$SWITCH_TABLE$com$google$ads$AdRequest$Gender()[I

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/ads/mediation/a;->b()Lcom/google/ads/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_1
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getIncomeInUsDollars()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getIncomeInUsDollars()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setIncome(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p3}, Lcom/google/ads/mediation/a;->d()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p3}, Lcom/google/ads/mediation/a;->d()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMRequest;->setUserLocation(Landroid/location/Location;)V

    :cond_5
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setZip(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getMaritalStatus()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getMaritalStatus()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setMarital(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getEthnicity()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getEthnicity()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setEthnicity(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getOrientation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getOrientation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setOrientation(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getPolitics()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getPolitics()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setPolitics(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getEducation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getEducation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setEducation(Ljava/lang/String;)V

    :cond_b
    if-eqz p2, :cond_c

    invoke-virtual {v0, p2}, Lcom/millennialmedia/android/MMRequest;->setMetaValues(Ljava/util/Map;)V

    :cond_c
    invoke-interface {p1, v0}, Lcom/millennialmedia/android/MMAd;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    return-void

    :cond_d
    const-string v0, "false"

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "male"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setGender(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    const-string v1, "female"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setGender(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    return-object v0
.end method

.method public final getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;

    return-object v0
.end method

.method public final bridge synthetic requestBannerAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/google/ads/mediation/g;Lcom/google/ads/d;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/j;)V
    .locals 7

    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->requestBannerAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;Lcom/google/ads/d;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V

    return-void
.end method

.method public final requestBannerAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;Lcom/google/ads/d;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V
    .locals 4

    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/d;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p4, p2}, Lcom/google/ads/d;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p4, p2}, Lcom/google/ads/d;->b(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/millennialmedia/android/MMAdView;

    invoke-direct {v2, p2}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    iget-object v3, p3, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;->apid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p4}, Lcom/google/ads/d;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    iget-object v2, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p4}, Lcom/google/ads/d;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    iget-object v2, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    iget-object v2, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0, v2, v0, p5, p6}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->populateAdViewParameters(Lcom/millennialmedia/android/MMAd;Ljava/util/Hashtable;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    new-instance v2, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;-><init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;)V

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p4, p2}, Lcom/google/ads/d;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/d;

    sget-object v1, Lcom/google/ads/b;->b:Lcom/google/ads/b;

    invoke-interface {v0, p0, v1}, Lcom/google/ads/mediation/d;->onFailedToReceiveAd(Lcom/google/ads/mediation/c;Lcom/google/ads/b;)V

    goto :goto_0
.end method

.method public final bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/f;Landroid/app/Activity;Lcom/google/ads/mediation/g;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/j;)V
    .locals 6

    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/f;Landroid/app/Activity;Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V

    return-void
.end method

.method public final requestInterstitialAd(Lcom/google/ads/mediation/f;Landroid/app/Activity;Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V
    .locals 3

    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/f;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Lcom/millennialmedia/android/MMInterstitial;

    invoke-direct {v1, p2}, Lcom/millennialmedia/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialView:Lcom/millennialmedia/android/MMInterstitial;

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialView:Lcom/millennialmedia/android/MMInterstitial;

    iget-object v2, p3, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;->apid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialView:Lcom/millennialmedia/android/MMInterstitial;

    invoke-direct {p0, v1, v0, p4, p5}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->populateAdViewParameters(Lcom/millennialmedia/android/MMAd;Ljava/util/Hashtable;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialView:Lcom/millennialmedia/android/MMInterstitial;

    new-instance v1, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;-><init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialView:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->fetch()V

    return-void
.end method

.method public final showInterstitial()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialView:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    return-void
.end method
