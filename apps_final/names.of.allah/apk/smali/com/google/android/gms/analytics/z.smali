.class Lcom/google/android/gms/analytics/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ad;


# instance fields
.field private final wB:J

.field private final wC:I

.field private wD:D

.field private wE:J

.field private final wF:Ljava/lang/Object;

.field private final wG:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/z;->wF:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/analytics/z;->wC:I

    iget v0, p0, Lcom/google/android/gms/analytics/z;->wC:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/z;->wD:D

    iput-wide p2, p0, Lcom/google/android/gms/analytics/z;->wB:J

    iput-object p4, p0, Lcom/google/android/gms/analytics/z;->wG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x3c

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/analytics/z;-><init>(IJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dj()Z
    .locals 12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-object v1, p0, Lcom/google/android/gms/analytics/z;->wF:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/analytics/z;->wD:D

    iget v0, p0, Lcom/google/android/gms/analytics/z;->wC:I

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/analytics/z;->wE:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/android/gms/analytics/z;->wB:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/analytics/z;->wC:I

    int-to-double v6, v0

    iget-wide v8, p0, Lcom/google/android/gms/analytics/z;->wD:D

    add-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/analytics/z;->wD:D

    :cond_0
    iput-wide v2, p0, Lcom/google/android/gms/analytics/z;->wE:J

    iget-wide v2, p0, Lcom/google/android/gms/analytics/z;->wD:D

    cmpl-double v0, v2, v10

    if-ltz v0, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/analytics/z;->wD:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Lcom/google/android/gms/analytics/z;->wD:D

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Excessive "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/z;->wG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " detected; call ignored."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
