.class final Lnet/simonvt/menudrawer/al;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/View;)I
    .locals 2

    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)I
    .locals 2

    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/view/View;)I
    .locals 2

    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0
.end method

.method public static d(Landroid/view/View;)I
    .locals 2

    sget-boolean v0, Lnet/simonvt/menudrawer/MenuDrawer;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method public static e(Landroid/view/View;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
