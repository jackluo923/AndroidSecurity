.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41$1;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41;

    .line 1614
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFail()V
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41;

    # getter for: Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41;->access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 1624
    return-void
.end method

.method protected onSuccess()V
    .locals 3

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41$1;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1618
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41;

    # getter for: Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    invoke-static {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41;->access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$41;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    move-result-object v1

    const-string/jumbo v2, "withmsg"

    invoke-virtual {v1, v0, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnvWithToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    return-void
.end method
