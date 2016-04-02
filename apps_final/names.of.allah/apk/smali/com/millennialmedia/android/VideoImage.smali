.class Lcom/millennialmedia/android/VideoImage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/VideoImage;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0xb37c805a5f2be9dL


# instance fields
.field anchor:I

.field anchor2:I

.field appearanceDelay:J

.field button:Landroid/widget/ImageButton;

.field contentLength:J

.field eventLoggingUrls:[Ljava/lang/String;

.field fadeDuration:J

.field fromAlpha:F

.field imageUrl:Ljava/lang/String;

.field inactivityTimeout:J

.field isLeaveBehind:Z

.field layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field linkUrl:Ljava/lang/String;

.field overlayOrientation:Ljava/lang/String;

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field position:I

.field position2:I

.field toAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/VideoImage$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoImage$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/VideoImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoImage;->deserializeFromObj(Lorg/json/JSONObject;)V

    return-void
.end method

.method private deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const-wide v6, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "image"

    invoke-virtual {p1, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    const-string v1, "contentLength"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    :cond_2
    const-string v0, "url"

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    const-string v0, "overlayOrientation"

    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    const-string v0, "android-layout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    const-string v0, "android-layoutAnchor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    const-string v0, "android-layout2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    const-string v0, "android-layoutAnchor2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    const-string v0, "android-paddingTop"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    const-string v0, "android-paddingLeft"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    const-string v0, "android-paddingRight"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    const-string v0, "android-paddingBottom"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    const-string v0, "appearanceDelay"

    invoke-virtual {p1, v0, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    const-string v0, "inactivityTimeout"

    invoke-virtual {p1, v0, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "start"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    const-string v1, "end"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    const-string v1, "fadeDuration"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    :cond_3
    const-string v0, "is_leavebehind"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getImageName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\.[^\\.]*$"

    const-string v2, ".dat"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v1, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
