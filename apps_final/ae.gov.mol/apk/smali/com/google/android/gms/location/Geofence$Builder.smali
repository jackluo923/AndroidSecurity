.class public final Lcom/google/android/gms/location/Geofence$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/Geofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private fo:Ljava/lang/String;

.field private fp:I

.field private fq:J

.field private fr:S

.field private fs:D

.field private ft:D

.field private fu:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->fo:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->fp:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->fq:J

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->fr:S

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/Geofence;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->fo:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->fp:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transitions types not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->fq:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expiration not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-short v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->fr:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Geofence region not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/cn;

    iget-object v1, p0, Lcom/google/android/gms/location/Geofence$Builder;->fo:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/location/Geofence$Builder;->fp:I

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/location/Geofence$Builder;->fs:D

    iget-wide v6, p0, Lcom/google/android/gms/location/Geofence$Builder;->ft:D

    iget v8, p0, Lcom/google/android/gms/location/Geofence$Builder;->fu:F

    iget-wide v9, p0, Lcom/google/android/gms/location/Geofence$Builder;->fq:J

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/cn;-><init>(Ljava/lang/String;ISDDFJ)V

    return-object v0
.end method

.method public setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F

    .prologue
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->fr:S

    iput-wide p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->fs:D

    iput-wide p3, p0, Lcom/google/android/gms/location/Geofence$Builder;->ft:D

    iput p5, p0, Lcom/google/android/gms/location/Geofence$Builder;->fu:F

    return-object p0
.end method

.method public setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 2
    .param p1, "durationMillis"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->fq:J

    :goto_0
    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->fq:J

    goto :goto_0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->fo:Ljava/lang/String;

    return-object p0
.end method

.method public setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 0
    .param p1, "transitionTypes"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->fp:I

    return-object p0
.end method