.class Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;
.super Ljava/lang/Object;
.source "TemplateImageLoader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;


# instance fields
.field a:Landroid/view/View;

.field b:Ljava/lang/String;

.field c:Z

.field final synthetic d:Lcom/alipay/android/app/template/TemplateImageLoader;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->d:Lcom/alipay/android/app/template/TemplateImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 334
    const-string/jumbo v0, "TemplateImageLoader"

    const-string/jumbo v1, "ImageLoader >>> onError"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->d:Lcom/alipay/android/app/template/TemplateImageLoader;

    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->c:Z

    iget-object v3, p0, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->a:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/template/TemplateImageLoader;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;)Z

    .line 336
    return-void
.end method

.method public onProcess(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 329
    const-string/jumbo v0, "TemplateImageLoader"

    const-string/jumbo v1, "ImageLoader >>> onProcess"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public onSucc(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 2

    .prologue
    .line 324
    const-string/jumbo v0, "TemplateImageLoader"

    const-string/jumbo v1, "ImageLoader >>> onSucc"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method
