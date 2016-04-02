.class Lcom/google/android/gms/internal/do$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic pE:Lcom/google/android/gms/internal/do;

.field final synthetic pF:Lcom/google/android/gms/internal/eg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/do;Lcom/google/android/gms/internal/eg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/do$2;->pE:Lcom/google/android/gms/internal/do;

    iput-object p2, p0, Lcom/google/android/gms/internal/do$2;->pF:Lcom/google/android/gms/internal/eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/do$2;->pE:Lcom/google/android/gms/internal/do;

    invoke-static {v0}, Lcom/google/android/gms/internal/do;->a(Lcom/google/android/gms/internal/do;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/do$2;->pE:Lcom/google/android/gms/internal/do;

    invoke-static {v0}, Lcom/google/android/gms/internal/do;->b(Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/dn$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/do$2;->pF:Lcom/google/android/gms/internal/eg;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/dn$a;->a(Lcom/google/android/gms/internal/eg;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
