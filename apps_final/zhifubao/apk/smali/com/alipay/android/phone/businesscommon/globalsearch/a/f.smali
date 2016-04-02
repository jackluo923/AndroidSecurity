.class final Lcom/alipay/android/phone/businesscommon/globalsearch/a/f;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

.field final synthetic c:Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/f;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final display(Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 282
    const-string/jumbo v0, "TemplateImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "multimedia Apdisplayer display : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    if-nez p2, :cond_0

    .line 294
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/f;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;)Landroid/support/v4/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/f;->a:Ljava/lang/String;

    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/f;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/f;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    invoke-static {v0, v1, p2, p3}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method
