.class public abstract Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindingFinish(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V
.end method

.method public abstract queryTaobaoBindingByMobile(Ljava/lang/String;)V
.end method

.method public abstract setBindingCallback(Lcom/alipay/mobile/framework/service/ext/security/TaobaoBindingCallback;)V
.end method

.method public abstract setMicroApplication(Lcom/alipay/mobile/framework/app/MicroApplication;)V
.end method

.method public abstract setQueryBindingCallback(Lcom/alipay/mobile/framework/service/ext/security/TaobaoQueryBindingCallback;)V
.end method

.method public abstract taobaoQuickBinding(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
.end method
