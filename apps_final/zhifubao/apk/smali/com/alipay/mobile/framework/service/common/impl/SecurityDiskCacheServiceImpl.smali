.class public Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/SecurityDiskCacheService;
.source "SecurityDiskCacheServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;-><init>(Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/SecurityDiskCacheService;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->close()V

    .line 60
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxsize()J
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->getMaxsize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->open()V

    .line 65
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    .locals 10

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    .line 55
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->remove(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public removeByGroup(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->removeByGroup(Ljava/lang/String;)V

    .line 44
    return-void
.end method
