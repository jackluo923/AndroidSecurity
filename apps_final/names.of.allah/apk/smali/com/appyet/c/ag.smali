.class final Lcom/appyet/c/ag;
.super Lcom/a/a/b/a/j;


# instance fields
.field final synthetic a:Lcom/appyet/c/r;


# direct methods
.method public constructor <init>(Lcom/appyet/c/r;Lcom/a/a/b/f;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/ag;->a:Lcom/appyet/c/r;

    invoke-direct {p0, p2, p3, p4}, Lcom/a/a/b/a/j;-><init>(Lcom/a/a/b/f;ZZ)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/c/ag;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/ag;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-boolean v0, v0, Lcom/appyet/context/f;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/a/a/b/a/j;->onScroll(Landroid/widget/AbsListView;III)V

    return-void

    :pswitch_0
    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    iget-object v0, p0, Lcom/appyet/c/ag;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->n(Lcom/appyet/c/r;)Lcom/appyet/c/al;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/ag;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->n(Lcom/appyet/c/r;)Lcom/appyet/c/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/c/al;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->a:Lcom/appyet/f/h;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/appyet/c/ag;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->n(Lcom/appyet/c/r;)Lcom/appyet/c/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/c/al;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->c:Lcom/appyet/f/h;

    if-ne v0, v1, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/ag;->a:Lcom/appyet/c/r;

    new-instance v1, Lcom/appyet/c/al;

    iget-object v2, p0, Lcom/appyet/c/ag;->a:Lcom/appyet/c/r;

    invoke-direct {v1, v2}, Lcom/appyet/c/al;-><init>(Lcom/appyet/c/r;)V

    invoke-static {v0, v1}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;Lcom/appyet/c/al;)Lcom/appyet/c/al;

    iget-object v0, p0, Lcom/appyet/c/ag;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->n(Lcom/appyet/c/r;)Lcom/appyet/c/al;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/al;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0082
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
