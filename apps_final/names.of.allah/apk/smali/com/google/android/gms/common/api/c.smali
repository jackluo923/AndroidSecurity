.class final Lcom/google/android/gms/common/api/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient;


# instance fields
.field private final DC:Landroid/os/Looper;

.field private final DN:Ljava/util/concurrent/locks/Lock;

.field private final DO:Ljava/util/concurrent/locks/Condition;

.field private final DP:Lcom/google/android/gms/internal/hd;

.field private final DQ:Landroid/support/v4/app/Fragment;

.field final DR:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/c$c",
            "<*>;>;"
        }
    .end annotation
.end field

.field private DS:Lcom/google/android/gms/common/ConnectionResult;

.field private DT:I

.field private DU:I

.field private DV:I

.field private DW:Z

.field private DX:I

.field private DY:J

.field final DZ:Landroid/os/Handler;

.field private final Dv:Lcom/google/android/gms/common/api/c$a;

.field private final Ea:Landroid/os/Bundle;

.field private final Eb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$c",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">;"
        }
    .end annotation
.end field

.field private final Ec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ed:Z

.field final Ee:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/c$c",
            "<*>;>;"
        }
    .end annotation
.end field

.field final Ef:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private final Eg:Lcom/google/android/gms/internal/hd$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Ljava/util/Map;Landroid/support/v4/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/gz;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DO:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DU:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DV:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DW:Z

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/api/c;->DY:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ea:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Eb:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/api/c$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/c$1;-><init>(Lcom/google/android/gms/common/api/c;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Dv:Lcom/google/android/gms/common/api/c$a;

    new-instance v0, Lcom/google/android/gms/common/api/c$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/c$2;-><init>(Lcom/google/android/gms/common/api/c;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ef:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v0, Lcom/google/android/gms/common/api/c$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/c$3;-><init>(Lcom/google/android/gms/common/api/c;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Eg:Lcom/google/android/gms/internal/hd$b;

    new-instance v0, Lcom/google/android/gms/internal/hd;

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->Eg:Lcom/google/android/gms/internal/hd$b;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/hd;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/hd$b;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    iput-object p5, p0, Lcom/google/android/gms/common/api/c;->DQ:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/google/android/gms/common/api/c;->DC:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/common/api/c$b;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/api/c$b;-><init>(Lcom/google/android/gms/common/api/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DZ:Landroid/os/Handler;

    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v2, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/hd;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_0

    :cond_0
    invoke-interface/range {p7 .. p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v2, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/hd;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    goto :goto_1

    :cond_1
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->eu()Lcom/google/android/gms/common/api/Api$b;

    move-result-object v0

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v8, p0, Lcom/google/android/gms/common/api/c;->Eb:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->ew()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v9

    iget-object v5, p0, Lcom/google/android/gms/common/api/c;->Ef:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v6, Lcom/google/android/gms/common/api/c$4;

    invoke-direct {v6, p0, v0}, Lcom/google/android/gms/common/api/c$4;-><init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/Api$b;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/Api$b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/gz;->fg()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ec:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method private static a(Lcom/google/android/gms/common/api/Api$b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$b",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/gz;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ")TC;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/api/c$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">(",
            "Lcom/google/android/gms/common/api/c$c",
            "<TA;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "GoogleApiClient is not connected yet."

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/common/api/c$c;->ew()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_1
    const-string v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Dv:Lcom/google/android/gms/common/api/c$a;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/c$c;->a(Lcom/google/android/gms/common/api/c$a;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/c$c;->m(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/c$c;->ew()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/c$c;->b(Lcom/google/android/gms/common/api/Api$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/c;->aa(I)V

    return-void
.end method

.method private aa(I)V
    .locals 5

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DU:I

    if-eq v0, v1, :cond_a

    if-ne p1, v4, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c$c;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/c$c;->eB()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/c$c;->cancel()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c$c;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/c$c;->cancel()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DW:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-void

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v1

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/common/api/c;->DU:I

    if-eqz v0, :cond_6

    if-ne p1, v4, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DO:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Eb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->disconnect()V

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DU:I

    if-eqz v1, :cond_a

    if-eq p1, v4, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hd;->ao(I)V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/c;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/c;->DU:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/c;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/c;->DV:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/c;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/c;->DT:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/c;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ea:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eF()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v0

    return v0
.end method

.method private eF()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    iget v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DW:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/c;->aa(I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/api/c;->DV:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DV:I

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DZ:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DZ:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/c;->DY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->a(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lcom/google/android/gms/common/api/c;->DU:I

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eI()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DO:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eG()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DW:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DW:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/c;->aa(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ea:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/hd;->c(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ea:Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private eG()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c$c;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c$c;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "GoogleApiClientImpl"

    const-string v2, "Service died while flushing queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private eH()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DV:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private eI()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/common/api/c;->DV:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DZ:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/c;->DY:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/c;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/c;->DT:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$c",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Eb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "T:",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/c;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "T:",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eG()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c$c;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/c;->aa(I)V

    goto :goto_1
.end method

.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->connect()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DO:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->CP:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_3
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->connect()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/c;->DO:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->CP:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_4
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final connect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DW:Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DU:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ea:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Eb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Eb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eI()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/c;->aa(I)V

    return-void
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DC:Landroid/os/Looper;

    return-object v0
.end method

.method public final isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DU:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final isConnecting()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/api/c;->DU:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hd;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public final isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hd;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public final reconnect()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->connect()V

    return-void
.end method

.method public final registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hd;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public final registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hd;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public final stopAutoManage()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->disconnect()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hd;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public final unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hd;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method
