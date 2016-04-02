.class public abstract Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "SocialSdkChatService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearAllChatBg()V
.end method

.method public abstract clearCallback()V
.end method

.method public abstract forwardMessages(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;)V
.end method

.method public abstract generateMessageIncrementalId()J
.end method

.method public abstract getCurrentChatPage()Ljava/lang/String;
.end method

.method public abstract getCurrentChatState()I
.end method

.method public abstract getShareHandler()Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;
.end method

.method public abstract getShareResultCallback()Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;
.end method

.method public abstract getShareSelectCallback()Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;
.end method

.method public abstract isInPreDownCache(Ljava/lang/String;)Z
.end method

.method public abstract loadChatModule()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 20
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "SocialSdkChatService onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "SocialSdkChatService onDestroy"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public abstract refreshChatModule()V
.end method

.method public abstract setChatBg(Landroid/os/Bundle;)V
.end method

.method public abstract setCurrentChatPage(Ljava/lang/String;)V
.end method

.method public abstract shareEmotion(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;)V
.end method

.method public abstract shareMessage(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;)V
.end method

.method public abstract shareMessage(Lcom/alipay/mobile/common/share/ShareContent;)V
.end method

.method public abstract shareMessage(Lcom/alipay/mobile/personalbase/model/ShareModel;ZLcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;)V
.end method

.method public abstract shareOutAppMessage(Lcom/alipay/mobile/personalbase/model/ShareModel;)V
.end method

.method public abstract showShareDialog(Lcom/alipay/mobile/personalbase/model/ShareModel;ZLcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;)V
.end method
