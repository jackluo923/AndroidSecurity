.class public Lcom/google/android/gms/internal/dm;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/maps/model/LatLng;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/ai;->d(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/LatLng;->F()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ai;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;ID)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ai;->C(Landroid/os/Parcel;I)V

    return-void
.end method
