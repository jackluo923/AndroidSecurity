.class public final Lcom/google/android/gms/internal/mi;
.super Ljava/lang/Object;


# static fields
.field public static final ana:[I

.field public static final anb:[J

.field public static final anc:[F

.field public static final and:[D

.field public static final ane:[Z

.field public static final anf:[Ljava/lang/String;

.field public static final ang:[[B

.field public static final anh:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/mi;->ana:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/mi;->anb:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/mi;->anc:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/mi;->and:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/mi;->ane:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/mi;->anf:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/mi;->ang:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/mi;->anh:[B

    return-void
.end method

.method public static final b(Lcom/google/android/gms/internal/lz;I)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lz;->ev(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nw()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lz;->ev(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lz;->ez(I)V

    return v0
.end method

.method static eN(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static eO(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static u(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
