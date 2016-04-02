.class Lcom/alipay/android/launcher/TabLauncherValve$3;
.super Ljava/lang/Object;
.source "TabLauncherValve.java"

# interfaces
.implements Lcom/alipay/mobile/common/share/ContactShareListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncherValve;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncherValve;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncherValve$3;->this$0:Lcom/alipay/android/launcher/TabLauncherValve;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shareMessage(Lcom/alipay/mobile/common/share/ShareContent;)V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->shareMessage(Lcom/alipay/mobile/common/share/ShareContent;)V

    .line 107
    :cond_0
    return-void
.end method

.method public shareSMS(Lcom/alipay/mobile/common/share/ShareContent;)V
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/SnsLinkService;

    .line 110
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SnsLinkService;

    .line 111
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 112
    const-string/jumbo v2, "start_param"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 113
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/SnsLinkService;->sendSnsLink(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method
