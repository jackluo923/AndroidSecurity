.class final Lcom/a/a/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Z

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Lcom/a/a/b/c/a;

.field private final g:Lcom/a/a/b/a/d;

.field private final h:Lcom/a/a/b/i;

.field private final i:Lcom/a/a/b/a/g;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/a/a/b/k;Lcom/a/a/b/i;Lcom/a/a/b/a/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/c;->b:Landroid/graphics/Bitmap;

    iget-object v0, p2, Lcom/a/a/b/k;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/b/c;->c:Ljava/lang/String;

    iget-object v0, p2, Lcom/a/a/b/k;->c:Ljava/lang/ref/Reference;

    iput-object v0, p0, Lcom/a/a/b/c;->d:Ljava/lang/ref/Reference;

    iget-object v0, p2, Lcom/a/a/b/k;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/b/c;->e:Ljava/lang/String;

    iget-object v0, p2, Lcom/a/a/b/k;->e:Lcom/a/a/b/d;

    iget-object v0, v0, Lcom/a/a/b/d;->m:Lcom/a/a/b/c/a;

    iput-object v0, p0, Lcom/a/a/b/c;->f:Lcom/a/a/b/c/a;

    iget-object v0, p2, Lcom/a/a/b/k;->f:Lcom/a/a/b/a/d;

    iput-object v0, p0, Lcom/a/a/b/c;->g:Lcom/a/a/b/a/d;

    iput-object p3, p0, Lcom/a/a/b/c;->h:Lcom/a/a/b/i;

    iput-object p4, p0, Lcom/a/a/b/c;->i:Lcom/a/a/b/a/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/a/b/c;->d:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/a/a/b/c;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ImageView was collected by GC. Task is cancelled. [%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/a/a/b/c;->e:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/a/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/c;->g:Lcom/a/a/b/a/d;

    iget-object v0, p0, Lcom/a/a/b/c;->c:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/a/a/b/c;->h:Lcom/a/a/b/i;

    invoke-virtual {v1, v0}, Lcom/a/a/b/i;->a(Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/a/a/b/c;->e:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lcom/a/a/b/c;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "ImageView is reused for another image. Task is cancelled. [%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/a/a/b/c;->e:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/a/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/a/a/b/c;->g:Lcom/a/a/b/a/d;

    iget-object v0, p0, Lcom/a/a/b/c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/a/a/b/c;->a:Z

    if-eqz v1, :cond_5

    const-string v1, "Display image in ImageView (loaded from %1$s) [%2$s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/a/a/b/c;->i:Lcom/a/a/b/a/g;

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/a/a/b/c;->e:Ljava/lang/String;

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Lcom/a/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v1, p0, Lcom/a/a/b/c;->f:Lcom/a/a/b/c/a;

    iget-object v2, p0, Lcom/a/a/b/c;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/a/a/b/c;->i:Lcom/a/a/b/a/g;

    invoke-interface {v1, v2, v0}, Lcom/a/a/b/c/a;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/b/c;->g:Lcom/a/a/b/a/d;

    iget-object v3, p0, Lcom/a/a/b/c;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Lcom/a/a/b/a/d;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/a/a/b/c;->h:Lcom/a/a/b/i;

    invoke-virtual {v1, v0}, Lcom/a/a/b/i;->b(Landroid/widget/ImageView;)V

    goto :goto_0
.end method
