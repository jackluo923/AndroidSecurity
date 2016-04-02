.class public abstract Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;
.super Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;
.source "LimitedMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final MAX_NORMAL_CACHE_SIZE:I = 0x1000000

.field private static final MAX_NORMAL_CACHE_SIZE_IN_MB:I = 0x10


# instance fields
.field private cacheSize:I

.field private final hardCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final sizeLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "sizeLimit"    # I

    .prologue
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache<TK;TV;>;"
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;-><init>()V

    .line 23
    iput v3, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:I

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    .line 37
    iput p1, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->sizeLimit:I

    .line 38
    const/high16 v0, 0x1000000

    if-le p1, v0, :cond_0

    .line 39
    const-string v0, "You set too large memory cache size (more than %1$d Mb)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache<TK;TV;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:I

    .line 81
    invoke-super {p0}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->clear()V

    .line 82
    return-void
.end method

.method protected abstract getSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method protected getSizeLimit()I
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache<TK;TV;>;"
    iget v0, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->sizeLimit:I

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 47
    .local v0, "putSuccessfully":Z
    invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->getSize(Ljava/lang/Object;)I

    move-result v3

    .line 48
    .local v3, "valueSize":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->getSizeLimit()I

    move-result v2

    .line 49
    .local v2, "sizeLimit":I
    if-ge v3, v2, :cond_2

    .line 50
    :cond_0
    :goto_0
    iget v4, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:I

    add-int/2addr v4, v3

    if-le v4, v2, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->removeNext()Ljava/lang/Object;

    move-result-object v1

    .line 52
    .local v1, "removedValue":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    iget v4, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:I

    invoke-virtual {p0, v1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->getSize(Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:I

    goto :goto_0

    .line 56
    .end local v1    # "removedValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget v4, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:I

    .line 59
    const/4 v0, 0x1

    .line 62
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    return v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget v1, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:I

    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->getSize(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->cacheSize:I

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->remove(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method protected abstract removeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method
