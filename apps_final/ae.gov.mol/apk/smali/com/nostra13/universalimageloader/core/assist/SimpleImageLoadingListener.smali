.class public Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
.super Ljava/lang/Object;
.source "SimpleImageLoadingListener.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onLoadingComplete(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 25
    return-void
.end method

.method public onLoadingFailed(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 20
    return-void
.end method

.method public onLoadingStarted()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method
