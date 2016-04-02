.class public Lcom/google/android/gms/internal/dr;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/ai;->d(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->F()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->br()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->isVisible()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->getZIndex()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ai;->C(Landroid/os/Parcel;I)V

    return-void
.end method
