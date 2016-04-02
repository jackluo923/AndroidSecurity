.class Lcom/google/android/gms/internal/ea$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bd;


# instance fields
.field final synthetic qC:Lcom/google/android/gms/internal/ea;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ea;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ea$1;->qC:Lcom/google/android/gms/internal/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ey;Ljava/util/Map;)V
    .locals 4
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ea$1;->qC:Lcom/google/android/gms/internal/ea;

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Lcom/google/android/gms/internal/ea;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ec;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ec;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->bt()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ea$1;->qC:Lcom/google/android/gms/internal/ea;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ea;->a(Lcom/google/android/gms/internal/ea;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ea$1;->qC:Lcom/google/android/gms/internal/ea;

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Lcom/google/android/gms/internal/ea;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
