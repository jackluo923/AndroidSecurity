.class public abstract Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "ThirdPartyAuthorizeService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract authSign(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V
.end method

.method public abstract authSignFromDeskTop(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Landroid/content/Context;)V
.end method

.method public abstract getAuthStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;
.end method

.method public abstract getAuthStatusValidTid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;
.end method

.method public abstract isSigned(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract notifyUnlockAuthorizationApp(ZZLjava/lang/String;)V
.end method
