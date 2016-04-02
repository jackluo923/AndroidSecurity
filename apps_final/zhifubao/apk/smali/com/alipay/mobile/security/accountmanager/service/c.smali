.class final Lcom/alipay/mobile/security/accountmanager/service/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/service/c;->a:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "loginout"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/service/c;->a:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1, v3, v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/service/c;->a:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    return-void
.end method
