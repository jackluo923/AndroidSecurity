.class final Luk/co/senab/a/a/a/c;
.super Luk/co/senab/a/b/j;


# instance fields
.field private o:Landroid/widget/FrameLayout;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Luk/co/senab/a/b/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Luk/co/senab/a/b/j;-><init>(Landroid/app/Activity;Luk/co/senab/a/b/h;)V

    return-void
.end method


# virtual methods
.method protected final a()Luk/co/senab/a/b/e;
    .locals 1

    new-instance v0, Luk/co/senab/a/a/a/d;

    invoke-direct {v0}, Luk/co/senab/a/a/a/d;-><init>()V

    return-object v0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Luk/co/senab/a/b/j;->a(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Luk/co/senab/a/b/j;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Luk/co/senab/a/a/a/c;->o:Landroid/widget/FrameLayout;

    iget-object v0, p0, Luk/co/senab/a/a/a/c;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Luk/co/senab/a/a/a/c;->o:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Luk/co/senab/a/b/j;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected final b()Luk/co/senab/a/b/f;
    .locals 1

    new-instance v0, Luk/co/senab/a/a/a/a;

    invoke-direct {v0}, Luk/co/senab/a/a/a/a;-><init>()V

    return-object v0
.end method

.method protected final b(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Luk/co/senab/a/b/j;->b(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Luk/co/senab/a/a/a/c;->o:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Luk/co/senab/a/b/j;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1}, Luk/co/senab/a/b/j;->c(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Luk/co/senab/a/a/a/c;->o:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/a/a/a/c;->o:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Luk/co/senab/a/b/j;->c(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/senab/a/a/a/c;->o:Landroid/widget/FrameLayout;

    goto :goto_0
.end method
