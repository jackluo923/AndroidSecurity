.class public abstract Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->notifyCertStatusChanged(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->getReachableNfdWifiList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->getReachableNfdWifiInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->connectTargetAP(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->disconnect()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->registerNfdEventListener(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->unregisterNfdEventListener(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v2, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->recordInStore(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->getNearbyWifiServiceList(ZLcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->queryWifiDataSync(Z)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_7

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->deleteLocalNfdWifiMac(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->forgetNetwork(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    move v2, v1

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->writeMonitorLog(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->sendMonitorLog()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->writeAndSendMonitorLog(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v2, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->getLightBizNfdService()Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    move v2, v1

    :cond_a
    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->queryShopIcon(Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdServiceFacade"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;->enableWifiReceiver()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
