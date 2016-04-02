.class Lcom/alipay/mobile/common/image/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/image/ImageLoader;

.field final synthetic val$group:Ljava/lang/String;

.field final synthetic val$height:I

.field final synthetic val$listener:Lcom/alipay/mobile/common/image/ImageLoaderListener;

.field final synthetic val$owner:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/image/ImageLoader;Lcom/alipay/mobile/common/image/ImageLoaderListener;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    iput-object p2, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$listener:Lcom/alipay/mobile/common/image/ImageLoaderListener;

    iput-object p3, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$path:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$width:I

    iput p5, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$height:I

    iput-object p6, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$owner:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$group:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$listener:Lcom/alipay/mobile/common/image/ImageLoaderListener;

    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPreLoad(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$path:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$width:I

    iget v3, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/image/ImageLoader;->createBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$listener:Lcom/alipay/mobile/common/image/ImageLoaderListener;

    iget-object v2, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$path:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 168
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;
    invoke-static {v1}, Lcom/alipay/mobile/common/image/ImageLoader;->access$000(Lcom/alipay/mobile/common/image/ImageLoader;)Lcom/alipay/mobile/common/cache/mem/MemCache;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$owner:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$group:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/common/cache/mem/MemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$listener:Lcom/alipay/mobile/common/image/ImageLoaderListener;

    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$1;->val$path:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "can\'t load."

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onFailed(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method
