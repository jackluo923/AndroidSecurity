.class public Lcom/google/android/gms/internal/cq;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/ai;->d(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->F()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->aX()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->aY()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getMapType()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->getCamera()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->aZ()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->ba()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->bb()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->bc()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->bd()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMapOptions;->be()B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IB)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ai;->C(Landroid/os/Parcel;I)V

    return-void
.end method
