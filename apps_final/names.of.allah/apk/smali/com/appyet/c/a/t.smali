.class final Lcom/appyet/c/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/appyet/c/a/r;


# direct methods
.method constructor <init>(Lcom/appyet/c/a/r;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/t;->a:Lcom/appyet/c/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/appyet/c/a/t;->a:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->a(Lcom/appyet/c/a/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/t;->a:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->b(Lcom/appyet/c/a/r;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/t;->a:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->c(Lcom/appyet/c/a/r;)Lcom/appyet/c/a/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/t;->a:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->c(Lcom/appyet/c/a/r;)Lcom/appyet/c/a/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/c/a/y;->d()Lcom/appyet/f/h;

    move-result-object v0

    sget-object v1, Lcom/appyet/f/h;->c:Lcom/appyet/f/h;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/t;->a:Lcom/appyet/c/a/r;

    new-instance v1, Lcom/appyet/c/a/y;

    iget-object v2, p0, Lcom/appyet/c/a/t;->a:Lcom/appyet/c/a/r;

    invoke-direct {v1, v2, v3}, Lcom/appyet/c/a/y;-><init>(Lcom/appyet/c/a/r;B)V

    invoke-static {v0, v1}, Lcom/appyet/c/a/r;->a(Lcom/appyet/c/a/r;Lcom/appyet/c/a/y;)Lcom/appyet/c/a/y;

    iget-object v0, p0, Lcom/appyet/c/a/t;->a:Lcom/appyet/c/a/r;

    invoke-static {v0}, Lcom/appyet/c/a/r;->c(Lcom/appyet/c/a/r;)Lcom/appyet/c/a/y;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/a/y;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    :cond_1
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
