.class final Luk/co/senab/a/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Luk/co/senab/a/b/j;


# direct methods
.method constructor <init>(Luk/co/senab/a/b/j;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Luk/co/senab/a/b/k;->b:Luk/co/senab/a/b/j;

    iput-object p2, p0, Luk/co/senab/a/b/k;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Luk/co/senab/a/b/k;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/a/b/k;->b:Luk/co/senab/a/b/j;

    iget-object v1, p0, Luk/co/senab/a/b/k;->b:Luk/co/senab/a/b/j;

    iget-object v1, v1, Luk/co/senab/a/b/j;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Luk/co/senab/a/b/j;->a(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Luk/co/senab/a/b/k;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
