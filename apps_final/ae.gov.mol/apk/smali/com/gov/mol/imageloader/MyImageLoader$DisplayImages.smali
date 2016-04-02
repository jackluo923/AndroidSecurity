.class Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;
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
    name = "DisplayImages"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field mImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/gov/mol/imageloader/MyImageLoader;

.field urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gov/mol/imageloader/MyImageLoader;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "mImageView"    # Landroid/widget/ImageView;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;->this$0:Lcom/gov/mol/imageloader/MyImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;->urlString:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;->mImageView:Landroid/widget/ImageView;

    .line 136
    iput-object p4, p0, Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;->bitmap:Landroid/graphics/Bitmap;

    .line 137
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;->this$0:Lcom/gov/mol/imageloader/MyImageLoader;

    iget-object v1, p0, Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;->urlString:Ljava/lang/String;

    iget-object v2, p0, Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/gov/mol/imageloader/MyImageLoader;->ImageViewReused(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
