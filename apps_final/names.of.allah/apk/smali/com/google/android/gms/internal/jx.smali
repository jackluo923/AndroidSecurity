.class public final Lcom/google/android/gms/internal/jx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/jy;

.field public static final YM:Lcom/google/android/gms/internal/jx;

.field public static final YN:Lcom/google/android/gms/internal/jx;

.field public static final YO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/jx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final YP:I

.field final qU:Ljava/lang/String;

.field final xJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "test_type"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/jx;->w(Ljava/lang/String;I)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/jx;->YM:Lcom/google/android/gms/internal/jx;

    const-string v0, "saved_offers"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jx;->w(Ljava/lang/String;I)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/jx;->YN:Lcom/google/android/gms/internal/jx;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/jx;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/jx;->YM:Lcom/google/android/gms/internal/jx;

    aput-object v3, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/jx;->YN:Lcom/google/android/gms/internal/jx;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/jx;->YO:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/jy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jx;->CREATOR:Lcom/google/android/gms/internal/jy;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/hn;->aE(Ljava/lang/String;)Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/jx;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jx;->qU:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/jx;->YP:I

    return-void
.end method

.method private static w(Ljava/lang/String;I)Lcom/google/android/gms/internal/jx;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/jx;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/jx;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/jx;->CREATOR:Lcom/google/android/gms/internal/jy;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/jx;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/jx;

    iget-object v2, p0, Lcom/google/android/gms/internal/jx;->qU:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/jx;->qU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/jx;->YP:I

    iget v3, p1, Lcom/google/android/gms/internal/jx;->YP:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->qU:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->qU:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/jx;->CREATOR:Lcom/google/android/gms/internal/jy;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/jx;Landroid/os/Parcel;I)V

    return-void
.end method
