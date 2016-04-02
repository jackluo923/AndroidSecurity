.class Lcom/alipay/android/app/template/TemplateImageLoader$2;
.super Ljava/lang/Object;
.source "TemplateImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateImageLoader;

.field private final synthetic b:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

.field private final synthetic c:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateImageLoader;Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$2;->a:Lcom/alipay/android/app/template/TemplateImageLoader;

    iput-object p2, p0, Lcom/alipay/android/app/template/TemplateImageLoader$2;->b:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    iput-object p3, p0, Lcom/alipay/android/app/template/TemplateImageLoader$2;->c:Landroid/graphics/drawable/Drawable;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$2;->b:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$2;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$2;->b:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->c(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$2;->b:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$2;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$2;->b:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->d(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$2;->b:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$2;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
