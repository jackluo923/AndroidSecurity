.class Lcom/google/android/gms/maps/GoogleMap$4;
.super Lcom/google/android/gms/maps/internal/j$a;


# instance fields
.field final synthetic YZ:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic Zc:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$4;->YZ:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$4;->Zc:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$4;->Zc:Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;->onMapLoaded()V

    return-void
.end method
