.class Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:F

.field protected b:J

.field final synthetic c:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1136
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->c:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->d:F

    .line 1138
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->a:F

    .line 1139
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->d:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->d:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->h:F

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->e:F

    .line 1140
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->d:F

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->d:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->f:F

    .line 1141
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->d:F

    sub-float v0, v2, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->g:F

    .line 1142
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 1167
    return-void
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 1171
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 1175
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 1155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->b:J

    .line 1156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->i:Z

    .line 1157
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->a()V

    .line 1158
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->c:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 1159
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 1162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->i:Z

    .line 1163
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1179
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->i:Z

    if-eqz v0, :cond_0

    .line 1192
    :goto_0
    return-void

    .line 1183
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->b:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->a:F

    div-float/2addr v0, v1

    .line 1185
    cmpl-float v1, v0, v4

    if-ltz v1, :cond_1

    .line 1186
    invoke-virtual {p0, v4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->a(F)V

    .line 1187
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->b()V

    goto :goto_0

    .line 1189
    :cond_1
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->d:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->e:F

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->a(F)V

    .line 1190
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->c:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1189
    :cond_2
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->d:F

    sub-float v1, v4, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->f:F

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->g:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$SmoothAnimator;->h:F

    sub-float v2, v0, v4

    mul-float/2addr v1, v2

    sub-float/2addr v0, v4

    mul-float/2addr v0, v1

    sub-float v0, v4, v0

    goto :goto_1
.end method
