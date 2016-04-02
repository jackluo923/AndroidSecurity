.class Lcom/alipay/android/app/template/TemplateImageLoader$1;
.super Landroid/support/v4/util/LruCache;
.source "TemplateImageLoader.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateImageLoader;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateImageLoader;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$1;->a:Lcom/alipay/android/app/template/TemplateImageLoader;

    .line 70
    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/TemplateImageLoader$1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method
