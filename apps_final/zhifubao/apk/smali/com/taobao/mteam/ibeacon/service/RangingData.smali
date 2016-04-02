.class public Lcom/taobao/mteam/ibeacon/service/RangingData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/taobao/mteam/ibeacon/service/RangingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/taobao/mteam/ibeacon/service/IBeaconData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/taobao/mteam/ibeacon/service/RegionData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taobao/mteam/ibeacon/service/l;

    invoke-direct {v0}, Lcom/taobao/mteam/ibeacon/service/l;-><init>()V

    sput-object v0, Lcom/taobao/mteam/ibeacon/service/RangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RangingData"

    const-string/jumbo v1, "parsing RangingData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangingData;->a:Ljava/util/Collection;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-lt v1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/service/RegionData;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangingData;->b:Lcom/taobao/mteam/ibeacon/service/RegionData;

    return-void

    :cond_1
    iget-object v3, p0, Lcom/taobao/mteam/ibeacon/service/RangingData;->a:Ljava/util/Collection;

    aget-object v0, v2, v1

    check-cast v0, Lcom/taobao/mteam/ibeacon/service/IBeaconData;

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taobao/mteam/ibeacon/service/RangingData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lcom/taobao/mteam/ibeacon/Region;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/taobao/mteam/ibeacon/IBeacon;",
            ">;",
            "Lcom/taobao/mteam/ibeacon/Region;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/taobao/mteam/ibeacon/service/IBeaconData;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangingData;->a:Ljava/util/Collection;

    new-instance v0, Lcom/taobao/mteam/ibeacon/service/RegionData;

    invoke-direct {v0, p2}, Lcom/taobao/mteam/ibeacon/service/RegionData;-><init>(Lcom/taobao/mteam/ibeacon/Region;)V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangingData;->b:Lcom/taobao/mteam/ibeacon/service/RegionData;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/taobao/mteam/ibeacon/service/IBeaconData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangingData;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public final b()Lcom/taobao/mteam/ibeacon/service/RegionData;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangingData;->b:Lcom/taobao/mteam/ibeacon/service/RegionData;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RangingData"

    const-string/jumbo v1, "writing RangingData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangingData;->a:Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Parcelable;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangingData;->b:Lcom/taobao/mteam/ibeacon/service/RegionData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "RangingData"

    const-string/jumbo v1, "done writing RangingData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
