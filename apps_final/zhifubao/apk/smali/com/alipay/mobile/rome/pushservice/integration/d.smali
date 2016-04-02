.class public Lcom/alipay/mobile/rome/pushservice/integration/d;
.super Ljava/lang/Object;
.source "PushImageWorkerCallback.java"

# interfaces
.implements Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/rome/pushservice/integration/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    const-class v1, Lcom/alipay/mobile/rome/pushservice/integration/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/d;->a:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/rome/pushservice/integration/j;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/integration/d;->b:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/alipay/mobile/rome/pushservice/integration/d;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    .line 25
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCancel  path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/d;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/m;->c()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/d;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a(Z)V

    .line 76
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/f;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/d;->b:Landroid/content/Context;

    .line 77
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/d;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/rome/pushservice/integration/f;-><init>(Landroid/content/Context;Lcom/alipay/mobile/rome/pushservice/integration/j;)V

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Landroid/graphics/Bitmap;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onFailure  path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 51
    const-string/jumbo v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/d;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/m;->c()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/d;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a(Z)V

    .line 57
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/f;

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/d;->b:Landroid/content/Context;

    .line 58
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/d;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    .line 57
    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/rome/pushservice/integration/f;-><init>(Landroid/content/Context;Lcom/alipay/mobile/rome/pushservice/integration/j;)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Landroid/graphics/Bitmap;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 29
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStart  path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 36
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSuccess  path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/d;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/m;->c()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    new-instance v1, Lcom/alipay/mobile/rome/pushservice/integration/f;

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/d;->b:Landroid/content/Context;

    .line 43
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/d;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    .line 42
    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/f;-><init>(Landroid/content/Context;Lcom/alipay/mobile/rome/pushservice/integration/j;)V

    .line 44
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drawable2Bitmap drawable-width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", drawable-height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Landroid/graphics/Bitmap;)V

    .line 46
    :cond_2
    return-void

    .line 44
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method
