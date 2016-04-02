.class final Luk/co/senab/photoview/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Luk/co/senab/photoview/b;

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F


# direct methods
.method public constructor <init>(Luk/co/senab/photoview/b;FFFF)V
    .locals 1

    iput-object p1, p0, Luk/co/senab/photoview/e;->a:Luk/co/senab/photoview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Luk/co/senab/photoview/e;->d:F

    iput p4, p0, Luk/co/senab/photoview/e;->b:F

    iput p5, p0, Luk/co/senab/photoview/e;->c:F

    cmpg-float v0, p2, p3

    if-gez v0, :cond_0

    const v0, 0x3f88f5c3    # 1.07f

    iput v0, p0, Luk/co/senab/photoview/e;->e:F

    :goto_0
    return-void

    :cond_0
    const v0, 0x3f6e147b    # 0.93f

    iput v0, p0, Luk/co/senab/photoview/e;->e:F

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v0, p0, Luk/co/senab/photoview/e;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v0}, Luk/co/senab/photoview/b;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Luk/co/senab/photoview/e;->a:Luk/co/senab/photoview/b;

    invoke-static {v1}, Luk/co/senab/photoview/b;->c(Luk/co/senab/photoview/b;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Luk/co/senab/photoview/e;->e:F

    iget v3, p0, Luk/co/senab/photoview/e;->e:F

    iget v4, p0, Luk/co/senab/photoview/e;->b:F

    iget v5, p0, Luk/co/senab/photoview/e;->c:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v1, p0, Luk/co/senab/photoview/e;->a:Luk/co/senab/photoview/b;

    invoke-static {v1}, Luk/co/senab/photoview/b;->d(Luk/co/senab/photoview/b;)V

    iget-object v1, p0, Luk/co/senab/photoview/e;->a:Luk/co/senab/photoview/b;

    invoke-virtual {v1}, Luk/co/senab/photoview/b;->g()F

    move-result v1

    iget v2, p0, Luk/co/senab/photoview/e;->e:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    iget v2, p0, Luk/co/senab/photoview/e;->d:F

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_1

    :cond_0
    iget v2, p0, Luk/co/senab/photoview/e;->e:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_3

    iget v2, p0, Luk/co/senab/photoview/e;->d:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_3

    :cond_1
    invoke-static {v0, p0}, Luk/co/senab/photoview/a;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Luk/co/senab/photoview/e;->d:F

    div-float/2addr v0, v1

    iget-object v1, p0, Luk/co/senab/photoview/e;->a:Luk/co/senab/photoview/b;

    invoke-static {v1}, Luk/co/senab/photoview/b;->c(Luk/co/senab/photoview/b;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Luk/co/senab/photoview/e;->b:F

    iget v3, p0, Luk/co/senab/photoview/e;->c:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Luk/co/senab/photoview/e;->a:Luk/co/senab/photoview/b;

    invoke-static {v0}, Luk/co/senab/photoview/b;->d(Luk/co/senab/photoview/b;)V

    goto :goto_0
.end method
