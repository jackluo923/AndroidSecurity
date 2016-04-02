.class Lcom/google/android/gms/tagmanager/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cf;


# instance fields
.field private final aec:Lcom/google/android/gms/internal/ik;

.field private final agc:J

.field private final wB:J

.field private final wC:I

.field private wD:D

.field private wE:J

.field private final wF:Ljava/lang/Object;

.field private final wG:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/ik;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/bf;->wF:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/tagmanager/bf;->wC:I

    iget v0, p0, Lcom/google/android/gms/tagmanager/bf;->wC:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/bf;->wD:D

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/bf;->wB:J

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/bf;->agc:J

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/bf;->wG:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/bf;->aec:Lcom/google/android/gms/internal/ik;

    return-void
.end method


# virtual methods
.method public dj()Z
    .locals 12

    const/4 v0, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/bf;->wF:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/bf;->aec:Lcom/google/android/gms/internal/ik;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ik;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/bf;->wE:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/bf;->agc:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Excessive "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/bf;->wG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detected; call ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/bf;->wD:D

    iget v6, p0, Lcom/google/android/gms/tagmanager/bf;->wC:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/bf;->wE:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/bf;->wB:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1

    iget v6, p0, Lcom/google/android/gms/tagmanager/bf;->wC:I

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/google/android/gms/tagmanager/bf;->wD:D

    add-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/tagmanager/bf;->wD:D

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/bf;->wE:J

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/bf;->wD:D

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/bf;->wD:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/bf;->wD:D

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Excessive "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/bf;->wG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detected; call ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
