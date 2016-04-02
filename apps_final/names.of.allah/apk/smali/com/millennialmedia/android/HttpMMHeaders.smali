.class Lcom/millennialmedia/android/HttpMMHeaders;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/HttpMMHeaders;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADER_MM_CUSTOM_CLOSE:Ljava/lang/String; = "X-MM-USE-CUSTOM-CLOSE"

.field private static final HEADER_MM_ENABLE_HARDWARE_ACCEL:Ljava/lang/String; = "X-MM-ENABLE-HARDWARE-ACCELERATION"

.field private static final HEADER_MM_TRANSITION:Ljava/lang/String; = "X-MM-TRANSITION"

.field private static final HEADER_MM_TRANSITION_DURATION:Ljava/lang/String; = "X-MM-TRANSITION-DURATION"

.field private static final HEADER_MM_TRANSPARENT:Ljava/lang/String; = "X-MM-TRANSPARENT"

.field static final serialVersionUID:J = 0xb41d817d0ea16L


# instance fields
.field enableHardwareAccel:Z

.field isTransparent:Z

.field transition:Ljava/lang/String;

.field transitionTimeInMillis:J

.field useCustomClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/HttpMMHeaders$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/HttpMMHeaders$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/HttpMMHeaders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->isTransparent:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->useCustomClose:Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->enableHardwareAccel:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transition:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transitionTimeInMillis:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>([Lorg/apache/http/Header;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->checkTransparent(Lorg/apache/http/Header;)V

    invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->checkTransition(Lorg/apache/http/Header;)V

    invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->checkTransitionDuration(Lorg/apache/http/Header;)V

    invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->checkUseCustomClose(Lorg/apache/http/Header;)V

    invoke-direct {p0, v2}, Lcom/millennialmedia/android/HttpMMHeaders;->checkEnableHardwareAccel(Lorg/apache/http/Header;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkEnableHardwareAccel(Lorg/apache/http/Header;)V
    .locals 2

    const-string v0, "X-MM-ENABLE-HARDWARE-ACCELERATION"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->enableHardwareAccel:Z

    :cond_0
    return-void
.end method

.method private checkTransition(Lorg/apache/http/Header;)V
    .locals 2

    const-string v0, "X-MM-TRANSITION"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transition:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private checkTransitionDuration(Lorg/apache/http/Header;)V
    .locals 2

    const-string v0, "X-MM-TRANSITION-DURATION"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transitionTimeInMillis:J

    :cond_0
    return-void
.end method

.method private checkTransparent(Lorg/apache/http/Header;)V
    .locals 2

    const-string v0, "X-MM-TRANSPARENT"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->isTransparent:Z

    :cond_0
    return-void
.end method

.method private checkUseCustomClose(Lorg/apache/http/Header;)V
    .locals 2

    const-string v0, "X-MM-USE-CUSTOM-CLOSE"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->useCustomClose:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method updateArgumentsWithSettings(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "transparent"

    iget-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->isTransparent:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transition"

    iget-object v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transition:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transitionDuration"

    iget-wide v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transitionTimeInMillis:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "useCustomClose"

    iget-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->useCustomClose:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enableHardwareAccel"

    iget-boolean v1, p0, Lcom/millennialmedia/android/HttpMMHeaders;->enableHardwareAccel:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->isTransparent:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->useCustomClose:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/millennialmedia/android/HttpMMHeaders;->enableHardwareAccel:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/millennialmedia/android/HttpMMHeaders;->transitionTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
