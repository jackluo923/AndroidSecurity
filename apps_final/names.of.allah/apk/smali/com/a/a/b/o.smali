.class final Lcom/a/a/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/a/a/b/i;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Lcom/a/a/b/k;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/a/a/b/i;Landroid/graphics/Bitmap;Lcom/a/a/b/k;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/o;->a:Lcom/a/a/b/i;

    iput-object p2, p0, Lcom/a/a/b/o;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/a/a/b/o;->c:Lcom/a/a/b/k;

    iput-object p4, p0, Lcom/a/a/b/o;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/a/a/b/o;->a:Lcom/a/a/b/i;

    iget-object v0, v0, Lcom/a/a/b/i;->a:Lcom/a/a/b/g;

    iget-boolean v0, v0, Lcom/a/a/b/g;->u:Z

    if-eqz v0, :cond_0

    const-string v0, "PostProcess image before displaying [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/a/a/b/o;->c:Lcom/a/a/b/k;

    iget-object v3, v3, Lcom/a/a/b/k;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/a/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/o;->c:Lcom/a/a/b/k;

    iget-object v0, v0, Lcom/a/a/b/k;->e:Lcom/a/a/b/d;

    iget-object v0, v0, Lcom/a/a/b/d;->l:Lcom/a/a/b/e/a;

    iget-object v1, p0, Lcom/a/a/b/o;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0}, Lcom/a/a/b/e/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b/o;->d:Landroid/os/Handler;

    new-instance v2, Lcom/a/a/b/c;

    iget-object v3, p0, Lcom/a/a/b/o;->c:Lcom/a/a/b/k;

    iget-object v4, p0, Lcom/a/a/b/o;->a:Lcom/a/a/b/i;

    sget-object v5, Lcom/a/a/b/a/g;->c:Lcom/a/a/b/a/g;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/a/a/b/c;-><init>(Landroid/graphics/Bitmap;Lcom/a/a/b/k;Lcom/a/a/b/i;Lcom/a/a/b/a/g;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
