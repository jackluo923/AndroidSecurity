.class public abstract Lcom/alipay/mobile/framework/service/ext/security/NicknameService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract callback(Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;)V
.end method

.method public abstract getNickname(Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;)V
.end method

.method public abstract getNicknameWithPreCheck(Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;)V
.end method

.method public abstract goToSetNickname(Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;Landroid/os/Bundle;)V
.end method
