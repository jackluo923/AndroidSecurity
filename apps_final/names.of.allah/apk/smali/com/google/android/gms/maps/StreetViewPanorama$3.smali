.class Lcom/google/android/gms/maps/StreetViewPanorama$3;
.super Lcom/google/android/gms/maps/internal/r$a;


# instance fields
.field final synthetic ZM:Lcom/google/android/gms/maps/StreetViewPanorama;

.field final synthetic ZO:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanorama$3;->ZM:Lcom/google/android/gms/maps/StreetViewPanorama;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanorama$3;->ZO:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreetViewPanoramaClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama$3;->ZO:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener;->onStreetViewPanoramaClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V

    return-void
.end method
