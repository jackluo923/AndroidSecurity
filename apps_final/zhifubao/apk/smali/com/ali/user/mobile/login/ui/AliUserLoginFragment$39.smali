.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$39;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$39;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 1525
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFail()V
    .locals 4

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$39;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const/16 v1, 0x7000

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1540
    return-void
.end method

.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$39;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1529
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "quit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1530
    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$39;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 1531
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$39;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const/16 v1, 0x7000

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$39;->getIntentExtra()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1532
    const/4 v0, 0x1

    .line 1534
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
