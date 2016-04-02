.class public abstract Lcom/alipay/mobile/framework/service/common/SecurityDiskCacheService;
.super Lcom/alipay/mobile/framework/service/common/DiskCacheService;
.source "SecurityDiskCacheService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/DiskCacheService;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxsize()J
    .locals 2

    .prologue
    .line 21
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public open()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public removeByGroup(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
