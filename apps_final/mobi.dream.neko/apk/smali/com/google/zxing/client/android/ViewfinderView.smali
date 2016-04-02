.class public final Lcom/google/zxing/client/android/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x50L

.field private static final CURRENT_POINT_OPACITY:I = 0xa0

.field private static final MAX_RESULT_POINTS:I = 0x14

.field private static final POINT_SIZE:I = 0x6

.field private static final SCANNER_ALPHA:[I

.field private static fakeR:Lcom/google/zxing/FakeR;


# instance fields
.field private cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private final laserColor:I

.field private lastPossibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private scannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/client/android/ViewfinderView;->SCANNER_ALPHA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v1, Lcom/google/zxing/FakeR;

    invoke-direct {v1, p1}, Lcom/google/zxing/FakeR;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/zxing/client/android/ViewfinderView;->fakeR:Lcom/google/zxing/FakeR;

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, "resources":Landroid/content/res/Resources;
    sget-object v1, Lcom/google/zxing/client/android/ViewfinderView;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "color"

    const-string v3, "viewfinder_mask"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->maskColor:I

    .line 72
    sget-object v1, Lcom/google/zxing/client/android/ViewfinderView;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "color"

    const-string v3, "result_view"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultColor:I

    .line 73
    sget-object v1, Lcom/google/zxing/client/android/ViewfinderView;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "color"

    const-string v3, "viewfinder_laser"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->laserColor:I

    .line 74
    sget-object v1, Lcom/google/zxing/client/android/ViewfinderView;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "color"

    const-string v3, "possible_result_points"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultPointColor:I

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->scannerAlpha:I

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 78
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 4
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 183
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    monitor-enter v0

    .line 184
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 186
    .local v1, "size":I
    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 188
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0xa

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 190
    :cond_0
    monitor-exit v0

    .line 191
    return-void

    .line 190
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 178
    invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->invalidate()V

    .line 179
    return-void
.end method

.method public drawViewfinder()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 164
    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 165
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->invalidate()V

    .line 169
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    if-nez v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 90
    .local v11, "frame":Landroid/graphics/Rect;
    if-eqz v11, :cond_0

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v22

    .line 94
    .local v22, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v14

    .line 97
    .local v14, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v22

    int-to-float v5, v0

    iget v2, v11, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    const/4 v3, 0x0

    iget v2, v11, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v11, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 100
    iget v2, v11, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v3, v2

    iget v2, v11, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move/from16 v0, v22

    int-to-float v5, v0

    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 101
    const/4 v3, 0x0

    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    move/from16 v0, v22

    int-to-float v5, v0

    int-to-float v6, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v11, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 97
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->maskColor:I

    goto :goto_1

    .line 110
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/client/android/ViewfinderView;->laserColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v3, Lcom/google/zxing/client/android/ViewfinderView;->SCANNER_ALPHA:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/client/android/ViewfinderView;->scannerAlpha:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->scannerAlpha:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/google/zxing/client/android/ViewfinderView;->SCANNER_ALPHA:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->scannerAlpha:I

    .line 113
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v11, Landroid/graphics/Rect;->top:I

    add-int v16, v2, v3

    .line 114
    .local v16, "middle":I
    iget v2, v11, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    add-int/lit8 v2, v16, -0x1

    int-to-float v4, v2

    iget v2, v11, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    add-int/lit8 v2, v16, 0x2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v18

    .line 117
    .local v18, "previewFrame":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v20, v2, v3

    .line 118
    .local v20, "scaleX":F
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v21, v2, v3

    .line 120
    .local v21, "scaleY":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 121
    .local v10, "currentPossible":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 122
    .local v9, "currentLast":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    iget v12, v11, Landroid/graphics/Rect;->left:I

    .line 123
    .local v12, "frameLeft":I
    iget v13, v11, Landroid/graphics/Rect;->top:I

    .line 124
    .local v13, "frameTop":I
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 139
    :goto_2
    if-eqz v9, :cond_7

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    monitor-enter v9

    .line 143
    const/high16 v19, 0x40400000    # 3.0f

    .line 144
    .local v19, "radius":F
    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/ResultPoint;

    .line 145
    .local v17, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    mul-float v2, v2, v20

    float-to-int v2, v2

    add-int/2addr v2, v12

    int-to-float v2, v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    mul-float v3, v3, v21

    float-to-int v3, v3

    add-int/2addr v3, v13

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 149
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "point":Lcom/google/zxing/ResultPoint;
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 127
    .end local v19    # "radius":F
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 128
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    monitor-enter v10

    .line 132
    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/ResultPoint;

    .line 133
    .restart local v17    # "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    mul-float v2, v2, v20

    float-to-int v2, v2

    add-int/2addr v2, v12

    int-to-float v2, v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    mul-float v3, v3, v21

    float-to-int v3, v3

    add-int/2addr v3, v13

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 137
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "point":Lcom/google/zxing/ResultPoint;
    :catchall_1
    move-exception v2

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    .line 149
    .restart local v19    # "radius":F
    :cond_6
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v19    # "radius":F
    :cond_7
    const-wide/16 v3, 0x50

    iget v2, v11, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v2, -0x6

    iget v2, v11, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v2, -0x6

    iget v2, v11, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v2, 0x6

    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v2, 0x6

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/zxing/client/android/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0
.end method

.method public setCameraManager(Lcom/google/zxing/client/android/camera/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcom/google/zxing/client/android/camera/CameraManager;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 82
    return-void
.end method
