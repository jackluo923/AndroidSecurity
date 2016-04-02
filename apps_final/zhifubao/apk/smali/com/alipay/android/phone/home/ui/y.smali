.class final Lcom/alipay/android/phone/home/ui/y;
.super Ljava/lang/Object;
.source "HeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HeaderView;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:I

.field private final synthetic d:F

.field private final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HeaderView;Landroid/view/View;IFLandroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/y;->a:Lcom/alipay/android/phone/home/ui/HeaderView;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/y;->b:Landroid/view/View;

    iput p3, p0, Lcom/alipay/android/phone/home/ui/y;->c:I

    iput p4, p0, Lcom/alipay/android/phone/home/ui/y;->d:F

    iput-object p5, p0, Lcom/alipay/android/phone/home/ui/y;->e:Landroid/view/View;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 344
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 345
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/y;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 346
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/android/phone/home/ui/y;->c:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/android/phone/home/ui/y;->d:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 347
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/android/phone/home/ui/y;->c:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/android/phone/home/ui/y;->d:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 348
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/android/phone/home/ui/y;->c:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/android/phone/home/ui/y;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 349
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/android/phone/home/ui/y;->c:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/android/phone/home/ui/y;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 350
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/y;->b:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 351
    const-class v0, Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/y;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "HeaderView"

    const-string/jumbo v3, "Expand click effects of a View"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/y;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 355
    :cond_0
    return-void
.end method
