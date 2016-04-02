.class public final Lcom/google/b/a/a/k;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I

.field public static final e:[I

.field public static final f:[J

.field public static final g:[F

.field public static final h:[D

.field public static final i:[Z

.field public static final j:[Ljava/lang/String;

.field public static final k:[[B

.field public static final l:[B

.field public static final m:[Ljava/lang/Integer;

.field public static final n:[Ljava/lang/Long;

.field public static final o:[Ljava/lang/Float;

.field public static final p:[Ljava/lang/Double;

.field public static final q:[Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xb

    sput v0, Lcom/google/b/a/a/k;->a:I

    const/16 v0, 0xc

    sput v0, Lcom/google/b/a/a/k;->b:I

    const/16 v0, 0x10

    sput v0, Lcom/google/b/a/a/k;->c:I

    const/16 v0, 0x1a

    sput v0, Lcom/google/b/a/a/k;->d:I

    new-array v0, v1, [I

    sput-object v0, Lcom/google/b/a/a/k;->e:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/b/a/a/k;->f:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/b/a/a/k;->g:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/b/a/a/k;->h:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/b/a/a/k;->i:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/b/a/a/k;->j:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/b/a/a/k;->k:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/b/a/a/k;->l:[B

    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lcom/google/b/a/a/k;->m:[Ljava/lang/Integer;

    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lcom/google/b/a/a/k;->n:[Ljava/lang/Long;

    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lcom/google/b/a/a/k;->o:[Ljava/lang/Float;

    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lcom/google/b/a/a/k;->p:[Ljava/lang/Double;

    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lcom/google/b/a/a/k;->q:[Ljava/lang/Boolean;

    return-void
.end method

.method static a(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static a(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static final a(Lcom/google/b/a/a/a;I)I
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/b/a/a/a;->i()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/a;->b(I)Z

    :goto_0
    iget v1, p0, Lcom/google/b/a/a/a;->e:I

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    const/4 v1, -0x1

    :goto_1
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/b/a/a/a;->a()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/a;->b(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/b/a/a/a;->d:I

    iget v3, p0, Lcom/google/b/a/a/a;->e:I

    sub-int v1, v3, v1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/google/b/a/a/a;->d:I

    iget v3, p0, Lcom/google/b/a/a/a;->b:I

    sub-int/2addr v1, v3

    if-le v2, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Position "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/b/a/a/a;->d:I

    iget v3, p0, Lcom/google/b/a/a/a;->b:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Bad position "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v1, p0, Lcom/google/b/a/a/a;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/b/a/a/a;->d:I

    return v0
.end method

.method public static a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/b/a/a/j;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/j;

    iget v3, v0, Lcom/google/b/a/a/j;->a:I

    invoke-static {v3}, Lcom/google/b/a/a/b;->f(I)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v0, v0, Lcom/google/b/a/a/j;->b:[B

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static a(ILjava/lang/Object;)Lcom/google/b/a/a/j;
    .locals 6

    const/16 v5, 0x8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/b/a/a/b;->b(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/b/a/a/b;->a([BII)Lcom/google/b/a/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/b/a/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    shl-int/lit8 v1, p0, 0x3

    or-int/lit8 v1, v1, 0x2

    :goto_0
    new-instance v2, Lcom/google/b/a/a/j;

    invoke-direct {v2, v1, v0}, Lcom/google/b/a/a/j;-><init>(I[B)V

    return-object v2

    :cond_0
    :try_start_1
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/b/a/a/b;->b(I)I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/b/a/a/b;->a([BII)Lcom/google/b/a/a/b;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/b/a/a/b;->a(I)V

    shl-int/lit8 v1, p0, 0x3

    or-int/lit8 v1, v1, 0x0

    goto :goto_0

    :cond_1
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/b/a/a/b;->a(J)I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/b/a/a/b;->a([BII)Lcom/google/b/a/a/b;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/b/a/a/b;->b(J)V

    shl-int/lit8 v1, p0, 0x3

    or-int/lit8 v1, v1, 0x0

    goto :goto_0

    :cond_2
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/b/a/a/b;->a([BII)Lcom/google/b/a/a/b;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/b/a/a/b;->a(Z)V

    shl-int/lit8 v1, p0, 0x3

    or-int/lit8 v1, v1, 0x0

    goto :goto_0

    :cond_3
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_4

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/b/a/a/b;->a([BII)Lcom/google/b/a/a/b;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/b/a/a/b;->a(F)V

    shl-int/lit8 v1, p0, 0x3

    or-int/lit8 v1, v1, 0x5

    goto/16 :goto_0

    :cond_4
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_5

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/b/a/a/b;->a([BII)Lcom/google/b/a/a/b;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    long-to-int v4, v2

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Lcom/google/b/a/a/b;->c(I)V

    shr-long v4, v2, v5

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Lcom/google/b/a/a/b;->c(I)V

    const/16 v4, 0x10

    shr-long v4, v2, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Lcom/google/b/a/a/b;->c(I)V

    const/16 v4, 0x18

    shr-long v4, v2, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Lcom/google/b/a/a/b;->c(I)V

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Lcom/google/b/a/a/b;->c(I)V

    const/16 v4, 0x28

    shr-long v4, v2, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Lcom/google/b/a/a/b;->c(I)V

    const/16 v4, 0x30

    shr-long v4, v2, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Lcom/google/b/a/a/b;->c(I)V

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Lcom/google/b/a/a/b;->c(I)V

    shl-int/lit8 v1, p0, 0x3

    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    const-class v1, [B

    if-ne v0, v1, :cond_6

    check-cast p1, [B

    check-cast p1, [B

    array-length v0, p1

    invoke-static {v0}, Lcom/google/b/a/a/b;->f(I)I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/b/a/a/b;->a([BII)Lcom/google/b/a/a/b;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Lcom/google/b/a/a/b;->e(I)V

    invoke-virtual {v1, p1}, Lcom/google/b/a/a/b;->a([B)V

    shl-int/lit8 v1, p0, 0x3

    or-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    :cond_6
    const-class v1, Lcom/google/b/a/a/h;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    check-cast p1, Lcom/google/b/a/a/h;

    invoke-virtual {p1}, Lcom/google/b/a/a/h;->getSerializedSize()I

    move-result v1

    invoke-static {v1}, Lcom/google/b/a/a/b;->f(I)I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Lcom/google/b/a/a/b;->a([BII)Lcom/google/b/a/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/b/a/a/b;->e(I)V

    invoke-static {p1}, Lcom/google/b/a/a/h;->toByteArray(Lcom/google/b/a/a/h;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/b/a/a/b;->a([B)V

    shl-int/lit8 v1, p0, 0x3

    or-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled extension field type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/google/b/a/a/e;Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/a/a/e",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/b/a/a/j;",
            ">;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/j;

    iget v4, v0, Lcom/google/b/a/a/j;->a:I

    ushr-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcom/google/b/a/a/e;->a:I

    if-ne v4, v5, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/google/b/a/a/e;->b:Z

    if-eqz v0, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/j;

    iget-object v3, p0, Lcom/google/b/a/a/e;->c:Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/b/a/a/j;->b:[B

    invoke-static {v3, v0}, Lcom/google/b/a/a/k;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/b/a/a/e;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/j;

    iget-object v1, p0, Lcom/google/b/a/a/e;->c:Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/b/a/a/j;->b:[B

    invoke-static {v1, v0}, Lcom/google/b/a/a/k;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[B)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    invoke-static {p1, v1, v0}, Lcom/google/b/a/a/a;->a([BII)Lcom/google/b/a/a/a;

    move-result-object v1

    :try_start_0
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_1

    invoke-virtual {v1}, Lcom/google/b/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_2

    invoke-virtual {v1}, Lcom/google/b/a/a/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_3

    invoke-virtual {v1}, Lcom/google/b/a/a/a;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_4

    invoke-virtual {v1}, Lcom/google/b/a/a/a;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_5

    invoke-virtual {v1}, Lcom/google/b/a/a/a;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_6

    invoke-virtual {v1}, Lcom/google/b/a/a/a;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-class v0, [B

    if-ne p0, v0, :cond_8

    invoke-virtual {v1}, Lcom/google/b/a/a/a;->f()I

    move-result v2

    iget v0, v1, Lcom/google/b/a/a/a;->c:I

    iget v3, v1, Lcom/google/b/a/a/a;->d:I

    sub-int/2addr v0, v3

    if-gt v2, v0, :cond_7

    if-lez v2, :cond_7

    new-array v0, v2, [B

    iget-object v3, v1, Lcom/google/b/a/a/a;->a:[B

    iget v4, v1, Lcom/google/b/a/a/a;->d:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v1, Lcom/google/b/a/a/a;->d:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/google/b/a/a/a;->d:I

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1, v2}, Lcom/google/b/a/a/a;->c(I)[B

    move-result-object v0

    goto :goto_1

    :cond_8
    const-class v0, Lcom/google/b/a/a/h;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_9

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/h;

    invoke-virtual {v1, v0}, Lcom/google/b/a/a/a;->a(Lcom/google/b/a/a/h;)V

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error creating instance of class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error creating instance of class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled extension field type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public static a(Lcom/google/b/a/a/e;Ljava/lang/Object;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/a/a/e",
            "<TT;>;TT;",
            "Ljava/util/List",
            "<",
            "Lcom/google/b/a/a/j;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/j;

    iget v2, p0, Lcom/google/b/a/a/e;->a:I

    iget v0, v0, Lcom/google/b/a/a/j;->a:I

    ushr-int/lit8 v0, v0, 0x3

    if-ne v2, v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/b/a/a/e;->a:I

    invoke-static {v2, v1}, Lcom/google/b/a/a/k;->a(ILjava/lang/Object;)Lcom/google/b/a/a/j;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/google/b/a/a/e;->a:I

    invoke-static {v0, p1}, Lcom/google/b/a/a/k;->a(ILjava/lang/Object;)Lcom/google/b/a/a/j;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static a(Ljava/util/List;Lcom/google/b/a/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/b/a/a/j;",
            ">;",
            "Lcom/google/b/a/a/b;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/j;

    iget v2, v0, Lcom/google/b/a/a/j;->a:I

    ushr-int/lit8 v2, v2, 0x3

    iget v3, v0, Lcom/google/b/a/a/j;->a:I

    and-int/lit8 v3, v3, 0x7

    invoke-virtual {p1, v2, v3}, Lcom/google/b/a/a/b;->c(II)V

    iget-object v0, v0, Lcom/google/b/a/a/j;->b:[B

    invoke-virtual {p1, v0}, Lcom/google/b/a/a/b;->a([B)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/google/b/a/a/a;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/b/a/a/j;",
            ">;",
            "Lcom/google/b/a/a/a;",
            "I)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->i()I

    move-result v1

    invoke-virtual {p1, p2}, Lcom/google/b/a/a/a;->b(I)Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/b/a/a/a;->i()I

    move-result v0

    sub-int v3, v0, v1

    if-nez v3, :cond_0

    sget-object v0, Lcom/google/b/a/a/k;->l:[B

    :goto_0
    new-instance v1, Lcom/google/b/a/a/j;

    invoke-direct {v1, p2, v0}, Lcom/google/b/a/a/j;-><init>(I[B)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    :cond_0
    new-array v0, v3, [B

    iget v4, p1, Lcom/google/b/a/a/a;->b:I

    add-int/2addr v1, v4

    iget-object v4, p1, Lcom/google/b/a/a/a;->a:[B

    const/4 v5, 0x0

    invoke-static {v4, v1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
