.class final Luk/co/senab/a/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Luk/co/senab/a/b/j;


# direct methods
.method constructor <init>(Luk/co/senab/a/b/j;)V
    .locals 0

    iput-object p1, p0, Luk/co/senab/a/b/m;->a:Luk/co/senab/a/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Luk/co/senab/a/b/m;->a:Luk/co/senab/a/b/j;

    invoke-virtual {v0}, Luk/co/senab/a/b/j;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Luk/co/senab/a/b/j;->a:Luk/co/senab/a/b/f;

    invoke-virtual {v1}, Luk/co/senab/a/b/f;->c()V

    iget-object v1, v0, Luk/co/senab/a/b/j;->e:Luk/co/senab/a/b/a/a;

    if-eqz v1, :cond_0

    iget-object v1, v0, Luk/co/senab/a/b/j;->e:Luk/co/senab/a/b/a/a;

    iget-object v0, v0, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    :cond_0
    return-void
.end method
