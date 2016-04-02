.class Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache$1;
.super Ljava/util/LinkedHashMap;
.source "LruMemCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/alipay/mobile/common/cache/mem/Entity",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;IFZ)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache$1;->this$0:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/cache/mem/Entity",
            "<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 38
    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
