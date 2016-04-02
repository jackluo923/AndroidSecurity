.class public Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageCacheQuery;
.super Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQuery;


# instance fields
.field public height:I

.field public plugin:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;

.field public width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageCacheQuery;-><init>(Ljava/lang/String;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQuery;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageCacheQuery;->width:I

    iput p3, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageCacheQuery;->height:I

    iput-object p4, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageCacheQuery;->plugin:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "APImageCacheQuery{width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageCacheQuery;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageCacheQuery;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", plugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageCacheQuery;->plugin:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageCacheQuery;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
