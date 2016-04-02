.class final Lcom/appyet/c/as;
.super Landroid/support/v4/app/FragmentPagerAdapter;


# instance fields
.field final synthetic a:Lcom/appyet/c/ar;


# direct methods
.method public constructor <init>(Lcom/appyet/c/ar;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/as;->a:Lcom/appyet/c/ar;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/as;->a:Lcom/appyet/c/ar;

    invoke-static {v0}, Lcom/appyet/c/ar;->a(Lcom/appyet/c/ar;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/as;->a:Lcom/appyet/c/ar;

    invoke-static {v0}, Lcom/appyet/c/ar;->a(Lcom/appyet/c/ar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    new-instance v1, Lcom/appyet/c/at;

    invoke-direct {v1}, Lcom/appyet/c/at;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "IMAGE_LINK"

    iget-object v0, p0, Lcom/appyet/c/as;->a:Lcom/appyet/c/ar;

    invoke-static {v0}, Lcom/appyet/c/ar;->a(Lcom/appyet/c/ar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/appyet/c/at;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method
