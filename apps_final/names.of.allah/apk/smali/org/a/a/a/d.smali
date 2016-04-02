.class public final Lorg/a/a/a/d;
.super Lorg/a/a/a/b;


# static fields
.field private static final f:Lorg/a/a/a/d/m;


# instance fields
.field private a:Lorg/a/a/a/d/b;

.field private b:Lorg/a/a/a/c;

.field private c:Lorg/a/a/a/a/a;

.field private d:Lorg/a/a/a/b/c;

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/a/a/d/c;

    invoke-direct {v0}, Lorg/a/a/a/d/c;-><init>()V

    sput-object v0, Lorg/a/a/a/d;->f:Lorg/a/a/a/d/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/a/a/a/b;-><init>()V

    new-instance v0, Lorg/a/a/a/d/b;

    sget-object v1, Lorg/a/a/a/d;->f:Lorg/a/a/a/d/m;

    invoke-direct {v0, v1}, Lorg/a/a/a/d/b;-><init>(Lorg/a/a/a/d/m;)V

    iput-object v0, p0, Lorg/a/a/a/d;->a:Lorg/a/a/a/d/b;

    new-instance v0, Lorg/a/a/a/a/a;

    invoke-direct {v0}, Lorg/a/a/a/a/a;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/d;->c:Lorg/a/a/a/a/a;

    new-instance v0, Lorg/a/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/a/b/c;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/d;->d:Lorg/a/a/a/b/c;

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/a/a/a/d;->e:[B

    invoke-virtual {p0}, Lorg/a/a/a/d;->d()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/a/a/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final a([BI)Lorg/a/a/a/c;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lorg/a/a/a/d;->a:Lorg/a/a/a/d/b;

    aget-byte v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/a/a/a/d/b;->a(B)I

    move-result v3

    if-ne v3, v6, :cond_2

    sget-object v0, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/d;->b:Lorg/a/a/a/c;

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/a/a/a/d;->e:[B

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/a/a/a/d;->b:Lorg/a/a/a/c;

    sget-object v1, Lorg/a/a/a/c;->a:Lorg/a/a/a/c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/a/a/a/d;->c:Lorg/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/a/a/a/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/a/a/a/d;->b()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget-object v0, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/d;->b:Lorg/a/a/a/c;

    :cond_1
    iget-object v0, p0, Lorg/a/a/a/d;->b:Lorg/a/a/a/c;

    return-object v0

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    sget-object v0, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/d;->b:Lorg/a/a/a/c;

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/a/a/a/d;->a:Lorg/a/a/a/d/b;

    invoke-virtual {v3}, Lorg/a/a/a/d/b;->a()I

    move-result v3

    if-nez v0, :cond_5

    iget-object v4, p0, Lorg/a/a/a/d;->e:[B

    aget-byte v5, p1, v1

    aput-byte v5, v4, v6

    iget-object v4, p0, Lorg/a/a/a/d;->c:Lorg/a/a/a/a/a;

    iget-object v5, p0, Lorg/a/a/a/d;->e:[B

    invoke-virtual {v4, v5, v1, v3}, Lorg/a/a/a/a/a;->a([BII)V

    iget-object v4, p0, Lorg/a/a/a/d;->d:Lorg/a/a/a/b/c;

    iget-object v5, p0, Lorg/a/a/a/d;->e:[B

    invoke-virtual {v4, v5, v1, v3}, Lorg/a/a/a/b/c;->a([BII)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lorg/a/a/a/d;->c:Lorg/a/a/a/a/a;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, p1, v5, v3}, Lorg/a/a/a/a/a;->a([BII)V

    iget-object v4, p0, Lorg/a/a/a/d;->d:Lorg/a/a/a/b/c;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, p1, v5, v3}, Lorg/a/a/a/b/c;->a([BII)V

    goto :goto_2
.end method

.method public final b()F
    .locals 2

    iget-object v0, p0, Lorg/a/a/a/d;->c:Lorg/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/a/a/a/a/a;->a()F

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/d;->d:Lorg/a/a/a/b/c;

    invoke-virtual {v1}, Lorg/a/a/a/b/c;->a()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final c()Lorg/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/d;->b:Lorg/a/a/a/c;

    return-object v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lorg/a/a/a/d;->a:Lorg/a/a/a/d/b;

    invoke-virtual {v0}, Lorg/a/a/a/d/b;->b()V

    sget-object v0, Lorg/a/a/a/c;->a:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/d;->b:Lorg/a/a/a/c;

    iget-object v0, p0, Lorg/a/a/a/d;->c:Lorg/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/a/a/a/a/a;->b()V

    iget-object v0, p0, Lorg/a/a/a/d;->d:Lorg/a/a/a/b/c;

    invoke-virtual {v0}, Lorg/a/a/a/b/c;->b()V

    iget-object v0, p0, Lorg/a/a/a/d;->e:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method
