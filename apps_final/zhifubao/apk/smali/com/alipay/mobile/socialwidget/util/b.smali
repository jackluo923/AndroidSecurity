.class final Lcom/alipay/mobile/socialwidget/util/b;
.super Ljava/lang/Object;
.source "SocialSdkLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:refreshSdk:start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 157
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 156
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->refreshContactModule()V

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 161
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 160
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->refreshChatModule()V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:refreshSdk:done"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->f(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->f(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;->sdkRefreshed()V

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/b;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:refreshSdk:done, callback null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
