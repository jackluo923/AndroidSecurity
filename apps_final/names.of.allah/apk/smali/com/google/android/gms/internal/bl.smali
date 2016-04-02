.class public final Lcom/google/android/gms/internal/bl;
.super Ljava/lang/Object;


# instance fields
.field private final kz:Lcom/google/android/gms/internal/bu;

.field private final lq:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final nc:Lcom/google/android/gms/internal/dt;

.field private final nd:Lcom/google/android/gms/internal/bn;

.field private ne:Z

.field private nf:Lcom/google/android/gms/internal/bq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/bn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bl;->lq:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bl;->ne:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/bl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/bl;->nc:Lcom/google/android/gms/internal/dt;

    iput-object p3, p0, Lcom/google/android/gms/internal/bl;->kz:Lcom/google/android/gms/internal/bu;

    iput-object p4, p0, Lcom/google/android/gms/internal/bl;->nd:Lcom/google/android/gms/internal/bn;

    return-void
.end method


# virtual methods
.method public final a(JJ)Lcom/google/android/gms/internal/br;
    .locals 16

    const-string v4, "Starting mediation."

    invoke-static {v4}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/bl;->nd:Lcom/google/android/gms/internal/bn;

    iget-object v4, v4, Lcom/google/android/gms/internal/bn;->np:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/bm;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Trying mediation network: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v9, Lcom/google/android/gms/internal/bm;->nj:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/google/android/gms/internal/bm;->nk:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/bl;->lq:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/bl;->ne:Z

    if-eqz v4, :cond_2

    new-instance v4, Lcom/google/android/gms/internal/br;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/br;-><init>(I)V

    monitor-exit v15

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/bq;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/bl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/bl;->kz:Lcom/google/android/gms/internal/bu;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/bl;->nd:Lcom/google/android/gms/internal/bn;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/bl;->nc:Lcom/google/android/gms/internal/dt;

    iget-object v10, v10, Lcom/google/android/gms/internal/dt;->pV:Lcom/google/android/gms/internal/aj;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/bl;->nc:Lcom/google/android/gms/internal/dt;

    iget-object v11, v11, Lcom/google/android/gms/internal/dt;->kR:Lcom/google/android/gms/internal/am;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/bl;->nc:Lcom/google/android/gms/internal/dt;

    iget-object v12, v12, Lcom/google/android/gms/internal/dt;->kO:Lcom/google/android/gms/internal/ew;

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/bq;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/ew;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/bl;->nf:Lcom/google/android/gms/internal/bq;

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/bl;->nf:Lcom/google/android/gms/internal/bq;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/bq;->b(JJ)Lcom/google/android/gms/internal/br;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/br;->nJ:I

    if-nez v5, :cond_3

    const-string v5, "Adapter succeeded."

    invoke-static {v5}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v15

    throw v4

    :cond_3
    iget-object v5, v4, Lcom/google/android/gms/internal/br;->nL:Lcom/google/android/gms/internal/bv;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/bl$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lcom/google/android/gms/internal/bl$1;-><init>(Lcom/google/android/gms/internal/bl;Lcom/google/android/gms/internal/br;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/google/android/gms/internal/br;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/br;-><init>(I)V

    goto :goto_1
.end method

.method public final cancel()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bl;->lq:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/bl;->ne:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bl;->nf:Lcom/google/android/gms/internal/bq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bl;->nf:Lcom/google/android/gms/internal/bq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bq;->cancel()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
