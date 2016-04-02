.class final Lcom/alipay/mobile/appstoreapp/manager/e;
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
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/manager/e;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/manager/e;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p3, p0, Lcom/alipay/mobile/appstoreapp/manager/e;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    .line 1720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1724
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 1725
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/e;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstalledPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1726
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/e;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1727
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/e;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getPostfix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1725
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->addExternalBundle(Ljava/lang/String;)V

    .line 1728
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/e;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/appstoreapp/manager/f;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/e;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/appstoreapp/manager/f;-><init>(Lcom/alipay/mobile/appstoreapp/manager/e;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    :goto_0
    return-void

    .line 1734
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1736
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/e;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/appstoreapp/manager/g;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/e;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/appstoreapp/manager/g;-><init>(Lcom/alipay/mobile/appstoreapp/manager/e;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
