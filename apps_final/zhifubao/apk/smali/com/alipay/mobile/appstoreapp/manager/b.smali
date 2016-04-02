.class final Lcom/alipay/mobile/appstoreapp/manager/b;
.super Ljava/lang/Object;
.source "AppManageServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p3, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    .line 1599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 2

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->onCancel(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V

    .line 1616
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a()V

    .line 1617
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    .line 1618
    return-void
.end method

.method public final onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1638
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 1640
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    .line 1639
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/CommonLogAgentUtil;->LOG_DOWNLOAD_RESULT(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1642
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V

    .line 1643
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a()V

    .line 1644
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    .line 1645
    return-void
.end method

.method public final onFinish(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1622
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 1624
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    .line 1623
    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/CommonLogAgentUtil;->LOG_DOWNLOAD_RESULT(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyInstallStatus(I)V

    .line 1627
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1628
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    .line 1633
    :goto_0
    return-void

    .line 1630
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a()V

    .line 1631
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    goto :goto_0
.end method

.method public final onPrepare(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 3

    .prologue
    .line 1602
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1603
    const-string/jumbo v1, "\u670d\u52a1\u5347\u7ea7\u4e2d"

    .line 1604
    const/4 v2, 0x0

    .line 1602
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 1605
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->onPrepare(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V

    .line 1606
    return-void
.end method

.method public final onProgress(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;I)V
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/b;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->onProgress(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;I)V

    .line 1611
    return-void
.end method
