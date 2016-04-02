.class public abstract Lcom/alipay/mobile/common/misc/ImageLoaderListenerAdapter;
.super Ljava/lang/Object;
.source "ImageLoaderListenerAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onPreLoad(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
