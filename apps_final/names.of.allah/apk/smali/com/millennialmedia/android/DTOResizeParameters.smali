.class Lcom/millennialmedia/android/DTOResizeParameters;
.super Ljava/lang/Object;


# instance fields
.field allowOffScreen:Z

.field customClosePosition:Ljava/lang/String;

.field height:I

.field offsetX:I

.field offsetY:I

.field width:I

.field xMax:I

.field yMax:I


# direct methods
.method constructor <init>(FIILjava/lang/String;IIZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/DTOResizeParameters;->width:I

    int-to-float v0, p3

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/DTOResizeParameters;->height:I

    iput-object p4, p0, Lcom/millennialmedia/android/DTOResizeParameters;->customClosePosition:Ljava/lang/String;

    int-to-float v0, p5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/DTOResizeParameters;->offsetX:I

    int-to-float v0, p6

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/DTOResizeParameters;->offsetY:I

    iput-boolean p7, p0, Lcom/millennialmedia/android/DTOResizeParameters;->allowOffScreen:Z

    iput p8, p0, Lcom/millennialmedia/android/DTOResizeParameters;->xMax:I

    iput p9, p0, Lcom/millennialmedia/android/DTOResizeParameters;->yMax:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "width[%d] height[%d] offsetX[%d] offsetY[%d] allowOffScreen[%b] customClosePosition[%s] maxX[%d] maxY[%d]"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->offsetX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->offsetY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->allowOffScreen:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->customClosePosition:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->xMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/millennialmedia/android/DTOResizeParameters;->yMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
