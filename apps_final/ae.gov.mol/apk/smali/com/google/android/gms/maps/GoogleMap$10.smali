.class Lcom/google/android/gms/maps/GoogleMap$10;
.super Lcom/google/android/gms/internal/cu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fT:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic ge:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$10;->fT:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$10;->ge:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cu$a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/google/android/gms/internal/dw;)Lcom/google/android/gms/internal/bi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$10;->ge:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/dw;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;->getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/bj;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/bi;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/google/android/gms/internal/dw;)Lcom/google/android/gms/internal/bi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$10;->ge:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/dw;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;->getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/bj;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/bi;

    move-result-object v0

    return-object v0
.end method
