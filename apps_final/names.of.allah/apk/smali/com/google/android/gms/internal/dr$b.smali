.class public final Lcom/google/android/gms/internal/dr$b;
.super Lcom/google/android/gms/internal/dr;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# instance fields
.field private final lq:Ljava/lang/Object;

.field private final pR:Lcom/google/android/gms/internal/dq$a;

.field private final pS:Lcom/google/android/gms/internal/ds;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/dr;-><init>(Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dr$b;->lq:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/dr$b;->pR:Lcom/google/android/gms/internal/dq$a;

    new-instance v0, Lcom/google/android/gms/internal/ds;

    iget-object v1, p2, Lcom/google/android/gms/internal/dt;->kO:Lcom/google/android/gms/internal/ew;

    iget v1, v1, Lcom/google/android/gms/internal/ew;->sv:I

    invoke-direct {v0, p1, p0, p0, v1}, Lcom/google/android/gms/internal/ds;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pS:Lcom/google/android/gms/internal/ds;

    iget-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pS:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->connect()V

    return-void
.end method


# virtual methods
.method public final bn()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/dr$b;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pS:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pS:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pS:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->disconnect()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final bo()Lcom/google/android/gms/internal/dx;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/dr$b;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pS:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->br()Lcom/google/android/gms/internal/dx;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dr$b;->start()V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dr$b;->pR:Lcom/google/android/gms/internal/dq$a;

    new-instance v1, Lcom/google/android/gms/internal/dv;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dv;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/dq$a;->a(Lcom/google/android/gms/internal/dv;)V

    return-void
.end method

.method public final onDisconnected()V
    .locals 1

    const-string v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    return-void
.end method
