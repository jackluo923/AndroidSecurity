.class public final Lcom/google/zxing/client/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x190

.field private static final MAX_FRAME_WIDTH:I = 0x258

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

.field private previewing:Z

.field private requestedFramingRectHeight:I

.field private requestedFramingRectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    .line 66
    new-instance v0, Lcom/google/zxing/client/android/camera/PreviewCallback;

    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/camera/PreviewCallback;-><init>(Lcom/google/zxing/client/android/camera/CameraConfigurationManager;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    .line 67
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v9

    .line 297
    .local v9, "rect":Landroid/graphics/Rect;
    if-nez v9, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    goto :goto_0
.end method

.method public declared-synchronized closeDriver()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFramingRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0xf0

    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v6, :cond_4

    .line 205
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 230
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v5

    .line 208
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 209
    .local v2, "screenResolution":Landroid/graphics/Point;
    if-eqz v2, :cond_0

    .line 213
    iget v5, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v4, v5, 0x4

    .line 214
    .local v4, "width":I
    if-ge v4, v7, :cond_5

    .line 215
    const/16 v4, 0xf0

    .line 219
    :cond_2
    :goto_1
    iget v5, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v0, v5, 0x4

    .line 220
    .local v0, "height":I
    if-ge v0, v7, :cond_6

    .line 221
    const/16 v0, 0xf0

    .line 225
    :cond_3
    :goto_2
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 226
    .local v1, "leftOffset":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x2

    .line 227
    .local v3, "topOffset":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 228
    sget-object v5, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calculated framing rect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    .end local v3    # "topOffset":I
    .end local v4    # "width":I
    :cond_4
    iget-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    .restart local v2    # "screenResolution":Landroid/graphics/Point;
    .restart local v4    # "width":I
    :cond_5
    const/16 v5, 0x258

    if-le v4, v5, :cond_2

    .line 217
    const/16 v4, 0x258

    goto :goto_1

    .line 222
    .restart local v0    # "height":I
    :cond_6
    const/16 v5, 0x190

    if-le v0, v5, :cond_3

    .line 223
    const/16 v0, 0x190

    goto :goto_2

    .line 204
    .end local v0    # "height":I
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    .end local v4    # "width":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 240
    .local v1, "framingRect":Landroid/graphics/Rect;
    if-nez v1, :cond_1

    .line 256
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 243
    .restart local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 244
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 245
    .local v0, "cameraResolution":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v3

    .line 246
    .local v3, "screenResolution":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 250
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 251
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 252
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 253
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 254
    iput-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 256
    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "screenResolution":Landroid/graphics/Point;
    :cond_2
    iget-object v4, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;)V
    .locals 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 77
    .local v4, "theCamera":Landroid/hardware/Camera;
    if-nez v4, :cond_1

    .line 78
    new-instance v5, Lcom/google/zxing/client/android/camera/open/OpenCameraManager;

    invoke-direct {v5}, Lcom/google/zxing/client/android/camera/open/OpenCameraManager;-><init>()V

    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/open/OpenCameraManager;->build()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;

    invoke-interface {v5}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->open()Landroid/hardware/Camera;

    move-result-object v4

    .line 79
    if-nez v4, :cond_0

    .line 80
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v4    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 82
    .restart local v4    # "theCamera":Landroid/hardware/Camera;
    :cond_0
    :try_start_1
    iput-object v4, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 84
    :cond_1
    invoke-virtual {v4, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 86
    iget-boolean v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    if-nez v5, :cond_2

    .line 87
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    .line 88
    iget-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v5, v4}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 89
    iget v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    if-lez v5, :cond_2

    .line 90
    iget v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    iget v6, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    invoke-virtual {p0, v5, v6}, Lcom/google/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 91
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    .line 92
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    .line 96
    :cond_2
    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 97
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_4

    const/4 v1, 0x0

    .line 99
    .local v1, "parametersFlattened":Ljava/lang/String;
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 97
    .end local v1    # "parametersFlattened":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 100
    .restart local v1    # "parametersFlattened":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 102
    .local v2, "re":Ljava/lang/RuntimeException;
    sget-object v5, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v6, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v5, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resetting to saved camera params: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    :try_start_4
    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 110
    iget-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 111
    :catch_1
    move-exception v3

    .line 113
    .local v3, "re2":Ljava/lang/RuntimeException;
    :try_start_5
    sget-object v5, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v6, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 190
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lcom/google/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 192
    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    .line 189
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setManualFramingRect(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    if-eqz v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 269
    .local v1, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    if-le p1, v3, :cond_0

    .line 270
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 272
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    if-le p2, v3, :cond_1

    .line 273
    iget p2, v1, Landroid/graphics/Point;->y:I

    .line 275
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    div-int/lit8 v0, v3, 0x2

    .line 276
    .local v0, "leftOffset":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    div-int/lit8 v2, v3, 0x2

    .line 277
    .local v2, "topOffset":I
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v0, p1

    add-int v5, v2, p2

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 278
    sget-object v3, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated manual framing rect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .end local v0    # "leftOffset":I
    .end local v1    # "screenResolution":Landroid/graphics/Point;
    .end local v2    # "topOffset":I
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    .line 282
    iput p2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setTorch(Z)V
    .locals 2
    .param p1, "newSetting"    # Z

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->stop()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setTorch(Landroid/hardware/Camera;Z)V

    .line 174
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_1
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPreview()V
    .locals 4

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 143
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    .line 146
    new-instance v1, Lcom/google/zxing/client/android/camera/AutoFocusManager;

    iget-object v2, p0, Lcom/google/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/client/android/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->stop()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 160
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
