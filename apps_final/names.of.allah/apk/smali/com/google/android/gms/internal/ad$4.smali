.class Lcom/google/android/gms/internal/ad$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bd;


# instance fields
.field final synthetic lK:Lcom/google/android/gms/internal/ad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ad$4;->lK:Lcom/google/android/gms/internal/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ey;Ljava/util/Map;)V
    .locals 2
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

    const-string v0, "pingType"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unloadPing"

    const-string v1, "pingType"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ad$4;->lK:Lcom/google/android/gms/internal/ad;

    iget-object v1, p0, Lcom/google/android/gms/internal/ad$4;->lK:Lcom/google/android/gms/internal/ad;

    invoke-static {v1}, Lcom/google/android/gms/internal/ad;->b(Lcom/google/android/gms/internal/ad;)Lcom/google/android/gms/internal/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ad;->c(Lcom/google/android/gms/internal/af;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unregistered GMSG handlers for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ad$4;->lK:Lcom/google/android/gms/internal/ad;

    invoke-static {v1}, Lcom/google/android/gms/internal/ad;->c(Lcom/google/android/gms/internal/ad;)Lcom/google/android/gms/internal/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ab;->ap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
