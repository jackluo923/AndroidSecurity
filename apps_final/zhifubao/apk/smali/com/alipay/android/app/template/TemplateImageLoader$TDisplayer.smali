.class Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;
.super Ljava/lang/Object;
.source "TemplateImageLoader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

.field final synthetic c:Lcom/alipay/android/app/template/TemplateImageLoader;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->c:Lcom/alipay/android/app/template/TemplateImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public display(Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 345
    const-string/jumbo v0, "TemplateImageLoader"

    const-string/jumbo v1, "multimedia Apdisplayer display"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    if-nez p2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->b:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->c:Lcom/alipay/android/app/template/TemplateImageLoader;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader;->a(Lcom/alipay/android/app/template/TemplateImageLoader;)Landroid/support/v4/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->a:Ljava/lang/String;

    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->b:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->c:Lcom/alipay/android/app/template/TemplateImageLoader;

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateImageLoader;->b(Lcom/alipay/android/app/template/TemplateImageLoader;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 358
    const-string/jumbo v0, "TemplateImageLoader"

    const-string/jumbo v1, "url input is NOT excepted!!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->c:Lcom/alipay/android/app/template/TemplateImageLoader;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->b:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v0, v1, p2}, Lcom/alipay/android/app/template/TemplateImageLoader;->a(Lcom/alipay/android/app/template/TemplateImageLoader;Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
