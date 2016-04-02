.class Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache$1;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/alipay/mobile/common/cache/mem/Entity",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4192e41ab1bc426bL


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;IFZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache$1;->this$0:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

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
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache$1;->this$0:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

    iget-wide v2, v0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->mSize:J

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache$1;->this$0:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->getSkiaSize()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableEntity;->getSize()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache$1;->this$0:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

    iget-wide v4, v3, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->mSize:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->mSize:J

    invoke-virtual {v0}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableEntity;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache$1;->this$0:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

    # invokes: Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->setCacheState(Landroid/graphics/drawable/BitmapDrawable;Z)V
    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->access$4(Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;Landroid/graphics/drawable/BitmapDrawable;Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
