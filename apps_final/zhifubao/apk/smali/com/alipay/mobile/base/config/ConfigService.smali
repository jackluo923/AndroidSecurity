.class public abstract Lcom/alipay/mobile/base/config/ConfigService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "ConfigService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract loadConfig()V
.end method

.method public abstract loadConfigImmediately(J)V
.end method

.method public abstract refreshAfterLogin(Ljava/lang/String;)V
.end method
