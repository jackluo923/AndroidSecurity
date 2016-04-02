.class final Lcom/alipay/mobile/appstoreapp/manager/g;
.super Ljava/lang/Object;
.source "AppManageServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/manager/e;

.field private final synthetic b:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/manager/e;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/manager/g;->a:Lcom/alipay/mobile/appstoreapp/manager/e;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/manager/g;->b:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    .line 1736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/g;->a:Lcom/alipay/mobile/appstoreapp/manager/e;

    iget-object v0, v0, Lcom/alipay/mobile/appstoreapp/manager/e;->a:Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a()V

    .line 1740
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/g;->b:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    .line 1741
    return-void
.end method
