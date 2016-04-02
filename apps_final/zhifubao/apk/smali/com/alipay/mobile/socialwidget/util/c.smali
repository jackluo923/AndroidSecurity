.class final Lcom/alipay/mobile/socialwidget/util/c;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/util/c;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/c;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:uploadContactForLogin:start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/c;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->e(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 182
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 181
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->uploadSystemContactsAsync(Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/util/c;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialSdkLoader:uploadContactForLogin:done"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/util/c;->a:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->d(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_SocialHomeWidget"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
