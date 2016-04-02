.class public abstract Lcom/alipay/mobile/framework/service/common/DiskCacheService;
.super Lcom/alipay/mobile/framework/service/CommonService;
.source "DiskCacheService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public abstract getDirectory()Ljava/lang/String;
.end method

.method public abstract getMaxsize()J
.end method

.method public abstract getSize()J
.end method

.method public abstract open()V
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract removeByGroup(Ljava/lang/String;)V
.end method
