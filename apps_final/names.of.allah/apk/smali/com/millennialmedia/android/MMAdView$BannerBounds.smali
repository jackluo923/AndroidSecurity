.class Lcom/millennialmedia/android/MMAdView$BannerBounds;
.super Ljava/lang/Object;


# instance fields
.field resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

.field final synthetic this$0:Lcom/millennialmedia/android/MMAdView;

.field translationX:I

.field translationY:I


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 1

    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v0, p2, Lcom/millennialmedia/android/DTOResizeParameters;->offsetX:I

    iput v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationX:I

    iget v0, p2, Lcom/millennialmedia/android/DTOResizeParameters;->offsetY:I

    iput v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationY:I

    return-void
.end method

.method private calculateBounds(IIII)Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;
    .locals 2

    add-int v0, p1, p3

    add-int/2addr v0, p2

    if-le v0, p4, :cond_2

    sub-int v0, p4, p3

    add-int/2addr p2, v0

    if-gez p2, :cond_1

    const/4 p2, 0x0

    move p3, p4

    :cond_0
    :goto_0
    new-instance v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;-><init>(Lcom/millennialmedia/android/MMAdView$BannerBounds;Lcom/millennialmedia/android/MMAdView$1;)V

    sub-int v1, p2, p1

    iput v1, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->translation:I

    iput p3, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->size:I

    return-object v0

    :cond_1
    add-int v0, p2, p3

    if-le v0, p4, :cond_0

    sub-int p2, p4, p3

    goto :goto_0

    :cond_2
    if-gtz p2, :cond_0

    move p2, p1

    goto :goto_0
.end method

.method private calculateXBounds()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v1, v1, Lcom/millennialmedia/android/DTOResizeParameters;->offsetX:I

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v2, v2, Lcom/millennialmedia/android/DTOResizeParameters;->width:I

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v3, v3, Lcom/millennialmedia/android/DTOResizeParameters;->xMax:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->calculateBounds(IIII)Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v2, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->size:I

    iput v2, v1, Lcom/millennialmedia/android/DTOResizeParameters;->width:I

    iget v0, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->translation:I

    iput v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationX:I

    return-void
.end method

.method private calculateYBounds()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v1, v1, Lcom/millennialmedia/android/DTOResizeParameters;->offsetY:I

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v2, v2, Lcom/millennialmedia/android/DTOResizeParameters;->height:I

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v3, v3, Lcom/millennialmedia/android/DTOResizeParameters;->yMax:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->calculateBounds(IIII)Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v2, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->size:I

    iput v2, v1, Lcom/millennialmedia/android/DTOResizeParameters;->height:I

    iget v0, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->translation:I

    iput v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->translationY:I

    return-void
.end method


# virtual methods
.method calculateOnScreenBounds()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->calculateXBounds()V

    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->calculateYBounds()V

    return-void
.end method

.method modifyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v0, v0, Lcom/millennialmedia/android/DTOResizeParameters;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v0, v0, Lcom/millennialmedia/android/DTOResizeParameters;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p1
.end method
