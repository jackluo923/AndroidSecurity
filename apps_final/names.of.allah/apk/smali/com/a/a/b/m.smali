.class final Lcom/a/a/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/b/a/b;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/a/a/b/l;


# direct methods
.method constructor <init>(Lcom/a/a/b/l;Lcom/a/a/b/a/b;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/m;->c:Lcom/a/a/b/l;

    iput-object p2, p0, Lcom/a/a/b/m;->a:Lcom/a/a/b/a/b;

    iput-object p3, p0, Lcom/a/a/b/m;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/a/a/b/m;->c:Lcom/a/a/b/l;

    iget-object v0, v0, Lcom/a/a/b/l;->b:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/a/a/b/m;->c:Lcom/a/a/b/l;

    iget-object v1, v1, Lcom/a/a/b/l;->c:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->c:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/b/m;->c:Lcom/a/a/b/l;

    iget-object v1, v1, Lcom/a/a/b/l;->c:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/m;->c:Lcom/a/a/b/l;

    iget-object v0, v0, Lcom/a/a/b/l;->d:Lcom/a/a/b/a/d;

    iget-object v1, p0, Lcom/a/a/b/m;->c:Lcom/a/a/b/l;

    iget-object v1, v1, Lcom/a/a/b/l;->a:Ljava/lang/String;

    new-instance v1, Lcom/a/a/b/a/a;

    iget-object v2, p0, Lcom/a/a/b/m;->a:Lcom/a/a/b/a/b;

    iget-object v3, p0, Lcom/a/a/b/m;->b:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Lcom/a/a/b/a/a;-><init>(Lcom/a/a/b/a/b;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/a/a/b/a/d;->a(Lcom/a/a/b/a/a;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
