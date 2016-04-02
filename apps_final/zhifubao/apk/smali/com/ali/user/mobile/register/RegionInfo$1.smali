.class Lcom/ali/user/mobile/register/RegionInfo$1;
.super Ljava/lang/Object;
.source "RegionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ali/user/mobile/register/RegionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ali/user/mobile/register/RegionInfo;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/ali/user/mobile/register/RegionInfo;

    invoke-direct {v0, p1}, Lcom/ali/user/mobile/register/RegionInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/register/RegionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ali/user/mobile/register/RegionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ali/user/mobile/register/RegionInfo;
    .locals 1

    .prologue
    .line 67
    new-array v0, p1, [Lcom/ali/user/mobile/register/RegionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/register/RegionInfo$1;->newArray(I)[Lcom/ali/user/mobile/register/RegionInfo;

    move-result-object v0

    return-object v0
.end method
