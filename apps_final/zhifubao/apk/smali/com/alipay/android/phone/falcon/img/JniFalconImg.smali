.class public Lcom/alipay/android/phone/falcon/img/JniFalconImg;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CompressImageBitmapDefaultNoChange(Landroid/graphics/Bitmap;II)[B
.end method

.method public static native CompressImageBitmapDefaultnew(Landroid/graphics/Bitmap;II)[B
.end method

.method public static native CompressImageBitmapSizenew(Landroid/graphics/Bitmap;IIII)[B
.end method

.method public static native CutImage([BII)[B
.end method

.method public static native CutImage1([BIIIIF)[B
.end method

.method public static native CutImageBGR([BIIIIF[I)[I
.end method

.method public static native ResizeImage([BIIII)[B
.end method

.method public static native calcultDesWidthHeight(IIIIF[I)V
.end method

.method public static native combineImage([BII[BII[BII[BII[BII[BII)[B
.end method

.method public static initJni()V
    .locals 1

    const-string/jumbo v0, "FalconImg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
