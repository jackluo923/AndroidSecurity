.class Lcom/google/android/gms/tagmanager/cs$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cs$a;


# instance fields
.field final synthetic ahv:Lcom/google/android/gms/tagmanager/cs;

.field final synthetic ahw:Ljava/util/Map;

.field final synthetic ahx:Ljava/util/Map;

.field final synthetic ahy:Ljava/util/Map;

.field final synthetic ahz:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cs;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahv:Lcom/google/android/gms/tagmanager/cs;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahw:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahx:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahy:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahz:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/cq$e;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;",
            "Lcom/google/android/gms/tagmanager/cm;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahx:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->lP()Lcom/google/android/gms/tagmanager/ck;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/ck;->b(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahz:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->lQ()Lcom/google/android/gms/tagmanager/ck;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/ck;->b(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-void
.end method
