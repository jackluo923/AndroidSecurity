.class Lcom/millennialmedia/android/OverlaySettings;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/OverlaySettings;",
            ">;"
        }
    .end annotation
.end field

.field static final PROPERTIES_ACCELEROMETER:Ljava/lang/String; = "enableNativeAccelerometer"

.field static final PROPERTIES_ALLOW_ORIENTATION_CHANGE:Ljava/lang/String; = "allowOrientationChange"

.field static final PROPERTIES_CUSTOM_CLOSE:Ljava/lang/String; = "useCustomClose"

.field static final PROPERTIES_ENABLE_HARDWARE_ACCEL:Ljava/lang/String; = "enableHardwareAccel"

.field static final PROPERTIES_FORCE_ORIENTATION:Ljava/lang/String; = "forceOrientation"

.field static final PROPERTIES_HEIGHT:Ljava/lang/String; = "height"

.field static final PROPERTIES_MODAL:Ljava/lang/String; = "modal"

.field static final PROPERTIES_ORIENTATION:Ljava/lang/String; = "orientation"

.field static final PROPERTIES_TRANSITION:Ljava/lang/String; = "transition"

.field static final PROPERTIES_TRANSITION_DURATION:Ljava/lang/String; = "transitionDuration"

.field static final PROPERTIES_TRANSPARENT:Ljava/lang/String; = "transparent"

.field static final PROPERTIES_WIDTH:Ljava/lang/String; = "width"


# instance fields
.field adUrl:Ljava/lang/String;

.field allowOrientationChange:Z

.field canAccelerate:Z

.field content:Ljava/lang/String;

.field creatorAdImplId:J

.field hasLoadedExpandUrl:Z

.field height:I

.field isFromInterstitial:Z

.field private isTransparent:Z
    .annotation runtime Lcom/millennialmedia/google/gson/annotations/SerializedName;
        value = "transparent"
    .end annotation
.end field

.field mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

.field modal:Z

.field orientation:Ljava/lang/String;

.field shouldLaunchToOverlay:Z

.field shouldResizeOverlay:I

.field private transition:Ljava/lang/String;

.field private transitionTimeInMillis:J
    .annotation runtime Lcom/millennialmedia/google/gson/annotations/SerializedName;
        value = "transitionDuration"
    .end annotation
.end field

.field urlToLoad:Ljava/lang/String;

.field private useCustomClose:Z

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/OverlaySettings$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/OverlaySettings$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/OverlaySettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->transition:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->content:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->adUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->hasLoadedExpandUrl:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->transition:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->content:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->adUrl:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->hasLoadedExpandUrl:Z

    const/4 v2, 0x7

    :try_start_0
    new-array v2, v2, [Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v3, 0x0

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldLaunchToOverlay:Z

    const/4 v3, 0x1

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->isTransparent:Z

    const/4 v3, 0x2

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    const/4 v3, 0x3

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->useCustomClose:Z

    const/4 v3, 0x4

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->modal:Z

    const/4 v3, 0x5

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->isFromInterstitial:Z

    const/4 v3, 0x6

    aget-boolean v2, v2, v3

    iput-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldResizeOverlay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->transition:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTimeInMillis:J

    iget-wide v2, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTimeInMillis:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTimeInMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->creatorAdImplId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/OverlaySettings;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/OverlaySettings;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->content:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->adUrl:Ljava/lang/String;

    const-class v0, Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HttpMMHeaders;

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    :goto_1
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTimeInMillis:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static final createFromJson(Ljava/lang/String;)Lcom/millennialmedia/android/OverlaySettings;
    .locals 2

    new-instance v0, Lcom/millennialmedia/google/gson/Gson;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/Gson;-><init>()V

    const-class v1, Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0, p0, v1}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/OverlaySettings;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method enableHardwareAccel()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-boolean v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->enableHardwareAccel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getIsTransparent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->isTransparent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-boolean v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->isTransparent:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTransition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->transition:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->transition:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->transition:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->transition:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->transition:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "none"

    goto :goto_0
.end method

.method getTransitionDurationInMillis()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTimeInMillis:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    iget-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTimeInMillis:J

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-wide v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->transitionTimeInMillis:J

    goto :goto_0
.end method

.method getUseCustomClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->useCustomClose:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-boolean v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->useCustomClose:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasExpandUrl()Z
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasLoadedExpandUrl()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/millennialmedia/android/OverlaySettings;->hasLoadedExpandUrl:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->hasLoadedExpandUrl:Z

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method isExpanded()Z
    .locals 4

    iget-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->isFromInterstitial:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->creatorAdImplId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFromInterstitial()Z
    .locals 4

    iget-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->isFromInterstitial:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->creatorAdImplId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log()V
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/android/OverlaySettings;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    return-void
.end method

.method setIsTransparent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/android/OverlaySettings;->isTransparent:Z

    return-void
.end method

.method setTransition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/OverlaySettings;->transition:Ljava/lang/String;

    return-void
.end method

.method setTransitionDurationInMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTimeInMillis:J

    return-void
.end method

.method setUseCustomClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/android/OverlaySettings;->useCustomClose:Z

    return-void
.end method

.method setWebMMHeaders(Lcom/millennialmedia/android/HttpMMHeaders;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "height %d width %d modal %b urlToLoad %s creatorAdImplId %s shouldResizeOverlay: %d transitionTime: %d overlayTransition: %s shouldAccelerate: %b shouldMakeOverlayTransparent: %b shouldShowCustomClose: %b Orientation: %s"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/millennialmedia/android/OverlaySettings;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/millennialmedia/android/OverlaySettings;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->modal:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/millennialmedia/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/millennialmedia/android/OverlaySettings;->creatorAdImplId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldResizeOverlay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTimeInMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/millennialmedia/android/OverlaySettings;->transition:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->isTransparent:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->useCustomClose:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldLaunchToOverlay:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->isTransparent:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->useCustomClose:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->modal:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->isFromInterstitial:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget v0, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldResizeOverlay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->transition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->creatorAdImplId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/millennialmedia/android/OverlaySettings;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/OverlaySettings;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->adUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->mmHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
