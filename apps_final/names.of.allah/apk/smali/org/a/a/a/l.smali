.class public final Lorg/a/a/a/l;
.super Lorg/a/a/a/b;


# static fields
.field private static final f:Lorg/a/a/a/c/l;

.field private static final g:Lorg/a/a/a/c/l;

.field private static final h:Lorg/a/a/a/c/l;

.field private static final i:Lorg/a/a/a/c/l;

.field private static final j:Lorg/a/a/a/c/l;

.field private static final k:Lorg/a/a/a/c/l;

.field private static final l:Lorg/a/a/a/c/l;

.field private static final m:Lorg/a/a/a/c/l;

.field private static final n:Lorg/a/a/a/c/l;

.field private static final o:Lorg/a/a/a/c/l;

.field private static final p:Lorg/a/a/a/c/l;


# instance fields
.field private a:Lorg/a/a/a/c;

.field private b:[Lorg/a/a/a/b;

.field private c:[Z

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/a/a/c/n;

    invoke-direct {v0}, Lorg/a/a/a/c/n;-><init>()V

    sput-object v0, Lorg/a/a/a/l;->f:Lorg/a/a/a/c/l;

    new-instance v0, Lorg/a/a/a/c/g;

    invoke-direct {v0}, Lorg/a/a/a/c/g;-><init>()V

    sput-object v0, Lorg/a/a/a/l;->g:Lorg/a/a/a/c/l;

    new-instance v0, Lorg/a/a/a/c/i;

    invoke-direct {v0}, Lorg/a/a/a/c/i;-><init>()V

    sput-object v0, Lorg/a/a/a/l;->h:Lorg/a/a/a/c/l;

    new-instance v0, Lorg/a/a/a/c/k;

    invoke-direct {v0}, Lorg/a/a/a/c/k;-><init>()V

    sput-object v0, Lorg/a/a/a/l;->i:Lorg/a/a/a/c/l;

    new-instance v0, Lorg/a/a/a/c/f;

    invoke-direct {v0}, Lorg/a/a/a/c/f;-><init>()V

    sput-object v0, Lorg/a/a/a/l;->j:Lorg/a/a/a/c/l;

    new-instance v0, Lorg/a/a/a/c/e;

    invoke-direct {v0}, Lorg/a/a/a/c/e;-><init>()V

    sput-object v0, Lorg/a/a/a/l;->k:Lorg/a/a/a/c/l;

    new-instance v0, Lorg/a/a/a/c/j;

    invoke-direct {v0}, Lorg/a/a/a/c/j;-><init>()V

    sput-object v0, Lorg/a/a/a/l;->l:Lorg/a/a/a/c/l;

    new-instance v0, Lorg/a/a/a/c/o;

    invoke-direct {v0}, Lorg/a/a/a/c/o;-><init>()V

    sput-object v0, Lorg/a/a/a/l;->m:Lorg/a/a/a/c/l;

    new-instance v0, Lorg/a/a/a/c/h;

    invoke-direct {v0}, Lorg/a/a/a/c/h;-><init>()V

    sput-object v0, Lorg/a/a/a/l;->n:Lorg/a/a/a/c/l;

    new-instance v0, Lorg/a/a/a/c/m;

    invoke-direct {v0}, Lorg/a/a/a/c/m;-><init>()V

    sput-object v0, Lorg/a/a/a/l;->o:Lorg/a/a/a/c/l;

    new-instance v0, Lorg/a/a/a/c/d;

    invoke-direct {v0}, Lorg/a/a/a/c/d;-><init>()V

    sput-object v0, Lorg/a/a/a/l;->p:Lorg/a/a/a/c/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v1, 0xd

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/a/a/a/b;-><init>()V

    new-array v0, v1, [Lorg/a/a/a/b;

    iput-object v0, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/a/a/a/l;->c:[Z

    iget-object v0, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    new-instance v1, Lorg/a/a/a/n;

    sget-object v2, Lorg/a/a/a/l;->f:Lorg/a/a/a/c/l;

    invoke-direct {v1, v2}, Lorg/a/a/a/n;-><init>(Lorg/a/a/a/c/l;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    new-instance v1, Lorg/a/a/a/n;

    sget-object v2, Lorg/a/a/a/l;->g:Lorg/a/a/a/c/l;

    invoke-direct {v1, v2}, Lorg/a/a/a/n;-><init>(Lorg/a/a/a/c/l;)V

    aput-object v1, v0, v5

    iget-object v0, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    const/4 v1, 0x2

    new-instance v2, Lorg/a/a/a/n;

    sget-object v3, Lorg/a/a/a/l;->h:Lorg/a/a/a/c/l;

    invoke-direct {v2, v3}, Lorg/a/a/a/n;-><init>(Lorg/a/a/a/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    const/4 v1, 0x3

    new-instance v2, Lorg/a/a/a/n;

    sget-object v3, Lorg/a/a/a/l;->i:Lorg/a/a/a/c/l;

    invoke-direct {v2, v3}, Lorg/a/a/a/n;-><init>(Lorg/a/a/a/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    const/4 v1, 0x4

    new-instance v2, Lorg/a/a/a/n;

    sget-object v3, Lorg/a/a/a/l;->j:Lorg/a/a/a/c/l;

    invoke-direct {v2, v3}, Lorg/a/a/a/n;-><init>(Lorg/a/a/a/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    const/4 v1, 0x5

    new-instance v2, Lorg/a/a/a/n;

    sget-object v3, Lorg/a/a/a/l;->k:Lorg/a/a/a/c/l;

    invoke-direct {v2, v3}, Lorg/a/a/a/n;-><init>(Lorg/a/a/a/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    const/4 v1, 0x6

    new-instance v2, Lorg/a/a/a/n;

    sget-object v3, Lorg/a/a/a/l;->l:Lorg/a/a/a/c/l;

    invoke-direct {v2, v3}, Lorg/a/a/a/n;-><init>(Lorg/a/a/a/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    const/4 v1, 0x7

    new-instance v2, Lorg/a/a/a/n;

    sget-object v3, Lorg/a/a/a/l;->m:Lorg/a/a/a/c/l;

    invoke-direct {v2, v3}, Lorg/a/a/a/n;-><init>(Lorg/a/a/a/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    const/16 v1, 0x8

    new-instance v2, Lorg/a/a/a/n;

    sget-object v3, Lorg/a/a/a/l;->n:Lorg/a/a/a/c/l;

    invoke-direct {v2, v3}, Lorg/a/a/a/n;-><init>(Lorg/a/a/a/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    const/16 v1, 0x9

    new-instance v2, Lorg/a/a/a/n;

    sget-object v3, Lorg/a/a/a/l;->o:Lorg/a/a/a/c/l;

    invoke-direct {v2, v3}, Lorg/a/a/a/n;-><init>(Lorg/a/a/a/c/l;)V

    aput-object v2, v0, v1

    new-instance v0, Lorg/a/a/a/i;

    invoke-direct {v0}, Lorg/a/a/a/i;-><init>()V

    iget-object v1, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    new-instance v2, Lorg/a/a/a/n;

    sget-object v3, Lorg/a/a/a/l;->p:Lorg/a/a/a/c/l;

    invoke-direct {v2, v3, v4, v0}, Lorg/a/a/a/n;-><init>(Lorg/a/a/a/c/l;ZLorg/a/a/a/b;)V

    aput-object v2, v1, v6

    iget-object v1, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    new-instance v2, Lorg/a/a/a/n;

    sget-object v3, Lorg/a/a/a/l;->p:Lorg/a/a/a/c/l;

    invoke-direct {v2, v3, v5, v0}, Lorg/a/a/a/n;-><init>(Lorg/a/a/a/c/l;ZLorg/a/a/a/b;)V

    aput-object v2, v1, v7

    iget-object v1, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    aget-object v1, v1, v6

    iget-object v2, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    aget-object v2, v2, v7

    iput-object v1, v0, Lorg/a/a/a/i;->a:Lorg/a/a/a/b;

    iput-object v2, v0, Lorg/a/a/a/i;->b:Lorg/a/a/a/b;

    invoke-virtual {p0}, Lorg/a/a/a/l;->d()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lorg/a/a/a/l;->d:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/a/a/a/l;->b()F

    iget v0, p0, Lorg/a/a/a/l;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/l;->d:I

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    iget v1, p0, Lorg/a/a/a/l;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([BI)Lorg/a/a/a/c;
    .locals 8

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    add-int/lit8 v5, p2, 0x0

    move v3, v2

    move v0, v2

    move v1, v2

    :goto_0
    if-ge v3, v5, :cond_3

    aget-byte v6, p1, v3

    invoke-static {v6}, Lorg/a/a/a/b;->a(B)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lorg/a/a/a/b;->b(B)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_2

    if-le v3, v0, :cond_2

    sub-int v1, v3, v0

    invoke-virtual {v4, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v3, 0x1

    move v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    if-le v3, v0, :cond_4

    sub-int v1, v3, v0

    invoke-virtual {v4, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_4
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    iget-object v1, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/a/a/a/l;->c:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    aget-object v1, v1, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/a/a/a/b;->a([BI)Lorg/a/a/a/c;

    move-result-object v1

    sget-object v3, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    if-ne v1, v3, :cond_6

    iput v0, p0, Lorg/a/a/a/l;->d:I

    sget-object v0, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/l;->a:Lorg/a/a/a/c;

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/a/a/a/l;->a:Lorg/a/a/a/c;

    return-object v0

    :cond_6
    sget-object v3, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lorg/a/a/a/l;->c:[Z

    aput-boolean v2, v1, v0

    iget v1, p0, Lorg/a/a/a/l;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/a/a/a/l;->e:I

    iget v1, p0, Lorg/a/a/a/l;->e:I

    if-gtz v1, :cond_7

    sget-object v0, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/l;->a:Lorg/a/a/a/c;

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final b()F
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/a/a/a/l;->a:Lorg/a/a/a/c;

    sget-object v2, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    if-ne v0, v2, :cond_1

    const v1, 0x3f7d70a4    # 0.99f

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/a/a/a/l;->a:Lorg/a/a/a/c;

    sget-object v2, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    if-ne v0, v2, :cond_2

    const v1, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/a/a/a/l;->c:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/a/a/a/b;->b()F

    move-result v2

    cmpg-float v3, v1, v2

    if-gez v3, :cond_3

    iput v0, p0, Lorg/a/a/a/l;->d:I

    move v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final c()Lorg/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/l;->a:Lorg/a/a/a/c;

    return-object v0
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/l;->e:I

    :goto_0
    iget-object v1, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/a/a/a/l;->b:[Lorg/a/a/a/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/a/a/a/b;->d()V

    iget-object v1, p0, Lorg/a/a/a/l;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    iget v1, p0, Lorg/a/a/a/l;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/a/a/a/l;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/l;->d:I

    sget-object v0, Lorg/a/a/a/c;->a:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/l;->a:Lorg/a/a/a/c;

    return-void
.end method
