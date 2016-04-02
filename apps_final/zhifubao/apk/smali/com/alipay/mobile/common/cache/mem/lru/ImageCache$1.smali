.class Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;
.super Ljava/util/LinkedHashMap;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/alipay/mobile/common/cache/mem/Entity",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;IFZ)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;->this$0:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/cache/mem/Entity",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;->this$0:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    iget-wide v0, v0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mSize:J

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;->this$0:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    # invokes: Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->a()J
    invoke-static {v2}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->access$000(Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 43
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cache/mem/Entity;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/mem/Entity;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;

    .line 45
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;->this$0:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    iget-wide v2, v1, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mSize:J

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;->getSize()I

    move-result v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mSize:J

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
