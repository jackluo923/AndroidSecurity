.class Lcom/google/android/gms/tagmanager/cs$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cs$a;


# instance fields
.field final synthetic ahv:Lcom/google/android/gms/tagmanager/cs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cs$4;->ahv:Lcom/google/android/gms/tagmanager/cs;

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

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->mt()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->mu()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->lR()Lcom/google/android/gms/tagmanager/ck;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->mt()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->my()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ck;->b(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->lS()Lcom/google/android/gms/tagmanager/ck;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->mu()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->mz()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ck;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
