.class public Lcom/google/android/gms/internal/ei;
.super Ljava/lang/Object;


# static fields
.field private static final rM:Lcom/google/android/gms/internal/ei;

.field public static final rN:Ljava/lang/String;


# instance fields
.field private final lq:Ljava/lang/Object;

.field public final rO:Ljava/lang/String;

.field private final rP:Lcom/google/android/gms/internal/ej;

.field private rQ:Ljava/math/BigInteger;

.field private final rR:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eh;",
            ">;"
        }
    .end annotation
.end field

.field private final rS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/el;",
            ">;"
        }
    .end annotation
.end field

.field private rT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ei;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ei;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ei;->rM:Lcom/google/android/gms/internal/ei;

    iget-object v0, v0, Lcom/google/android/gms/internal/ei;->rO:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/ei;->rN:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->lq:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->rQ:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->rR:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->rS:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ei;->rT:Z

    invoke-static {}, Lcom/google/android/gms/internal/ep;->bO()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->rO:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ej;

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->rO:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ej;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->rP:Lcom/google/android/gms/internal/ej;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ek;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ei;->rM:Lcom/google/android/gms/internal/ei;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ei;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ek;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eh;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ei;->rM:Lcom/google/android/gms/internal/ei;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ei;->c(Ljava/util/HashSet;)V

    return-void
.end method

.method public static bC()Lcom/google/android/gms/internal/ei;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ei;->rM:Lcom/google/android/gms/internal/ei;

    return-object v0
.end method

.method public static bD()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ei;->rM:Lcom/google/android/gms/internal/ei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ei;->bE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bF()Lcom/google/android/gms/internal/ej;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ei;->rM:Lcom/google/android/gms/internal/ei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ei;->bG()Lcom/google/android/gms/internal/ej;

    move-result-object v0

    return-object v0
.end method

.method public static bH()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ei;->rM:Lcom/google/android/gms/internal/ei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ei;->bI()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/eh;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->rR:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/el;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->rS:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public b(Landroid/content/Context;Lcom/google/android/gms/internal/ek;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/ei;->lq:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app"

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->rP:Lcom/google/android/gms/internal/ej;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/internal/ej;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->rS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->rS:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/el;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/el;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "slots"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->rR:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/eh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eh;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "ads"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->rR:Ljava/util/HashSet;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ek;->a(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->rR:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public bE()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->rQ:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ei;->rQ:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ei;->rQ:Ljava/math/BigInteger;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bG()Lcom/google/android/gms/internal/ej;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->rP:Lcom/google/android/gms/internal/ej;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bI()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ei;->rT:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ei;->rT:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public c(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eh;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->rR:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
