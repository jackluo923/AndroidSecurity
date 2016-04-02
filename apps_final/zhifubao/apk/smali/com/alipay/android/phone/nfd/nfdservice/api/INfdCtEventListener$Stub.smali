.class public abstract Lcom/alipay/android/phone/nfd/nfdservice/api/INfdCtEventListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/api/INfdCtEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdCtEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdCtEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/android/phone/nfd/nfdservice/api/INfdCtEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "com.alipay.android.phone.nfd.nfdservice.api.INfdCtEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdCtEventListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdCtEventListener;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdCtEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdCtEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string/jumbo v1, "com.alipay.android.phone.nfd.nfdservice.api.INfdCtEventListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "com.alipay.android.phone.nfd.nfdservice.api.INfdCtEventListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdCtEventListener$Stub;->onLoginSucc()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "com.alipay.android.phone.nfd.nfdservice.api.INfdCtEventListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdCtEventListener$Stub;->onLoginFail(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "com.alipay.android.phone.nfd.nfdservice.api.INfdCtEventListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdCtEventListener$Stub;->onLogoutSucc()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "com.alipay.android.phone.nfd.nfdservice.api.INfdCtEventListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdCtEventListener$Stub;->onLogoutFail(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "com.alipay.android.phone.nfd.nfdservice.api.INfdCtEventListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdCtEventListener$Stub;->onConnectionLost()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
