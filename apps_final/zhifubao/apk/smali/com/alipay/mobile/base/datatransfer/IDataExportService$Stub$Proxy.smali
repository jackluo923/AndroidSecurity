.class Lcom/alipay/mobile/base/datatransfer/IDataExportService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDataExportService.java"

# interfaces
.implements Lcom/alipay/mobile/base/datatransfer/IDataExportService;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/base/datatransfer/IDataExportService$Stub$Proxy;->a:Landroid/os/IBinder;

    .line 64
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/base/datatransfer/IDataExportService$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public dataExport(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 79
    :try_start_0
    const-string/jumbo v0, "com.alipay.mobile.base.datatransfer.IDataExportService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/base/datatransfer/IDataExportService$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 82
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 83
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 86
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 89
    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 88
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "com.alipay.mobile.base.datatransfer.IDataExportService"

    return-object v0
.end method
