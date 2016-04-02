.class public final Lcom/a/a/b/e;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Z

.field g:Lcom/a/a/b/a/e;

.field h:Landroid/graphics/BitmapFactory$Options;

.field i:I

.field j:Ljava/lang/Object;

.field k:Lcom/a/a/b/e/a;

.field l:Lcom/a/a/b/e/a;

.field m:Lcom/a/a/b/c/a;

.field n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/a/a/b/e;->a:I

    iput v1, p0, Lcom/a/a/b/e;->b:I

    iput v1, p0, Lcom/a/a/b/e;->c:I

    iput-boolean v1, p0, Lcom/a/a/b/e;->d:Z

    iput-boolean v1, p0, Lcom/a/a/b/e;->e:Z

    iput-boolean v1, p0, Lcom/a/a/b/e;->f:Z

    sget-object v0, Lcom/a/a/b/a/e;->b:Lcom/a/a/b/a/e;

    iput-object v0, p0, Lcom/a/a/b/e;->g:Lcom/a/a/b/a/e;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/e;->h:Landroid/graphics/BitmapFactory$Options;

    iput v1, p0, Lcom/a/a/b/e;->i:I

    iput-object v2, p0, Lcom/a/a/b/e;->j:Ljava/lang/Object;

    iput-object v2, p0, Lcom/a/a/b/e;->k:Lcom/a/a/b/e/a;

    iput-object v2, p0, Lcom/a/a/b/e;->l:Lcom/a/a/b/e/a;

    new-instance v0, Lcom/a/a/b/c/d;

    invoke-direct {v0}, Lcom/a/a/b/c/d;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/e;->m:Lcom/a/a/b/c/a;

    iput-object v2, p0, Lcom/a/a/b/e;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/a/a/b/e;->h:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iget-object v0, p0, Lcom/a/a/b/e;->h:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/b/e;
    .locals 1

    const v0, 0x7f0200f4

    iput v0, p0, Lcom/a/a/b/e;->a:I

    return-object p0
.end method

.method public final a(I)Lcom/a/a/b/e;
    .locals 0

    iput p1, p0, Lcom/a/a/b/e;->b:I

    return-object p0
.end method

.method public final a(Landroid/graphics/Bitmap$Config;)Lcom/a/a/b/e;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmapConfig can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/e;->h:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public final a(Lcom/a/a/b/a/e;)Lcom/a/a/b/e;
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/e;->g:Lcom/a/a/b/a/e;

    return-object p0
.end method

.method public final a(Lcom/a/a/b/c/a;)Lcom/a/a/b/e;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/a/b/e;->m:Lcom/a/a/b/c/a;

    return-object p0
.end method

.method public final b()Lcom/a/a/b/e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/b/e;->d:Z

    return-object p0
.end method

.method public final b(I)Lcom/a/a/b/e;
    .locals 0

    iput p1, p0, Lcom/a/a/b/e;->c:I

    return-object p0
.end method

.method public final c()Lcom/a/a/b/e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/b/e;->e:Z

    return-object p0
.end method

.method public final d()Lcom/a/a/b/e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/b/e;->f:Z

    return-object p0
.end method

.method public final e()Lcom/a/a/b/e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/b/e;->f:Z

    return-object p0
.end method

.method public final f()Lcom/a/a/b/d;
    .locals 2

    new-instance v0, Lcom/a/a/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/d;-><init>(Lcom/a/a/b/e;B)V

    return-object v0
.end method
