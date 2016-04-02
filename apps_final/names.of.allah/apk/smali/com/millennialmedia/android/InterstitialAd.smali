.class Lcom/millennialmedia/android/InterstitialAd;
.super Lcom/millennialmedia/android/CachedAd;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field static final EXTRA_AD_URL:Ljava/lang/String; = "EXTRA_AD_URL"

.field static final EXTRA_CONTENT:Ljava/lang/String; = "EXTRA_CONTENT"

.field static final serialVersionUID:J = 0x47973e3dff4c4b9dL


# instance fields
.field adUrl:Ljava/lang/String;

.field content:Ljava/lang/String;

.field mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/InterstitialAd$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/InterstitialAd$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/InterstitialAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/CachedAd;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/CachedAd;-><init>(Landroid/os/Parcel;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->adUrl:Ljava/lang/String;

    const-class v0, Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HttpMMHeaders;

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getExpandExtrasIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v1}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    iput-wide p2, v1, Lcom/millennialmedia/android/OverlaySettings;->creatorAdImplId:J

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/millennialmedia/android/OverlaySettings;->content:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->adUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/millennialmedia/android/OverlaySettings;->adUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/OverlaySettings;->setWebMMHeaders(Lcom/millennialmedia/android/HttpMMHeaders;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/millennialmedia/android/OverlaySettings;->isFromInterstitial:Z

    const-string v2, "settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "internalId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->adUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->adUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v2

    iget-object v3, p2, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    iget-wide v4, p0, Lcom/millennialmedia/android/InterstitialAd;->deferredViewStart:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/millennialmedia/android/HandShake;->canDisplayCachedAd(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->adUrl:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->adUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method download(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method getTypeString()Ljava/lang/String;
    .locals 1

    const-string v0, "Interstitial"

    return-object v0
.end method

.method isOnDisk(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->adUrl:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HttpMMHeaders;

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    return-void
.end method

.method saveAssets(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method show(Landroid/content/Context;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/InterstitialAd;->getExpandExtrasIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startAdViewOverlayActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->writeExternal(Ljava/io/ObjectOutput;)V

    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->adUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/CachedAd;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->adUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
