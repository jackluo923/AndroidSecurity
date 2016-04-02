.class public Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;
.super Landroid/widget/Button;
.source "ButtonComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/nativeui/component/ButtonComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonacaImageButton"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/nativeui/component/ButtonComponent;


# direct methods
.method public constructor <init>(Lmobi/monaca/framework/nativeui/component/ButtonComponent;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->this$0:Lmobi/monaca/framework/nativeui/component/ButtonComponent;

    .line 213
    invoke-direct {p0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 214
    return-void
.end method

.method private resizeImage()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 249
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->this$0:Lmobi/monaca/framework/nativeui/component/ButtonComponent;

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_style_image:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lmobi/monaca/framework/nativeui/component/ButtonComponent;->readImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->access$100(Lmobi/monaca/framework/nativeui/component/ButtonComponent;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 252
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->getMeasuredHeight()I

    move-result v2

    .line 253
    .local v2, "scaledHeight":I
    invoke-static {v0, v2}, Lmobi/monaca/framework/nativeui/UIUtil;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    .end local v2    # "scaledHeight":I
    :cond_0
    new-instance v1, Lmobi/monaca/framework/nativeui/component/ButtonComponent$ImageButtonDrawable;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->this$0:Lmobi/monaca/framework/nativeui/component/ButtonComponent;

    new-instance v4, Lmobi/monaca/framework/nativeui/NonScaleBitmapDrawable;

    invoke-direct {v4, v0}, Lmobi/monaca/framework/nativeui/NonScaleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v3, v4, v6}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$ImageButtonDrawable;-><init>(Lmobi/monaca/framework/nativeui/component/ButtonComponent;Landroid/graphics/drawable/Drawable;Lmobi/monaca/framework/nativeui/component/ButtonComponent$1;)V

    .line 257
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->this$0:Lmobi/monaca/framework/nativeui/component/ButtonComponent;

    iget-object v3, v3, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    invoke-virtual {v3, v1}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->this$0:Lmobi/monaca/framework/nativeui/component/ButtonComponent;

    iget-object v3, v3, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    invoke-virtual {v3, v5, v5, v5, v5}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setPadding(IIII)V

    .line 262
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->this$0:Lmobi/monaca/framework/nativeui/component/ButtonComponent;

    iget-object v3, v3, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->imageButton:Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;

    invoke-virtual {v3, v6}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 220
    :try_start_0
    iget-object v6, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->this$0:Lmobi/monaca/framework/nativeui/component/ButtonComponent;

    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_style_image:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lmobi/monaca/framework/nativeui/component/ButtonComponent;->readImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v6, v7}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->access$100(Lmobi/monaca/framework/nativeui/component/ButtonComponent;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 223
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 225
    .local v2, "height":I
    invoke-static {v5, p1}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->resolveSize(II)I

    move-result v4

    .line 226
    .local v4, "resolvedWidth":I
    invoke-static {v2, p2}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->resolveSize(II)I

    move-result v3

    .line 228
    .local v3, "resolvedHeight":I
    invoke-virtual {p0, v4, v3}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->setMeasuredDimension(II)V

    .line 236
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "resolvedHeight":I
    .end local v4    # "resolvedWidth":I
    .end local v5    # "width":I
    :goto_0
    return-void

    .line 230
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onMeasure(II)V
    :try_end_0
    .catch Lmobi/monaca/framework/nativeui/exception/NativeUIIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;->printStackTrace()V

    .line 234
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onMeasure(II)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 241
    :try_start_0
    invoke-direct {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$MonacaImageButton;->resizeImage()V
    :try_end_0
    .catch Lmobi/monaca/framework/nativeui/exception/NativeUIIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 246
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;->printStackTrace()V

    goto :goto_0
.end method
