.class public abstract Lcom/alipay/mobile/framework/service/ext/card/ExpressCardService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "ExpressCardService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearCallback()V
.end method

.method public abstract newExpressCard(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/card/NewExpressCardCallback;)V
.end method

.method public abstract newExpressCard(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/card/NewExpressCardCallback;Landroid/os/Bundle;)V
.end method

.method public abstract newExpressCard(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/card/NewExpressCardCallbackV3;Landroid/os/Bundle;)V
.end method

.method public abstract newExpressCardV2(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/card/NewExpressCardCallbackV2;Landroid/os/Bundle;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
