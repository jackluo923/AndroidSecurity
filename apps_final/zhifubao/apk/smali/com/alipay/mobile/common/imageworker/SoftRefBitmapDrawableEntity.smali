.class public Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;
.super Lcom/alipay/mobile/common/cache/mem/Entity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/cache/mem/Entity",
        "<",
        "Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;",
        ">;"
    }
.end annotation


# instance fields
.field private mSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/cache/mem/Entity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;->getSize()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;->mSize:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "value: %s size: %d"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;->mSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
