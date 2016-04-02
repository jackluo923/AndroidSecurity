.class Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache$1;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/alipay/mobile/common/cache/mem/Entity",
        "<",
        "Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4192e41ab1bc426bL


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;IFZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache$1;->this$0:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/cache/mem/Entity",
            "<",
            "Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache$1;->this$0:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    iget-wide v2, v0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mSize:J

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache$1;->this$0:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    # invokes: Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->getSkiaSize()J
    invoke-static {v0}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->access$4(Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;->getSize()I

    move-result v2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "ImageWorker-cache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, ",\u5f53\u524d\u7f13\u5b58\u5927\u5c0f="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache$1;->this$0:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    iget-wide v6, v6, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\uff0c\u5c06\u91ca\u653e\u7f13\u5b58\u5927\u5c0f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache$1;->this$0:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    iget-wide v4, v3, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mSize:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mSize:J

    invoke-virtual {v0}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;

    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache$1;->this$0:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    # invokes: Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->setCacheState(Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;Z)V
    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->access$5(Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
