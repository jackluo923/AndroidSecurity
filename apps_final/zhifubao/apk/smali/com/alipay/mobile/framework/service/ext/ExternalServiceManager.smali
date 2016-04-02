.class public abstract Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;
.super Lcom/alipay/mobile/framework/service/CommonService;
.source "ExternalServiceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getExternalService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
.end method

.method public abstract registerExternalService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V
.end method
