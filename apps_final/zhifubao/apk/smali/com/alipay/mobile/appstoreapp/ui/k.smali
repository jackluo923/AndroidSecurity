.class final Lcom/alipay/mobile/appstoreapp/ui/k;
.super Ljava/lang/Object;
.source "AppLaunchFromShortcutActivityImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/k;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthFailed()V
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/k;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/k;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    # getter for: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$1(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/k;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "auth_fail"

    # invokes: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$3(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->showToastCenter(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$4(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/k;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    const-string/jumbo v1, ""

    const/16 v2, -0x65

    # invokes: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->launchApp(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$2(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public final onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/k;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    const/16 v1, 0x3e8

    # invokes: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->launchApp(Ljava/lang/String;I)V
    invoke-static {v0, p2, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$2(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method public final onNotNeedAuth()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/k;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    const-string/jumbo v1, ""

    const/16 v2, 0x64

    # invokes: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->launchApp(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$2(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public final onUserCancel()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/k;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    # getter for: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$1(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 75
    return-void
.end method
