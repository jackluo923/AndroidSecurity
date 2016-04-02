.class public Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/CacheManagerService;
.source "CacheManagerServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

.field private b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/service/common/DiskCacheService;Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    .line 30
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->close()V

    .line 135
    return-void
.end method

.method public getDiskCacheService()Lcom/alipay/mobile/framework/service/common/DiskCacheService;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    return-object v0
.end method

.method public getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->open()V

    .line 72
    return-void
.end method

.method public put2Cache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[BJJLjava/lang/String;)V
    .locals 10

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;->a:Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-object/from16 v9, p10

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    .line 130
    return-void
.end method
