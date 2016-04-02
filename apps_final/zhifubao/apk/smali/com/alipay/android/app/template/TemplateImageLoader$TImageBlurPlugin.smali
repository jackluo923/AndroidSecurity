.class Lcom/alipay/android/app/template/TemplateImageLoader$TImageBlurPlugin;
.super Ljava/lang/Object;
.source "TemplateImageLoader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;


# instance fields
.field a:I

.field b:Landroid/view/View;

.field final synthetic c:Lcom/alipay/android/app/template/TemplateImageLoader;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageBlurPlugin;->c:Lcom/alipay/android/app/template/TemplateImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPluginKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    const-string/jumbo v0, "BlurPlugin"

    return-object v0
.end method

.method public process(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageBlurPlugin;->a:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageBlurPlugin;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageBlurPlugin;->b:Landroid/view/View;

    iget v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageBlurPlugin;->a:I

    invoke-static {p2, v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->blur(Landroid/graphics/Bitmap;Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 313
    :cond_0
    return-object p2
.end method
