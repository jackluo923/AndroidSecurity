.class final Lorg/rome/android/ipp/binder/aidl/a;
.super Ljava/lang/Object;
.source "IppInterface.java"

# interfaces
.implements Lorg/rome/android/ipp/binder/aidl/IppInterface;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/rome/android/ipp/binder/aidl/a;->a:Landroid/os/IBinder;

    .line 63
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 77
    :try_start_0
    const-string/jumbo v0, "org.rome.android.ipp.binder.aidl.IppInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lorg/rome/android/ipp/binder/aidl/a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 80
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 86
    return-void

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 85
    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/rome/android/ipp/binder/aidl/a;->a:Landroid/os/IBinder;

    return-object v0
.end method
