.class Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;
.super Ljava/lang/Object;
.source "MyImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gov/mol/imageloader/MyImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadImages"
.end annotation


# instance fields
.field images:Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;

.field mImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/gov/mol/imageloader/MyImageLoader;

.field urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gov/mol/imageloader/MyImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "mImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->this$0:Lcom/gov/mol/imageloader/MyImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->urlString:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->mImageView:Landroid/widget/ImageView;

    .line 109
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 113
    iget-object v2, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->this$0:Lcom/gov/mol/imageloader/MyImageLoader;

    iget-object v3, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->urlString:Ljava/lang/String;

    iget-object v4, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/gov/mol/imageloader/MyImageLoader;->ImageViewReused(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->this$0:Lcom/gov/mol/imageloader/MyImageLoader;

    iget-object v3, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->urlString:Ljava/lang/String;

    # invokes: Lcom/gov/mol/imageloader/MyImageLoader;->DownloadFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/gov/mol/imageloader/MyImageLoader;->access$0(Lcom/gov/mol/imageloader/MyImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->this$0:Lcom/gov/mol/imageloader/MyImageLoader;

    iget-object v3, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->urlString:Ljava/lang/String;

    # invokes: Lcom/gov/mol/imageloader/MyImageLoader;->addBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v2, v3, v0}, Lcom/gov/mol/imageloader/MyImageLoader;->access$1(Lcom/gov/mol/imageloader/MyImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 117
    new-instance v1, Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;

    iget-object v2, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->this$0:Lcom/gov/mol/imageloader/MyImageLoader;

    iget-object v3, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->urlString:Ljava/lang/String;

    iget-object v4, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;-><init>(Lcom/gov/mol/imageloader/MyImageLoader;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 118
    .local v1, "images":Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;
    iget-object v2, p0, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "images":Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;
    :cond_0
    return-void
.end method
