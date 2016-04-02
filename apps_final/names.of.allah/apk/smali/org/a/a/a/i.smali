.class public final Lorg/a/a/a/i;
.super Lorg/a/a/a/b;


# instance fields
.field a:Lorg/a/a/a/b;

.field b:Lorg/a/a/a/b;

.field private c:I

.field private d:I

.field private e:B

.field private f:B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/a/a/a/b;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/i;->a:Lorg/a/a/a/b;

    iput-object v0, p0, Lorg/a/a/a/i;->b:Lorg/a/a/a/b;

    invoke-virtual {p0}, Lorg/a/a/a/i;->d()V

    return-void
.end method

.method private static c(B)Z
    .locals 2

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0xea

    if-eq v0, v1, :cond_0

    const/16 v1, 0xed

    if-eq v0, v1, :cond_0

    const/16 v1, 0xef

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/a/a/a/i;->c:I

    iget v1, p0, Lorg/a/a/a/i;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/a/a/b;->t:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, -0x5

    if-gt v0, v1, :cond_1

    sget-object v0, Lorg/a/a/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/a/a/a/i;->a:Lorg/a/a/a/b;

    invoke-virtual {v1}, Lorg/a/a/a/b;->b()F

    move-result v1

    iget-object v2, p0, Lorg/a/a/a/i;->b:Lorg/a/a/a/b;

    invoke-virtual {v2}, Lorg/a/a/a/b;->b()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    sget-object v0, Lorg/a/a/b;->t:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const v2, -0x43dc28f6    # -0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    sget-object v0, Lorg/a/a/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-gez v0, :cond_4

    sget-object v0, Lorg/a/a/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/a/a/b;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a([BI)Lorg/a/a/a/c;
    .locals 7

    const/4 v1, 0x0

    const/16 v6, 0x20

    invoke-virtual {p0}, Lorg/a/a/a/i;->c()Lorg/a/a/a/c;

    move-result-object v0

    sget-object v2, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    if-ne v0, v2, :cond_0

    sget-object v0, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v3, p2, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_6

    aget-byte v4, p1, v2

    if-ne v4, v6, :cond_5

    iget-byte v0, p0, Lorg/a/a/a/i;->f:B

    if-eq v0, v6, :cond_1

    iget-byte v0, p0, Lorg/a/a/a/i;->e:B

    invoke-static {v0}, Lorg/a/a/a/i;->c(B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/a/a/a/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/a/i;->c:I

    :cond_1
    :goto_2
    iget-byte v0, p0, Lorg/a/a/a/i;->e:B

    iput-byte v0, p0, Lorg/a/a/a/i;->f:B

    iput-byte v4, p0, Lorg/a/a/a/i;->e:B

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-byte v0, p0, Lorg/a/a/a/i;->e:B

    and-int/lit16 v0, v0, 0xff

    const/16 v5, 0xeb

    if-eq v0, v5, :cond_3

    const/16 v5, 0xee

    if-eq v0, v5, :cond_3

    const/16 v5, 0xf0

    if-eq v0, v5, :cond_3

    const/16 v5, 0xf4

    if-ne v0, v5, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_1

    iget v0, p0, Lorg/a/a/a/i;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/a/i;->d:I

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    iget-byte v0, p0, Lorg/a/a/a/i;->f:B

    if-ne v0, v6, :cond_1

    iget-byte v0, p0, Lorg/a/a/a/i;->e:B

    invoke-static {v0}, Lorg/a/a/a/i;->c(B)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq v4, v6, :cond_1

    iget v0, p0, Lorg/a/a/a/i;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/a/i;->d:I

    goto :goto_2

    :cond_6
    sget-object v0, Lorg/a/a/a/c;->a:Lorg/a/a/a/c;

    goto :goto_0
.end method

.method public final b()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lorg/a/a/a/c;
    .locals 2

    iget-object v0, p0, Lorg/a/a/a/i;->a:Lorg/a/a/a/b;

    invoke-virtual {v0}, Lorg/a/a/a/b;->c()Lorg/a/a/a/c;

    move-result-object v0

    sget-object v1, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/a/a/a/i;->b:Lorg/a/a/a/b;

    invoke-virtual {v0}, Lorg/a/a/a/b;->c()Lorg/a/a/a/c;

    move-result-object v0

    sget-object v1, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/a/a/a/c;->a:Lorg/a/a/a/c;

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    const/16 v1, 0x20

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/i;->c:I

    iput v0, p0, Lorg/a/a/a/i;->d:I

    iput-byte v1, p0, Lorg/a/a/a/i;->e:B

    iput-byte v1, p0, Lorg/a/a/a/i;->f:B

    return-void
.end method
