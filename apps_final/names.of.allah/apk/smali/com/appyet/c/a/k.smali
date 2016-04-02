.class final Lcom/appyet/c/a/k;
.super Landroid/support/v4/app/FragmentPagerAdapter;


# instance fields
.field final synthetic a:Lcom/appyet/c/a/i;


# direct methods
.method public constructor <init>(Lcom/appyet/c/a/i;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/k;->a:Lcom/appyet/c/a/i;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/k;->a:Lcom/appyet/c/a/i;

    invoke-static {v0}, Lcom/appyet/c/a/i;->c(Lcom/appyet/c/a/i;)Lcom/appyet/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/k;->a:Lcom/appyet/c/a/i;

    invoke-static {v0}, Lcom/appyet/c/a/i;->c(Lcom/appyet/c/a/i;)Lcom/appyet/a/a/e;

    move-result-object v0

    iget v0, v0, Lcom/appyet/a/a/e;->h:I

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    new-instance v0, Lcom/appyet/c/a/l;

    invoke-direct {v0}, Lcom/appyet/c/a/l;-><init>()V

    invoke-virtual {v0, p1}, Lcom/appyet/c/a/l;->a(I)V

    iget-object v1, p0, Lcom/appyet/c/a/k;->a:Lcom/appyet/c/a/i;

    invoke-static {v1}, Lcom/appyet/c/a/i;->b(Lcom/appyet/c/a/i;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/c/a/l;->a(Ljava/lang/Long;)V

    return-object v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method
