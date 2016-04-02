.class public final Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
.super Ljava/lang/Object;


# instance fields
.field private aaH:D

.field private aaI:D

.field private aaJ:D

.field private aaK:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaH:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaI:D

    iput-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaJ:D

    iput-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaK:D

    return-void
.end method

.method private d(D)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaJ:D

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaK:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaJ:D

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaK:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaJ:D

    cmpg-double v2, v2, p1

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaK:D

    cmpg-double v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaJ:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "no included points"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaH:D

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaJ:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaI:D

    iget-wide v5, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaK:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaH:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaH:D

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaI:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaI:D

    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaJ:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaJ:D

    :cond_0
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaK:D

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->d(D)Z

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaJ:D

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->d(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaK:D

    invoke-static {v4, v5, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->e(DD)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->aaJ:D

    goto :goto_0
.end method
