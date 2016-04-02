.class final Luk/co/senab/photoview/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Luk/co/senab/photoview/b;

.field private final b:Luk/co/senab/photoview/j;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Luk/co/senab/photoview/b;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Luk/co/senab/photoview/f;->a:Luk/co/senab/photoview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    new-instance v0, Luk/co/senab/photoview/l;

    invoke-direct {v0, p2}, Luk/co/senab/photoview/l;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Luk/co/senab/photoview/f;->b:Luk/co/senab/photoview/j;

    return-void

    :cond_0
    new-instance v0, Luk/co/senab/photoview/k;

    invoke-direct {v0, p2}, Luk/co/senab/photoview/k;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-boolean v0, Luk/co/senab/photoview/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "PhotoViewAttacher"

    const-string v1, "Cancel Fling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/f;->b:Luk/co/senab/photoview/j;

    invoke-virtual {v0}, Luk/co/senab/photoview/j;->b()V

    return-void
.end method

.method public final a(IIII)V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Luk/co/senab/photoview/f;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v1}, Luk/co/senab/photoview/b;->b()Landroid/graphics/RectF;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p1

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v4, p1

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    move v5, v0

    :goto_1
    iget v2, v3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v4, p2

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v4, p2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v8

    move v7, v0

    :goto_2
    iput v1, p0, Luk/co/senab/photoview/f;->c:I

    iput v2, p0, Luk/co/senab/photoview/f;->d:I

    sget-boolean v0, Luk/co/senab/photoview/b;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "PhotoViewAttacher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fling. StartX:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " StartY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MaxX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MaxY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne v1, v6, :cond_3

    if-eq v2, v8, :cond_0

    :cond_3
    iget-object v0, p0, Luk/co/senab/photoview/f;->b:Luk/co/senab/photoview/j;

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Luk/co/senab/photoview/j;->a(IIIIIIII)V

    goto :goto_0

    :cond_4
    move v5, v1

    move v6, v1

    goto :goto_1

    :cond_5
    move v7, v2

    move v8, v2

    goto :goto_2
.end method

.method public final run()V
    .locals 6

    iget-object v0, p0, Luk/co/senab/photoview/f;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Luk/co/senab/photoview/f;->b:Luk/co/senab/photoview/j;

    invoke-virtual {v1}, Luk/co/senab/photoview/j;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Luk/co/senab/photoview/f;->b:Luk/co/senab/photoview/j;

    invoke-virtual {v1}, Luk/co/senab/photoview/j;->c()I

    move-result v1

    iget-object v2, p0, Luk/co/senab/photoview/f;->b:Luk/co/senab/photoview/j;

    invoke-virtual {v2}, Luk/co/senab/photoview/j;->d()I

    move-result v2

    sget-boolean v3, Luk/co/senab/photoview/b;->a:Z

    if-eqz v3, :cond_0

    const-string v3, "PhotoViewAttacher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fling run(). CurrentX:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Luk/co/senab/photoview/f;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CurrentY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Luk/co/senab/photoview/f;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NewX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NewY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Luk/co/senab/photoview/f;->a:Luk/co/senab/photoview/b;

    invoke-static {v3}, Luk/co/senab/photoview/b;->c(Luk/co/senab/photoview/b;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Luk/co/senab/photoview/f;->c:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Luk/co/senab/photoview/f;->d:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v3, p0, Luk/co/senab/photoview/f;->a:Luk/co/senab/photoview/b;

    iget-object v4, p0, Luk/co/senab/photoview/f;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v4}, Luk/co/senab/photoview/b;->j()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v3, v4}, Luk/co/senab/photoview/b;->a(Luk/co/senab/photoview/b;Landroid/graphics/Matrix;)V

    iput v1, p0, Luk/co/senab/photoview/f;->c:I

    iput v2, p0, Luk/co/senab/photoview/f;->d:I

    invoke-static {v0, p0}, Luk/co/senab/photoview/a;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
