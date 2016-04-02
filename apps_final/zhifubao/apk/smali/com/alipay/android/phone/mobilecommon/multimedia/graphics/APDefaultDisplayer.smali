.class public abstract Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDefaultDisplayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public display(Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public display(Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDefaultDisplayer;->display(Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
