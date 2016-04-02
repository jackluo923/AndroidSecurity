.class final Lcom/alipay/mobile/appstoreapp/manager/f;
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
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/manager/f;->a:Lcom/alipay/mobile/appstoreapp/manager/e;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/manager/f;->b:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    .line 1728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/f;->b:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    .line 1732
    return-void
.end method
