.class public final Lorg/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/a/a/d;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:B

.field public f:Ljava/lang/String;

.field public g:[Lorg/a/a/a/b;

.field public h:Lorg/a/a/a/b;

.field public i:Lorg/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/a/a/c;->i:Lorg/a/a/a;

    iput-object v2, p0, Lorg/a/a/c;->h:Lorg/a/a/a/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/a/a/a/b;

    iput-object v0, p0, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/a/a/c;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/c;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/a/a/c;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/a/a/c;->f:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/a/a/c;->d:Z

    sget-object v1, Lorg/a/a/d;->a:Lorg/a/a/d;

    iput-object v1, p0, Lorg/a/a/c;->a:Lorg/a/a/d;

    iput-byte v0, p0, Lorg/a/a/c;->e:B

    iget-object v1, p0, Lorg/a/a/c;->h:Lorg/a/a/a/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/a/a/c;->h:Lorg/a/a/a/b;

    invoke-virtual {v1}, Lorg/a/a/a/b;->d()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/a/a/a/b;->d()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
