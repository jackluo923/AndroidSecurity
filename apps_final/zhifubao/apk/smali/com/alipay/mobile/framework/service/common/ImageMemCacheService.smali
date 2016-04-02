.class public abstract Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;
.super Lcom/alipay/mobile/framework/service/CommonService;
.source "ImageMemCacheService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract getMaxsize()J
.end method

.method public abstract getSize()J
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract removeByGroup(Ljava/lang/String;)V
.end method
