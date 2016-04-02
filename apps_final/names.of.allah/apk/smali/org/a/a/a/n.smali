.class public final Lorg/a/a/a/n;
.super Lorg/a/a/a/b;


# instance fields
.field private a:Lorg/a/a/a/c;

.field private b:Lorg/a/a/a/c/l;

.field private c:Z

.field private d:S

.field private e:I

.field private f:[I

.field private g:I

.field private h:I

.field private i:Lorg/a/a/a/b;


# direct methods
.method public constructor <init>(Lorg/a/a/a/c/l;)V
    .locals 1

    invoke-direct {p0}, Lorg/a/a/a/b;-><init>()V

    iput-object p1, p0, Lorg/a/a/a/n;->b:Lorg/a/a/a/c/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/a/n;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/a/n;->i:Lorg/a/a/a/b;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/a/a/a/n;->f:[I

    invoke-virtual {p0}, Lorg/a/a/a/n;->d()V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/a/c/l;ZLorg/a/a/a/b;)V
    .locals 1

    invoke-direct {p0}, Lorg/a/a/a/b;-><init>()V

    iput-object p1, p0, Lorg/a/a/a/n;->b:Lorg/a/a/a/c/l;

    iput-boolean p2, p0, Lorg/a/a/a/n;->c:Z

    iput-object p3, p0, Lorg/a/a/a/n;->i:Lorg/a/a/a/b;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/a/a/a/n;->f:[I

    invoke-virtual {p0}, Lorg/a/a/a/n;->d()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/n;->i:Lorg/a/a/a/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/a/a/a/n;->b:Lorg/a/a/a/c/l;

    invoke-virtual {v0}, Lorg/a/a/a/c/l;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/a/n;->i:Lorg/a/a/a/b;

    invoke-virtual {v0}, Lorg/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a([BI)Lorg/a/a/a/c;
    .locals 8

    const/16 v7, 0x40

    add-int/lit8 v1, p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lorg/a/a/a/n;->b:Lorg/a/a/a/c/l;

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/a/a/a/c/l;->a(B)S

    move-result v2

    const/16 v3, 0xfa

    if-ge v2, v3, :cond_0

    iget v3, p0, Lorg/a/a/a/n;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/a/a/a/n;->g:I

    :cond_0
    if-ge v2, v7, :cond_1

    iget v3, p0, Lorg/a/a/a/n;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/a/a/a/n;->h:I

    iget-short v3, p0, Lorg/a/a/a/n;->d:S

    if-ge v3, v7, :cond_1

    iget v3, p0, Lorg/a/a/a/n;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/a/a/a/n;->e:I

    iget-boolean v3, p0, Lorg/a/a/a/n;->c:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/a/a/a/n;->f:[I

    iget-object v4, p0, Lorg/a/a/a/n;->b:Lorg/a/a/a/c/l;

    iget-short v5, p0, Lorg/a/a/a/n;->d:S

    mul-int/lit8 v5, v5, 0x40

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lorg/a/a/a/c/l;->a(I)B

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    :cond_1
    :goto_1
    iput-short v2, p0, Lorg/a/a/a/n;->d:S

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/a/a/a/n;->f:[I

    iget-object v4, p0, Lorg/a/a/a/n;->b:Lorg/a/a/a/c/l;

    mul-int/lit8 v5, v2, 0x40

    iget-short v6, p0, Lorg/a/a/a/n;->d:S

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/a/a/a/c/l;->a(I)B

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/a/a/a/n;->a:Lorg/a/a/a/c;

    sget-object v1, Lorg/a/a/a/c;->a:Lorg/a/a/a/c;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/a/a/a/n;->e:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/a/a/a/n;->b()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    sget-object v0, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/n;->a:Lorg/a/a/a/c;

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/a/a/a/n;->a:Lorg/a/a/a/c;

    return-object v0

    :cond_5
    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    sget-object v0, Lorg/a/a/a/c;->c:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/n;->a:Lorg/a/a/a/c;

    goto :goto_2
.end method

.method public final b()F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p0, Lorg/a/a/a/n;->e:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/a/a/a/n;->f:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/a/a/a/n;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/a/a/a/n;->b:Lorg/a/a/a/c/l;

    invoke-virtual {v1}, Lorg/a/a/a/c/l;->a()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Lorg/a/a/a/n;->h:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/a/a/a/n;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_0

    const v0, 0x3f7d70a4    # 0.99f

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0
.end method

.method public final c()Lorg/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/n;->a:Lorg/a/a/a/c;

    return-object v0
.end method

.method public final d()V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lorg/a/a/a/c;->a:Lorg/a/a/a/c;

    iput-object v0, p0, Lorg/a/a/a/n;->a:Lorg/a/a/a/c;

    const/16 v0, 0xff

    iput-short v0, p0, Lorg/a/a/a/n;->d:S

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/a/a/a/n;->f:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lorg/a/a/a/n;->e:I

    iput v1, p0, Lorg/a/a/a/n;->g:I

    iput v1, p0, Lorg/a/a/a/n;->h:I

    return-void
.end method
