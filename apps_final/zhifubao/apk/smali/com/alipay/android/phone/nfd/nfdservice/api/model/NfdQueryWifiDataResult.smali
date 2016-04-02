.class public Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAIL:I = -0x1

.field public static final SUCCESS:I


# instance fields
.field public localReturn:Z

.field public success:Z

.field public timeCost:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult$1;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult$1;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->success:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->localReturn:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->timeCost:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->success:Z

    iput-boolean p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->localReturn:Z

    iput p3, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->timeCost:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NfdQueryWifiDataResult{success="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", localReturn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->localReturn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timeCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->timeCost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->success:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->localReturn:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->timeCost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
