.class Lcom/ali/user/mobile/common/api/AliUserLogin$8;
.super Ljava/lang/Object;
.source "AliUserLogin.java"

# interfaces
.implements Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field final synthetic this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->a:Landroid/content/Context;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmUIShowed(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;
    .locals 0

    .prologue
    .line 451
    return-object p1
.end method

.method public onFailedResult(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 445
    const-string/jumbo v0, "AliUserLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6dd8\u5b9dssologin\u5931\u8d25:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->a:Landroid/content/Context;

    invoke-virtual {v0, v3, v1, v3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 447
    return-void
.end method

.method public onSsoLoginClicked(Lcom/taobao/android/sso/UserInfo;)V
    .locals 2

    .prologue
    .line 439
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "\u89e3\u6790\u5230\u6dd8\u5b9duserInfo"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->ssoLogin(Landroid/content/Context;Lcom/taobao/android/sso/UserInfo;)V

    .line 441
    return-void
.end method
