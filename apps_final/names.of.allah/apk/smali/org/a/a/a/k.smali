.class public final Lorg/a/a/a/k;
.super Lorg/a/a/a/b;


# instance fields
.field private a:Lorg/a/a/a/c;

.field private b:[Lorg/a/a/a/b;

.field private c:[Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x7

    invoke-direct {p0}, Lorg/a/a/a/b;-><init>()V

    new-array v0, v1, [Lorg/a/a/a/b;

    iput-object v0, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/a/a/a/k;->c:[Z

    iget-object v0, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    const/4 v1, 0x0

    new-instance v2, Lorg/a/a/a/o;

    invoke-direct {v2}, Lorg/a/a/a/o;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    const/4 v1, 0x1

    new-instance v2, Lorg/a/a/a/m;

    invoke-direct {v2}, Lorg/a/a/a/m;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    const/4 v1, 0x2

    new-instance v2, Lorg/a/a/a/d;

    invoke-direct {v2}, Lorg/a/a/a/d;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    const/4 v1, 0x3

    new-instance v2, Lorg/a/a/a/h;

    invoke-direct {v2}, Lorg/a/a/a/h;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    const/4 v1, 0x4

    new-instance v2, Lorg/a/a/a/e;

    invoke-direct {v2}, Lorg/a/a/a/e;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    const/4 v1, 0x5

    new-instance v2, Lorg/a/a/a/a;

    invoke-direct {v2}, Lorg/a/a/a/a;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    const/4 v1, 0x6

    new-instance v2, Lorg/a/a/a/f;

    invoke-direct {v2}, Lorg/a/a/a/f;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lorg/a/a/a/k;->d()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lorg/a/a/a/k;->d:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/a/a/a/k;->b()F

    iget v0, p0, Lorg/a/a/a/k;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/k;->d:I

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    iget v1, p0, Lorg/a/a/a/k;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([BI)Lorg/a/a/a/c;
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v5, p2, [B

    add-int/lit8 v6, p2, 0x0

    move v1, v3

    move v0, v2

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-byte v7, p1, v4

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_0

    add-int/lit8 v0, v1, 0x1

    aget-byte v7, p1, v4

    aput-byte v7, v5, v1

    move v1, v2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_5

    add-int/lit8 v0, v1, 0x1

    aget-byte v7, p1, v4

    aput-byte v7, v5, v1

    move v1, v3

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_2
    iget-object v2, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/a/a/a/k;->c:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5, v1}, Lorg/a/a/a/b;->a([BI)Lorg/a/a/a/c;

    move-result-object v2

    sget-object v4, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    if-ne v2, v4, :cond_3

    iput v0, p0, Lorg/a/a/a/k;->d:I

    sget-object v0, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/k;->a:Lorg/a/a/a/c;

    :cond_2
    :goto_3
    iget-object v0, p0, Lorg/a/a/a/k;->a:Lorg/a/a/a/c;

    return-object v0

    :cond_3
    sget-object v4, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lorg/a/a/a/k;->c:[Z

    aput-boolean v3, v2, v0

    iget v2, p0, Lorg/a/a/a/k;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/a/a/a/k;->e:I

    iget v2, p0, Lorg/a/a/a/k;->e:I

    if-gtz v2, :cond_4

    sget-object v0, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/k;->a:Lorg/a/a/a/c;

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_1
.end method

.method public final b()F
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/a/a/a/k;->a:Lorg/a/a/a/c;

    sget-object v2, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    if-ne v0, v2, :cond_1

    const v1, 0x3f7d70a4    # 0.99f

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/a/a/a/k;->a:Lorg/a/a/a/c;

    sget-object v2, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    if-ne v0, v2, :cond_2

    const v1, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/a/a/a/k;->c:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/a/a/a/b;->b()F

    move-result v2

    cmpg-float v3, v1, v2

    if-gez v3, :cond_3

    iput v0, p0, Lorg/a/a/a/k;->d:I

    move v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final c()Lorg/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/k;->a:Lorg/a/a/a/c;

    return-object v0
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/k;->e:I

    :goto_0
    iget-object v1, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/a/a/a/k;->b:[Lorg/a/a/a/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/a/a/a/b;->d()V

    iget-object v1, p0, Lorg/a/a/a/k;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    iget v1, p0, Lorg/a/a/a/k;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/a/a/a/k;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/k;->d:I

    sget-object v0, Lorg/a/a/a/c;->a:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/k;->a:Lorg/a/a/a/c;

    return-void
.end method
