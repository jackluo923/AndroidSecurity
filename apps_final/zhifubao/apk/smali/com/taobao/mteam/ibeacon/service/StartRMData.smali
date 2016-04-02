.class public Lcom/taobao/mteam/ibeacon/service/StartRMData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/taobao/mteam/ibeacon/service/StartRMData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/taobao/mteam/ibeacon/service/RegionData;

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taobao/mteam/ibeacon/service/n;

    invoke-direct {v0}, Lcom/taobao/mteam/ibeacon/service/n;-><init>()V

    sput-object v0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->b:J

    iput-wide p3, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->c:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/service/RegionData;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->a:Lcom/taobao/mteam/ibeacon/service/RegionData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->c:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/mteam/ibeacon/service/RegionData;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->b:J

    iput-wide p5, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->c:J

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->a:Lcom/taobao/mteam/ibeacon/service/RegionData;

    iput-object p2, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->b:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->c:J

    return-wide v0
.end method

.method public final c()Lcom/taobao/mteam/ibeacon/service/RegionData;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->a:Lcom/taobao/mteam/ibeacon/service/RegionData;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->a:Lcom/taobao/mteam/ibeacon/service/RegionData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/StartRMData;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
