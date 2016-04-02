.class final Landroid/support/v4/widget/f;
.super Landroid/support/v4/view/a;


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->b()V

    :cond_0
    return-void
.end method
