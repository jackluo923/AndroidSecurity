.class public Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;
.super Ljava/lang/ref/SoftReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private path:Ljava/lang/String;

.field private size:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;->size:I

    iput-object p1, p0, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;->size:I

    return v0
.end method
