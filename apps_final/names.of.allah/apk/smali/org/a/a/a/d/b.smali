.class public final Lorg/a/a/a/d/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lorg/a/a/a/d/m;

.field protected b:I

.field protected c:I

.field protected d:I


# direct methods
.method public constructor <init>(Lorg/a/a/a/d/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/a/d/b;->a:Lorg/a/a/a/d/m;

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/d/b;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/a/a/a/d/b;->c:I

    return v0
.end method

.method public final a(B)I
    .locals 3

    iget-object v0, p0, Lorg/a/a/a/d/b;->a:Lorg/a/a/a/d/m;

    invoke-virtual {v0, p1}, Lorg/a/a/a/d/m;->a(B)I

    move-result v0

    iget v1, p0, Lorg/a/a/a/d/b;->b:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/a/a/a/d/b;->d:I

    iget-object v1, p0, Lorg/a/a/a/d/b;->a:Lorg/a/a/a/d/m;

    invoke-virtual {v1, v0}, Lorg/a/a/a/d/m;->a(I)I

    move-result v1

    iput v1, p0, Lorg/a/a/a/d/b;->c:I

    :cond_0
    iget-object v1, p0, Lorg/a/a/a/d/b;->a:Lorg/a/a/a/d/m;

    iget v2, p0, Lorg/a/a/a/d/b;->b:I

    invoke-virtual {v1, v0, v2}, Lorg/a/a/a/d/m;->a(II)I

    move-result v0

    iput v0, p0, Lorg/a/a/a/d/b;->b:I

    iget v0, p0, Lorg/a/a/a/d/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/a/d/b;->d:I

    iget v0, p0, Lorg/a/a/a/d/b;->b:I

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/d/b;->b:I

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/d/b;->a:Lorg/a/a/a/d/m;

    invoke-virtual {v0}, Lorg/a/a/a/d/m;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
