.class Lcom/alipay/android/launcher/TabLauncher$7;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;

.field private final synthetic val$authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private final synthetic val$bundleParams:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;Lcom/alipay/mobile/framework/service/ext/security/AuthService;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$7;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    iput-object p2, p0, Lcom/alipay/android/launcher/TabLauncher$7;->val$authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object p3, p0, Lcom/alipay/android/launcher/TabLauncher$7;->val$bundleParams:Landroid/os/Bundle;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 540
    const-wide/16 v0, 0x3c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$7;->val$authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher$7;->val$bundleParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    .line 546
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$7;->val$authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher$7;->val$bundleParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    goto :goto_0

    .line 543
    :catchall_0
    move-exception v0

    .line 544
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher$7;->val$authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher$7;->val$bundleParams:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    .line 545
    throw v0
.end method
