.class public abstract Lcom/alipay/mobile/framework/service/common/ImageLoaderService;
.super Lcom/alipay/mobile/framework/service/CommonService;
.source "ImageLoaderService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;)V
.end method

.method public abstract loadFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
.end method

.method public abstract startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;II)V
.end method

.method public abstract startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V
.end method
