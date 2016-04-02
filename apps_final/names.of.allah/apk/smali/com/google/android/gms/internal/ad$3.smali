.class Lcom/google/android/gms/internal/ad$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bd;


# instance fields
.field final synthetic lK:Lcom/google/android/gms/internal/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ad$3;->lK:Lcom/google/android/gms/internal/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ey;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ey;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ad$3;->lK:Lcom/google/android/gms/internal/ad;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ad;->a(Lcom/google/android/gms/internal/ey;Ljava/util/Map;)V

    return-void
.end method
