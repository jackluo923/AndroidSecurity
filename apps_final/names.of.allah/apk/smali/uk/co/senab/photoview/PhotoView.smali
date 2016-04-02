.class public Luk/co/senab/photoview/PhotoView;
.super Landroid/widget/ImageView;


# instance fields
.field private final a:Luk/co/senab/photoview/b;

.field private b:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Luk/co/senab/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Luk/co/senab/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Luk/co/senab/photoview/b;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/b;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Luk/co/senab/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/senab/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0}, Luk/co/senab/photoview/b;->b()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0}, Luk/co/senab/photoview/b;->f()F

    move-result v0

    return v0
.end method

.method public getMidScale()F
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0}, Luk/co/senab/photoview/b;->e()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0}, Luk/co/senab/photoview/b;->d()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0}, Luk/co/senab/photoview/b;->g()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0}, Luk/co/senab/photoview/b;->h()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0}, Luk/co/senab/photoview/b;->a()V

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/b;->a(Z)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0}, Luk/co/senab/photoview/b;->i()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0}, Luk/co/senab/photoview/b;->i()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0}, Luk/co/senab/photoview/b;->i()V

    :cond_0
    return-void
.end method

.method public setMaxScale(F)V
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/b;->c(F)V

    return-void
.end method

.method public setMidScale(F)V
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/b;->b(F)V

    return-void
.end method

.method public setMinScale(F)V
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/b;->a(F)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/b;->a(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Luk/co/senab/photoview/g;)V
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/b;->a(Luk/co/senab/photoview/g;)V

    return-void
.end method

.method public setOnPhotoTapListener(Luk/co/senab/photoview/h;)V
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/b;->a(Luk/co/senab/photoview/h;)V

    return-void
.end method

.method public setOnViewTapListener(Luk/co/senab/photoview/i;)V
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/b;->a(Luk/co/senab/photoview/i;)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/b;->a(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Luk/co/senab/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public setZoomable(Z)V
    .locals 1

    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/b;->b(Z)V

    return-void
.end method
