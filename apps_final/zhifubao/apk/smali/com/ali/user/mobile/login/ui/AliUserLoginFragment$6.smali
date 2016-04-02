.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;
.super Lcom/alipay/mobile/commonui/widget/keyboard/APSafeTextWatcher;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 260
    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->hideLoginHistory()V

    .line 272
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-boolean v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-boolean v2, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 274
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object v3, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    .line 276
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 277
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->refreshFaceEntry()V

    .line 278
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0, v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setPortraitImage(ZLjava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method
