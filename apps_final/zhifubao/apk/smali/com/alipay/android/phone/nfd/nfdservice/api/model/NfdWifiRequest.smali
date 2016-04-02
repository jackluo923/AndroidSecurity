.class public Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mForgetConfigured:Z

.field public mIdentity:Ljava/lang/String;

.field public mMac:Ljava/lang/String;

.field public mNetworkId:I

.field public mPassword:Ljava/lang/String;

.field public mSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest$1;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest$1;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mForgetConfigured:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mForgetConfigured:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mMac:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mNetworkId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mIdentity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mSsid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mForgetConfigured:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mIdentity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mForgetConfigured:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
