.class public abstract Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;
.super Ljava/lang/Object;
.source "ImageLoadCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public abstract onSuccess(Landroid/graphics/Bitmap;)V
.end method
