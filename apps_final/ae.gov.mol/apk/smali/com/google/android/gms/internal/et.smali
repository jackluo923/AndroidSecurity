.class public final Lcom/google/android/gms/internal/et;
.super Lcom/google/android/gms/internal/j;

# interfaces
.implements Lcom/google/android/gms/plus/model/moments/Moment;


# instance fields
.field private jR:Lcom/google/android/gms/internal/er;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/l;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/j;-><init>(Lcom/google/android/gms/internal/l;I)V

    return-void
.end method

.method private cq()Lcom/google/android/gms/internal/er;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/et;->jR:Lcom/google/android/gms/internal/er;

    if-nez v0, :cond_0

    const-string v0, "momentImpl"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/et;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/internal/er;->CREATOR:Lcom/google/android/gms/internal/es;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/es;->s(Landroid/os/Parcel;)Lcom/google/android/gms/internal/er;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/et;->jR:Lcom/google/android/gms/internal/er;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/et;->jR:Lcom/google/android/gms/internal/er;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cp()Lcom/google/android/gms/internal/er;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/et;->cq()Lcom/google/android/gms/internal/er;

    move-result-object v0

    return-object v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/et;->cp()Lcom/google/android/gms/internal/er;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/et;->cq()Lcom/google/android/gms/internal/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/et;->cq()Lcom/google/android/gms/internal/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->getResult()Lcom/google/android/gms/plus/model/moments/ItemScope;

    move-result-object v0

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/et;->cq()Lcom/google/android/gms/internal/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->getStartDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/et;->cq()Lcom/google/android/gms/internal/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->getTarget()Lcom/google/android/gms/plus/model/moments/ItemScope;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/et;->cq()Lcom/google/android/gms/internal/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/et;->cq()Lcom/google/android/gms/internal/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasResult()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/et;->cq()Lcom/google/android/gms/internal/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasStartDate()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/et;->cq()Lcom/google/android/gms/internal/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->hasStartDate()Z

    move-result v0

    return v0
.end method

.method public hasTarget()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/et;->cq()Lcom/google/android/gms/internal/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->hasTarget()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/et;->cq()Lcom/google/android/gms/internal/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->hasType()Z

    move-result v0

    return v0
.end method
