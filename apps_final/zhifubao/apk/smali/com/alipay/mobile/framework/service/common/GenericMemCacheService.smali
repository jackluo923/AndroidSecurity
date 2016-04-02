.class public abstract Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;
.super Lcom/alipay/mobile/framework/service/CommonService;
.source "GenericMemCacheService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract remove(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract removeByGroup(Ljava/lang/String;)V
.end method
