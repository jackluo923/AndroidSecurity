.class public final Lcom/google/b/a/a/j;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/b/a/a/j;->a:I

    iput-object p2, p0, Lcom/google/b/a/a/j;->b:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/b/a/a/j;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/b/a/a/j;

    iget v2, p0, Lcom/google/b/a/a/j;->a:I

    iget v3, p1, Lcom/google/b/a/a/j;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/b/a/a/j;->b:[B

    iget-object v3, p1, Lcom/google/b/a/a/j;->b:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/b/a/a/j;->a:I

    add-int/lit16 v1, v0, 0x20f

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/a/j;->b:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/b/a/a/j;->b:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
