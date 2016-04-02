.class final Lcom/alipay/mobile/socialwidget/util/a;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:loadSdk:start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 122
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 121
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->loadContactModule()V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 126
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 125
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->loadChatModule()V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:loadSdk:done"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->f(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->f(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;->sdkLoaded()V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "contactscommon.db"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "messagecommonchat.db"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 143
    :cond_1
    return-void

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/a;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:loadSdk:done, callback null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
