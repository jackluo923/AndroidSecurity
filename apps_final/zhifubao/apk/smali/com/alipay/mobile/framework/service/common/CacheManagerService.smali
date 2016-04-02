.class public abstract Lcom/alipay/mobile/framework/service/common/CacheManagerService;
.super Lcom/alipay/mobile/framework/service/CommonService;
.source "CacheManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract getDiskCacheService()Lcom/alipay/mobile/framework/service/common/DiskCacheService;
.end method

.method public abstract getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;
.end method

.method public abstract getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract open()V
.end method

.method public abstract put2Cache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[BJJLjava/lang/String;)V
.end method
