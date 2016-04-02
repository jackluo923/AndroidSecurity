.class public Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;
.super Ljava/lang/Object;
.source "FuzzyKeyMemoryCache.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
            "<TK;TV;>;",
            "Ljava/util/Comparator",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache<TK;TV;>;"
    .local p1, "cache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;, "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware<TK;TV;>;"
    .local p2, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    .line 24
    iput-object p2, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;

    .line 25
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->keys()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    const/4 v2, 0x0

    .line 31
    .local v2, "keyToRemove":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v3}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->keys()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "keyToRemove":Ljava/lang/Object;, "TK;"
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, "cacheKey":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;

    invoke-interface {v3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_0

    .line 34
    move-object v2, v0

    .restart local v2    # "keyToRemove":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 37
    .end local v0    # "cacheKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "keyToRemove":Ljava/lang/Object;, "TK;"
    :cond_1
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v3, v2}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->remove(Ljava/lang/Object;)V

    .line 39
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v3, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit p0

    return v3

    .line 30
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->remove(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
