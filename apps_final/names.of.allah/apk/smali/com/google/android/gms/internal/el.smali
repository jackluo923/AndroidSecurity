.class public Lcom/google/android/gms/internal/el;
.super Ljava/lang/Object;


# instance fields
.field private final lq:Ljava/lang/Object;

.field private final rA:Lcom/google/android/gms/internal/ei;

.field private final rD:Ljava/lang/String;

.field private rZ:I

.field private sa:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ei;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/el;->lq:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/el;->rA:Lcom/google/android/gms/internal/ei;

    iput-object p2, p0, Lcom/google/android/gms/internal/el;->rD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ei;->bC()Lcom/google/android/gms/internal/ei;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/el;-><init>(Lcom/google/android/gms/internal/ei;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/el;->rZ:I

    iput p2, p0, Lcom/google/android/gms/internal/el;->sa:I

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->rA:Lcom/google/android/gms/internal/ei;

    iget-object v2, p0, Lcom/google/android/gms/internal/el;->rD:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/gms/internal/ei;->a(Ljava/lang/String;Lcom/google/android/gms/internal/el;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pmnli"

    iget v3, p0, Lcom/google/android/gms/internal/el;->rZ:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pmnll"

    iget v3, p0, Lcom/google/android/gms/internal/el;->sa:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
