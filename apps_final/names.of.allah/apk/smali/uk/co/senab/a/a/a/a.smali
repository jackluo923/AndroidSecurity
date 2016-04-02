.class public final Luk/co/senab/a/a/a/a;
.super Luk/co/senab/a/b/c;


# instance fields
.field a:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Luk/co/senab/a/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0}, Luk/co/senab/a/b/c;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Luk/co/senab/a/b/c;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Luk/co/senab/a/a/a/h;->actionBarStyle:I

    sget-object v1, Luk/co/senab/a/a/a/j;->SherlockActionBar:[I

    invoke-static {p1, v0, v1}, Luk/co/senab/a/a/a/a;->a(Landroid/content/Context;I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Luk/co/senab/a/b/c;->a(Landroid/app/Activity;Landroid/view/View;)V

    sget v0, Luk/co/senab/a/a/a/g;->fade_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Luk/co/senab/a/a/a/a;->c:Landroid/view/animation/Animation;

    sget v0, Luk/co/senab/a/a/a/g;->fade_out:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Luk/co/senab/a/a/a/a;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Luk/co/senab/a/a/a/a;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Luk/co/senab/a/a/a/a;->c:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Luk/co/senab/a/a/a/b;

    invoke-direct {v0, p0}, Luk/co/senab/a/a/a/b;-><init>(Luk/co/senab/a/a/a/a;)V

    iget-object v1, p0, Luk/co/senab/a/a/a/a;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Luk/co/senab/a/a/a/a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 4

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0}, Luk/co/senab/a/b/c;->d()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-super {p0}, Luk/co/senab/a/b/c;->a()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Luk/co/senab/a/b/c;->b:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Luk/co/senab/a/a/a/a;->c:Landroid/view/animation/Animation;

    if-eqz v3, :cond_2

    iget-object v3, p0, Luk/co/senab/a/a/a/a;->c:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected final b(Landroid/content/Context;)I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0}, Luk/co/senab/a/b/c;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Luk/co/senab/a/b/c;->b(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Luk/co/senab/a/a/a/j;->SherlockTheme:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x7

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public final b()Z
    .locals 4

    const/16 v3, 0x8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0}, Luk/co/senab/a/b/c;->d()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-super {p0}, Luk/co/senab/a/b/c;->b()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Luk/co/senab/a/b/c;->b:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Luk/co/senab/a/a/a/a;->a:Landroid/view/animation/Animation;

    if-eqz v2, :cond_3

    iget-object v2, p0, Luk/co/senab/a/a/a/a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Luk/co/senab/a/a/a/a;->e()V

    goto :goto_0
.end method

.method protected final c(Landroid/content/Context;)I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0}, Luk/co/senab/a/b/c;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Luk/co/senab/a/b/c;->c(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Luk/co/senab/a/a/a/h;->actionBarStyle:I

    sget-object v1, Luk/co/senab/a/a/a/j;->SherlockActionBar:[I

    invoke-static {p1, v0, v1}, Luk/co/senab/a/a/a/a;->a(Landroid/content/Context;I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public final c()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0}, Luk/co/senab/a/b/c;->d()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-super {p0}, Luk/co/senab/a/b/c;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Luk/co/senab/a/b/c;->b:Landroid/view/View;

    sget v1, Luk/co/senab/a/a/a/i;->ptr_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Luk/co/senab/a/a/a/g;->fade_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final d()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
