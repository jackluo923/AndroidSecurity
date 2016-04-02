.class public final Lcom/google/android/gms/internal/jr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/js;

.field static final Wj:J


# instance fields
.field private final Vi:J

.field private final Wk:Lcom/google/android/gms/internal/jn;

.field private final mPriority:I

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/js;

    invoke-direct {v0}, Lcom/google/android/gms/internal/js;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jr;->CREATOR:Lcom/google/android/gms/internal/js;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/jr;->Wj:J

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/jn;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jr;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jr;->Wk:Lcom/google/android/gms/internal/jn;

    iput-wide p3, p0, Lcom/google/android/gms/internal/jr;->Vi:J

    iput p5, p0, Lcom/google/android/gms/internal/jr;->mPriority:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/jr;->CREATOR:Lcom/google/android/gms/internal/js;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/jr;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/jr;

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->Wk:Lcom/google/android/gms/internal/jn;

    iget-object v3, p1, Lcom/google/android/gms/internal/jr;->Wk:Lcom/google/android/gms/internal/jn;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/jr;->Vi:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/jr;->Vi:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/jr;->mPriority:I

    iget v3, p1, Lcom/google/android/gms/internal/jr;->mPriority:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/jr;->Vi:J

    return-wide v0
.end method

.method public final getPriority()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jr;->mPriority:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->Wk:Lcom/google/android/gms/internal/jn;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/jr;->Vi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/jr;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final ja()Lcom/google/android/gms/internal/jn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jr;->Wk:Lcom/google/android/gms/internal/jn;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/internal/hl;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string v1, "filter"

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->Wk:Lcom/google/android/gms/internal/jn;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string v1, "interval"

    iget-wide v2, p0, Lcom/google/android/gms/internal/jr;->Vi:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string v1, "priority"

    iget v2, p0, Lcom/google/android/gms/internal/jr;->mPriority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/jr;->CREATOR:Lcom/google/android/gms/internal/js;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/js;->a(Lcom/google/android/gms/internal/jr;Landroid/os/Parcel;I)V

    return-void
.end method
