.class public final Lcom/google/android/gms/internal/gw;
.super Landroid/widget/ImageView;


# instance fields
.field private FL:Landroid/net/Uri;

.field private FM:I

.field private FN:I

.field private FO:Lcom/google/android/gms/internal/gw$a;


# virtual methods
.method public final al(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/gw;->FM:I

    return-void
.end method

.method public final f(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gw;->FL:Landroid/net/Uri;

    return-void
.end method

.method public final fd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gw;->FM:I

    return v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->FO:Lcom/google/android/gms/internal/gw$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->FO:Lcom/google/android/gms/internal/gw$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gw;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gw;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/gw$a;->d(II)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/gw;->FN:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/gw;->FN:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_1
    return-void
.end method
