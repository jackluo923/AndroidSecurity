.class final Lcom/millennialmedia/android/VideoAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/millennialmedia/android/VideoAd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/android/VideoAd;
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/VideoAd;

    invoke-direct {v0, p1}, Lcom/millennialmedia/android/VideoAd;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd$3;->createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/millennialmedia/android/VideoAd;
    .locals 1

    new-array v0, p1, [Lcom/millennialmedia/android/VideoAd;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd$3;->newArray(I)[Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    return-object v0
.end method
