.class public final Lcom/google/android/gms/internal/lz;
.super Ljava/lang/Object;


# instance fields
.field private amK:I

.field private amL:I

.field private amM:I

.field private amN:I

.field private amO:I

.field private amP:I

.field private amQ:I

.field private amR:I

.field private amS:I

.field private final buffer:[B


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amP:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amR:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amS:I

    iput-object p1, p0, Lcom/google/android/gms/internal/lz;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/lz;->amK:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amL:I

    iput p2, p0, Lcom/google/android/gms/internal/lz;->amN:I

    return-void
.end method

.method public static A(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static a([BII)Lcom/google/android/gms/internal/lz;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/lz;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/lz;-><init>([BII)V

    return-object v0
.end method

.method public static ew(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private nH()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amM:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amL:I

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amP:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amP:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amM:I

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amM:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amL:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amM:I

    goto :goto_0
.end method

.method public static p([B)Lcom/google/android/gms/internal/lz;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/lz;->a([BII)Lcom/google/android/gms/internal/lz;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mf;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amQ:I

    iget v2, p0, Lcom/google/android/gms/internal/lz;->amR:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/me;->nT()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amQ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/lz;->amQ:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mf;->b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lz;->eu(I)V

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amQ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/lz;->amQ:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->ey(I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/mf;I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amQ:I

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amR:I

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/me;->nT()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/lz;->amQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amQ:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mf;->b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mi;->u(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eu(I)V

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amQ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amQ:I

    return-void
.end method

.method public final eA(I)[B
    .locals 4

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/me;->nO()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amP:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amP:I

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amN:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eB(I)V

    invoke-static {}, Lcom/google/android/gms/internal/me;->nN()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amN:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/lz;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/lz;->amN:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amN:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/lz;->amN:I

    return-object v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/me;->nN()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0
.end method

.method public final eB(I)V
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/me;->nO()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amP:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amP:I

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amN:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eB(I)V

    invoke-static {}, Lcom/google/android/gms/internal/me;->nN()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amN:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amN:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/me;->nN()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0
.end method

.method public final eu(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amO:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/me;->nR()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public final ev(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/mi;->eN(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/me;->nS()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nz()I

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nG()J

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lz;->eB(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nx()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mi;->eO(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mi;->u(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lz;->eu(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nF()I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final ex(I)I
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/me;->nO()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amP:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/me;->nN()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/lz;->amP:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/lz;->nH()V

    return v1
.end method

.method public final ey(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/lz;->amP:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/lz;->nH()V

    return-void
.end method

.method public final ez(I)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amK:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/lz;->amN:I

    iget v3, p0, Lcom/google/android/gms/internal/lz;->amK:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/lz;->amK:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amN:I

    return-void
.end method

.method public final getPosition()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amK:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final nA()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final nB()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/lz;->ew(I)I

    move-result v0

    return v0
.end method

.method public final nC()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nE()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/lz;->A(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final nD()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v1

    if-ltz v1, :cond_4

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/me;->nP()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0
.end method

.method public final nE()J
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/me;->nP()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0
.end method

.method public final nF()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final nG()J
    .locals 13

    const-wide/16 v11, 0xff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nK()B

    move-result v7

    int-to-long v8, v0

    and-long/2addr v8, v11

    int-to-long v0, v1

    and-long/2addr v0, v11

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v11

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v11

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v11

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v11

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v11

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v11

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final nI()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amP:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amP:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public final nJ()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amL:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final nK()B
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amN:I

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amL:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/me;->nN()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lz;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amN:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/lz;->amN:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final nw()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nJ()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amO:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/lz;->amO:I

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amO:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/me;->nQ()Lcom/google/android/gms/internal/me;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/lz;->amO:I

    goto :goto_0
.end method

.method public final nx()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nw()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->ev(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final ny()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nE()J

    move-result-wide v0

    return-wide v0
.end method

.method public final nz()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    return v0
.end method

.method public final o(II)[B
    .locals 4

    if-nez p2, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mi;->anh:[B

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/lz;->amK:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/lz;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final readBytes()[B
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v1

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I

    iget v2, p0, Lcom/google/android/gms/internal/lz;->amN:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    new-array v0, v1, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/lz;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/lz;->amN:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/lz;->amN:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/lz;->amN:I

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lz;->eA(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final readDouble()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nG()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nF()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v1

    iget v0, p0, Lcom/google/android/gms/internal/lz;->amL:I

    iget v2, p0, Lcom/google/android/gms/internal/lz;->amN:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/lz;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/lz;->amN:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/internal/lz;->amN:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/lz;->amN:I

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lz;->eA(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method
