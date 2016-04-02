.class public Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;
.source "GenericMemCacheServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;-><init>()V

    .line 19
    invoke-static {}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->getInstance()Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    .line 20
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeByGroup(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->removeByGroup(Ljava/lang/String;)V

    .line 25
    return-void
.end method
