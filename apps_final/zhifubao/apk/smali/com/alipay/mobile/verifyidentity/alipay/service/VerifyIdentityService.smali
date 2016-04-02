.class public abstract Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "VerifyIdentityService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAppDataProvider()Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;
.end method

.method public abstract setAppDataProvider(Lcom/alipay/mobile/verifyidentity/dataprovider/AppDataProvider;)V
.end method

.method public abstract startVerifyByToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;)V
.end method
