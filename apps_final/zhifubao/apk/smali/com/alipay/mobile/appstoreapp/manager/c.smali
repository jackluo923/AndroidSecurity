.class final Lcom/alipay/mobile/appstoreapp/manager/c;
.super Ljava/lang/Object;
.source "AppManageServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p3, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    .line 1662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 1666
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Ljava/lang/String;)V

    .line 1667
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "installing"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    .line 1670
    if-nez v0, :cond_0

    .line 1671
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp()Z

    .line 1673
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/appstoreapp/manager/d;

    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v5, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/alipay/mobile/appstoreapp/manager/d;-><init>(Lcom/alipay/mobile/appstoreapp/manager/c;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;ZLcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1695
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1665
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 1696
    :catch_0
    move-exception v0

    .line 1697
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v2, :cond_1

    .line 1699
    const-string/jumbo v0, "AppManageServiceImpl"

    const-string/jumbo v2, "H5app install fail exception!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    .line 1709
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1665
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1703
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1704
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    goto :goto_1

    .line 1706
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a()V

    .line 1707
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/c;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
