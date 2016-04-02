.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 616
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginHistory;

    .line 617
    iget-object v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/utils/StringUtil;->hideAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 620
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v2, v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v2, v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 621
    :cond_0
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    iput-object v3, v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    .line 622
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object v0, v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    .line 623
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v2, v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->refreshFaceEntry()V

    .line 627
    :cond_1
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 628
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 629
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v2, v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v2, v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    .line 633
    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v2, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setPortraitImage(ZLjava/lang/String;)V

    .line 636
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->hideLoginHistory()V

    .line 638
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->requestFocus()Z

    .line 639
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-boolean v4, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 640
    const-string/jumbo v1, "AliUserLoginFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9009\u62e9\u5386\u53f2\u8d26\u6237:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    return-void
.end method
