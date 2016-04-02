.class public abstract Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;
.super Ljava/lang/Object;
.source "BaseMemoryCache.java"

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
.field private final softMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/ref/Reference",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache<TK;TV;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 49
    return-void
.end method

.method protected abstract createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/ref/Reference",
            "<TV;>;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 23
    .local v1, "result":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 24
    .local v0, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TV;>;"
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 27
    .end local v1    # "result":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object v1
.end method

.method public keys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache<TK;TV;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;, "Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method
