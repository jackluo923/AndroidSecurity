.class Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;
.super Ljava/lang/Object;
.source "ImageLoaderServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;

.field final synthetic val$imagePath:Ljava/lang/String;

.field final synthetic val$listener:Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;->val$listener:Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;->val$imagePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;->val$listener:Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;->val$imagePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;->onCancelled(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;->val$listener:Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;->val$imagePath:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;->onFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method public onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;->val$listener:Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;->val$imagePath:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;->onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 98
    return-void
.end method

.method public onPreLoad(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;->val$listener:Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;->val$imagePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;->onPreLoad(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;->val$listener:Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;->val$imagePath:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;->onProgressUpdate(Ljava/lang/String;D)V

    .line 88
    return-void
.end method
