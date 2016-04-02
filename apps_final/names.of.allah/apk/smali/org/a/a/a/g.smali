.class public final Lorg/a/a/a/g;
.super Lorg/a/a/a/b;


# static fields
.field private static final e:Lorg/a/a/a/d/g;

.field private static final f:Lorg/a/a/a/d/h;

.field private static final g:Lorg/a/a/a/d/i;

.field private static final h:Lorg/a/a/a/d/j;


# instance fields
.field private a:[Lorg/a/a/a/d/b;

.field private b:I

.field private c:Lorg/a/a/a/c;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/a/a/d/g;

    invoke-direct {v0}, Lorg/a/a/a/d/g;-><init>()V

    sput-object v0, Lorg/a/a/a/g;->e:Lorg/a/a/a/d/g;

    new-instance v0, Lorg/a/a/a/d/h;

    invoke-direct {v0}, Lorg/a/a/a/d/h;-><init>()V

    sput-object v0, Lorg/a/a/a/g;->f:Lorg/a/a/a/d/h;

    new-instance v0, Lorg/a/a/a/d/i;

    invoke-direct {v0}, Lorg/a/a/a/d/i;-><init>()V

    sput-object v0, Lorg/a/a/a/g;->g:Lorg/a/a/a/d/i;

    new-instance v0, Lorg/a/a/a/d/j;

    invoke-direct {v0}, Lorg/a/a/a/d/j;-><init>()V

    sput-object v0, Lorg/a/a/a/g;->h:Lorg/a/a/a/d/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/a/a/a/b;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/a/a/a/d/b;

    iput-object v0, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    iget-object v0, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    const/4 v1, 0x0

    new-instance v2, Lorg/a/a/a/d/b;

    sget-object v3, Lorg/a/a/a/g;->e:Lorg/a/a/a/d/g;

    invoke-direct {v2, v3}, Lorg/a/a/a/d/b;-><init>(Lorg/a/a/a/d/m;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    const/4 v1, 0x1

    new-instance v2, Lorg/a/a/a/d/b;

    sget-object v3, Lorg/a/a/a/g;->f:Lorg/a/a/a/d/h;

    invoke-direct {v2, v3}, Lorg/a/a/a/d/b;-><init>(Lorg/a/a/a/d/m;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    const/4 v1, 0x2

    new-instance v2, Lorg/a/a/a/d/b;

    sget-object v3, Lorg/a/a/a/g;->g:Lorg/a/a/a/d/i;

    invoke-direct {v2, v3}, Lorg/a/a/a/d/b;-><init>(Lorg/a/a/a/d/m;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    const/4 v1, 0x3

    new-instance v2, Lorg/a/a/a/d/b;

    sget-object v3, Lorg/a/a/a/g;->h:Lorg/a/a/a/d/j;

    invoke-direct {v2, v3}, Lorg/a/a/a/d/b;-><init>(Lorg/a/a/a/d/m;)V

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lorg/a/a/a/g;->d()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a([BI)Lorg/a/a/a/c;
    .locals 7

    add-int/lit8 v2, p2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    iget-object v0, p0, Lorg/a/a/a/g;->c:Lorg/a/a/a/c;

    sget-object v3, Lorg/a/a/a/c;->a:Lorg/a/a/a/c;

    if-ne v0, v3, :cond_4

    iget v0, p0, Lorg/a/a/a/g;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v3, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    aget-object v3, v3, v0

    aget-byte v4, p1, v1

    invoke-virtual {v3, v4}, Lorg/a/a/a/d/b;->a(B)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/a/a/a/g;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/a/a/a/g;->b:I

    iget v3, p0, Lorg/a/a/a/g;->b:I

    if-gtz v3, :cond_0

    sget-object v0, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/g;->c:Lorg/a/a/a/c;

    iget-object v0, p0, Lorg/a/a/a/g;->c:Lorg/a/a/a/c;

    :goto_2
    return-object v0

    :cond_0
    iget v3, p0, Lorg/a/a/a/g;->b:I

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    iget v4, p0, Lorg/a/a/a/g;->b:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    iget v5, p0, Lorg/a/a/a/g;->b:I

    iget-object v6, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    aget-object v6, v6, v0

    aput-object v6, v4, v5

    iget-object v4, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    aput-object v3, v4, v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    sget-object v1, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    iput-object v1, p0, Lorg/a/a/a/g;->c:Lorg/a/a/a/c;

    iget-object v1, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/a/a/a/d/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/a/g;->d:Ljava/lang/String;

    iget-object v0, p0, Lorg/a/a/a/g;->c:Lorg/a/a/a/c;

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/a/a/a/g;->c:Lorg/a/a/a/c;

    goto :goto_2
.end method

.method public final b()F
    .locals 1

    const v0, 0x3f7d70a4    # 0.99f

    return v0
.end method

.method public final c()Lorg/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/g;->c:Lorg/a/a/a/c;

    return-object v0
.end method

.method public final d()V
    .locals 2

    sget-object v0, Lorg/a/a/a/c;->a:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/g;->c:Lorg/a/a/a/c;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/a/a/a/d/b;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/g;->a:[Lorg/a/a/a/d/b;

    array-length v0, v0

    iput v0, p0, Lorg/a/a/a/g;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/a/g;->d:Ljava/lang/String;

    return-void
.end method
