.class public final Lorg/a/a/a/o;
.super Lorg/a/a/a/b;


# static fields
.field private static final d:Lorg/a/a/a/d/m;


# instance fields
.field private a:Lorg/a/a/a/d/b;

.field private b:Lorg/a/a/a/c;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/a/a/d/n;

    invoke-direct {v0}, Lorg/a/a/a/d/n;-><init>()V

    sput-object v0, Lorg/a/a/a/o;->d:Lorg/a/a/a/d/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/a/a/a/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/o;->c:I

    new-instance v0, Lorg/a/a/a/d/b;

    sget-object v1, Lorg/a/a/a/o;->d:Lorg/a/a/a/d/m;

    invoke-direct {v0, v1}, Lorg/a/a/a/d/b;-><init>(Lorg/a/a/a/d/m;)V

    iput-object v0, p0, Lorg/a/a/a/o;->a:Lorg/a/a/a/d/b;

    invoke-virtual {p0}, Lorg/a/a/a/o;->d()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/a/a/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final a([BI)Lorg/a/a/a/c;
    .locals 5

    const/4 v4, 0x2

    add-int/lit8 v1, p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/a/a/a/o;->a:Lorg/a/a/a/d/b;

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/a/a/a/d/b;->a(B)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    sget-object v0, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/o;->b:Lorg/a/a/a/c;

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/a/a/a/o;->b:Lorg/a/a/a/c;

    sget-object v1, Lorg/a/a/a/c;->a:Lorg/a/a/a/c;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/a/a/a/o;->b()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget-object v0, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/o;->b:Lorg/a/a/a/c;

    :cond_1
    iget-object v0, p0, Lorg/a/a/a/o;->b:Lorg/a/a/a/c;

    return-object v0

    :cond_2
    if-ne v2, v4, :cond_3

    sget-object v0, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/o;->b:Lorg/a/a/a/c;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/a/a/a/o;->a:Lorg/a/a/a/d/b;

    invoke-virtual {v2}, Lorg/a/a/a/d/b;->a()I

    move-result v2

    if-lt v2, v4, :cond_4

    iget v2, p0, Lorg/a/a/a/o;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/a/a/a/o;->c:I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()F
    .locals 3

    const v1, 0x3f7d70a4    # 0.99f

    iget v0, p0, Lorg/a/a/a/o;->c:I

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/a/a/a/o;->c:I

    if-ge v0, v2, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    :cond_1
    return v1
.end method

.method public final c()Lorg/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/o;->b:Lorg/a/a/a/c;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/o;->a:Lorg/a/a/a/d/b;

    invoke-virtual {v0}, Lorg/a/a/a/d/b;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/o;->c:I

    sget-object v0, Lorg/a/a/a/c;->a:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/o;->b:Lorg/a/a/a/c;

    return-void
.end method
