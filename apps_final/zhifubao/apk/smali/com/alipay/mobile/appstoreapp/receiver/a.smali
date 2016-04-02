.class final Lcom/alipay/mobile/appstoreapp/receiver/a;
.super Ljava/lang/Object;
.source "ClientSetupReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;

.field private final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/receiver/a;->a:Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/receiver/a;->b:Landroid/content/Intent;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 37
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 36
    const-class v1, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    .line 38
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;->getExternalService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    .line 40
    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/receiver/a;->b:Landroid/content/Intent;

    .line 43
    const-string/jumbo v2, "switchaccount"

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->requestUser(Z)V

    .line 45
    instance-of v1, v0, Ljava/util/Observer;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 46
    check-cast v1, Ljava/util/Observer;

    new-instance v2, Ljava/util/Observable;

    invoke-direct {v2}, Ljava/util/Observable;-><init>()V

    .line 47
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    .line 49
    const-string/jumbo v4, "indexStage"

    .line 47
    invoke-direct {v3, v5, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;-><init>(ILjava/lang/String;)V

    .line 46
    invoke-interface {v1, v2, v3}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    move-object v1, v0

    .line 50
    check-cast v1, Ljava/util/Observer;

    new-instance v2, Ljava/util/Observable;

    invoke-direct {v2}, Ljava/util/Observable;-><init>()V

    .line 51
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    .line 53
    const-string/jumbo v4, "urgentStage"

    .line 51
    invoke-direct {v3, v5, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;-><init>(ILjava/lang/String;)V

    .line 50
    invoke-interface {v1, v2, v3}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 58
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->initAndSyncApps()V

    .line 59
    return-void

    .line 56
    :cond_1
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->requestUser(Z)V

    goto :goto_0
.end method
