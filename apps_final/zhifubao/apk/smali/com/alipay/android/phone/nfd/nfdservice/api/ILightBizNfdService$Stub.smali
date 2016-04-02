.class public abstract Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.ILightBizNfdService"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.ILightBizNfdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.ILightBizNfdService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.ILightBizNfdService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService$Stub;->notifyCertStatusChanged(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.ILightBizNfdService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService$Stub;->getReachableNfdWifiList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.ILightBizNfdService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService$Stub;->connectTargetAP(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.ILightBizNfdService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService$Stub;->disconnect()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "com.alipay.android.phone.nfd.nfdservice.api.ILightBizNfdService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService$Stub;->registerNfdEventListener(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "com.alipay.android.phone.nfd.nfdservice.api.ILightBizNfdService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService$Stub;->unregisterNfdEventListener(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
