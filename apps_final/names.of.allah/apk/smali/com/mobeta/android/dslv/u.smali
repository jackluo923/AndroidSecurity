.class Lcom/mobeta/android/dslv/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:F

.field protected b:J

.field c:Z

.field final synthetic d:Lcom/mobeta/android/dslv/DragSortListView;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;I)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    iput-object p1, p0, Lcom/mobeta/android/dslv/u;->d:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/mobeta/android/dslv/u;->e:F

    int-to-float v0, p2

    iput v0, p0, Lcom/mobeta/android/dslv/u;->a:F

    iget v0, p0, Lcom/mobeta/android/dslv/u;->e:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/mobeta/android/dslv/u;->e:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    iput v0, p0, Lcom/mobeta/android/dslv/u;->i:F

    iput v0, p0, Lcom/mobeta/android/dslv/u;->f:F

    iget v0, p0, Lcom/mobeta/android/dslv/u;->e:F

    iget v1, p0, Lcom/mobeta/android/dslv/u;->e:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mobeta/android/dslv/u;->g:F

    iget v0, p0, Lcom/mobeta/android/dslv/u;->e:F

    sub-float v0, v2, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/mobeta/android/dslv/u;->h:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mobeta/android/dslv/u;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/u;->c:Z

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/u;->a()V

    iget-object v0, p0, Lcom/mobeta/android/dslv/u;->d:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/u;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mobeta/android/dslv/u;->b:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/mobeta/android/dslv/u;->a:F

    div-float/2addr v0, v1

    cmpl-float v1, v0, v4

    if-ltz v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/mobeta/android/dslv/u;->a(F)V

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/u;->b()V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/mobeta/android/dslv/u;->e:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/mobeta/android/dslv/u;->f:F

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/u;->a(F)V

    iget-object v0, p0, Lcom/mobeta/android/dslv/u;->d:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/mobeta/android/dslv/u;->e:F

    sub-float v1, v4, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    iget v1, p0, Lcom/mobeta/android/dslv/u;->g:F

    iget v2, p0, Lcom/mobeta/android/dslv/u;->h:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/mobeta/android/dslv/u;->i:F

    sub-float v2, v0, v4

    mul-float/2addr v1, v2

    sub-float/2addr v0, v4

    mul-float/2addr v0, v1

    sub-float v0, v4, v0

    goto :goto_1
.end method
