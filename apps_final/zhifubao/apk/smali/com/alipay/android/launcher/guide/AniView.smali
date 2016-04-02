.class public Lcom/alipay/android/launcher/guide/AniView;
.super Landroid/view/View;
.source "AniView.java"


# instance fields
.field bitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field dst:Landroid/graphics/RectF;

.field private framesId:[I

.field i:I

.field isCreated:Z

.field private mPaint:Landroid/graphics/Paint;

.field sourceHeight:I

.field sourceWidth:I

.field start:I

.field private vHeight:I

.field private vWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/alipay/android/tablauncher/R$drawable;->rocket_1:I

    aput v1, v0, v3

    const/4 v1, 0x1

    .line 23
    sget v2, Lcom/alipay/android/tablauncher/R$drawable;->rocket_3:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 24
    sget v2, Lcom/alipay/android/tablauncher/R$drawable;->rocket_6:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 25
    sget v2, Lcom/alipay/android/tablauncher/R$drawable;->rocket_8:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->framesId:[I

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->mPaint:Landroid/graphics/Paint;

    .line 45
    iput v3, p0, Lcom/alipay/android/launcher/guide/AniView;->i:I

    .line 46
    iput-boolean v3, p0, Lcom/alipay/android/launcher/guide/AniView;->isCreated:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->dst:Landroid/graphics/RectF;

    .line 125
    iput v3, p0, Lcom/alipay/android/launcher/guide/AniView;->start:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/alipay/android/tablauncher/R$drawable;->rocket_1:I

    aput v1, v0, v3

    const/4 v1, 0x1

    .line 23
    sget v2, Lcom/alipay/android/tablauncher/R$drawable;->rocket_3:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 24
    sget v2, Lcom/alipay/android/tablauncher/R$drawable;->rocket_6:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 25
    sget v2, Lcom/alipay/android/tablauncher/R$drawable;->rocket_8:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->framesId:[I

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->mPaint:Landroid/graphics/Paint;

    .line 45
    iput v3, p0, Lcom/alipay/android/launcher/guide/AniView;->i:I

    .line 46
    iput-boolean v3, p0, Lcom/alipay/android/launcher/guide/AniView;->isCreated:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->dst:Landroid/graphics/RectF;

    .line 125
    iput v3, p0, Lcom/alipay/android/launcher/guide/AniView;->start:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/alipay/android/tablauncher/R$drawable;->rocket_1:I

    aput v1, v0, v3

    const/4 v1, 0x1

    .line 23
    sget v2, Lcom/alipay/android/tablauncher/R$drawable;->rocket_3:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 24
    sget v2, Lcom/alipay/android/tablauncher/R$drawable;->rocket_6:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 25
    sget v2, Lcom/alipay/android/tablauncher/R$drawable;->rocket_8:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->framesId:[I

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->mPaint:Landroid/graphics/Paint;

    .line 45
    iput v3, p0, Lcom/alipay/android/launcher/guide/AniView;->i:I

    .line 46
    iput-boolean v3, p0, Lcom/alipay/android/launcher/guide/AniView;->isCreated:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->dst:Landroid/graphics/RectF;

    .line 125
    iput v3, p0, Lcom/alipay/android/launcher/guide/AniView;->start:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/guide/AniView;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 100
    iget v1, p0, Lcom/alipay/android/launcher/guide/AniView;->sourceWidth:I

    if-nez v1, :cond_0

    .line 101
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/alipay/android/launcher/guide/AniView;->sourceWidth:I

    .line 102
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/alipay/android/launcher/guide/AniView;->sourceHeight:I

    .line 105
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 107
    :try_start_0
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    iget v1, p0, Lcom/alipay/android/launcher/guide/AniView;->vWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alipay/android/launcher/guide/AniView;->start:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 113
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmaps(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alipay/android/launcher/guide/AniView;->framesId:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 91
    return-object v1

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/launcher/guide/AniView;->framesId:[I

    aget v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/alipay/android/launcher/guide/AniView;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "qqq"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "draw1 sourceWidth = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/android/launcher/guide/AniView;->sourceWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sourceHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/launcher/guide/AniView;->sourceHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/launcher/guide/AniView;->i:I

    iget-object v1, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "qqq"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "draw2 bitmapList.size() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "qqq"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "draw2.1 dst = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/launcher/guide/AniView;->dst:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/launcher/guide/AniView;->dst:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alipay/android/launcher/guide/AniView;->dst:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alipay/android/launcher/guide/AniView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 76
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "qqq"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "draw3 isCreated = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/android/launcher/guide/AniView;->isCreated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/alipay/android/launcher/guide/AniView;->vWidth:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/launcher/guide/AniView;->isCreated:Z

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/AniView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/guide/AniView;->getBitmaps(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "qqq"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "draw3.1 vWidth = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/android/launcher/guide/AniView;->vWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " vHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/launcher/guide/AniView;->vHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/android/launcher/guide/AniView;->vWidth:I

    iget v2, p0, Lcom/alipay/android/launcher/guide/AniView;->vHeight:I

    iget v3, p0, Lcom/alipay/android/launcher/guide/AniView;->sourceWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/alipay/android/launcher/guide/AniView;->sourceHeight:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/alipay/android/launcher/guide/AniView;->vWidth:I

    iget v4, p0, Lcom/alipay/android/launcher/guide/AniView;->vHeight:I

    iget v5, p0, Lcom/alipay/android/launcher/guide/AniView;->sourceWidth:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/alipay/android/launcher/guide/AniView;->sourceHeight:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/alipay/android/launcher/guide/AniView;->vHeight:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->dst:Landroid/graphics/RectF;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/launcher/guide/AniView;->isCreated:Z

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    iget v1, p0, Lcom/alipay/android/launcher/guide/AniView;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alipay/android/launcher/guide/AniView;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alipay/android/launcher/guide/AniView;->dst:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alipay/android/launcher/guide/AniView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 72
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "qqq"

    const-string/jumbo v2, "draw4 draw bitmap"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-wide/16 v0, 0x50

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/launcher/guide/AniView;->postInvalidateDelayed(J)V

    .line 75
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "qqq"

    const-string/jumbo v2, "draw4 bitmapList size = 0"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 119
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/AniView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/launcher/guide/AniView;->vWidth:I

    .line 120
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/AniView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/launcher/guide/AniView;->vHeight:I

    .line 121
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/AniView;->postInvalidate()V

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "qqq"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onMeasure vWidth = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/android/launcher/guide/AniView;->vWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " vHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/launcher/guide/AniView;->vHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public releaseBitmaps()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "qqq"

    const-string/jumbo v2, "releaseBitmaps"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 84
    :cond_0
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/AniView;->bitmapList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
