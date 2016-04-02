.class public Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;
.super Lcom/alipay/mobile/common/cache/mem/Entity;
.source "ImageEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/cache/mem/Entity",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/cache/mem/Entity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;->a:I

    .line 20
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    const-string/jumbo v1, "value: %s size: %d"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
