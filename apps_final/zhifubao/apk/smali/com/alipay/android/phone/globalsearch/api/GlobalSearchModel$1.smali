.class Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel$1;
.super Ljava/lang/Object;
.source "GlobalSearchModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;
    .locals 1

    .prologue
    .line 210
    new-array v0, p1, [Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel$1;->newArray(I)[Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    return-object v0
.end method
