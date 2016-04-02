.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$34;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$34;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 1356
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFail()V
    .locals 2

    .prologue
    .line 1366
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u7ed1\u5b9a\u652f\u4ed8\u5b9d\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$34;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 1368
    return-void
.end method

.method protected onSuccess()V
    .locals 2

    .prologue
    .line 1359
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u7ed1\u5b9a\u652f\u4ed8\u5b9d\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$34;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1361
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$34;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnvWithToken(Ljava/lang/String;)V

    .line 1362
    return-void
.end method
