.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11$1;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final synthetic a:Landroid/view/View$OnFocusChangeListener;

.field final synthetic this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11$1;->a:Landroid/view/View$OnFocusChangeListener;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 377
    if-nez p2, :cond_1

    .line 378
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;

    # getter for: Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;

    # getter for: Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    invoke-static {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->access$1(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;)V

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11$1;->a:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11$1;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 385
    :cond_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11$1;->this$1:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;

    # getter for: Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;->access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->hideLoginHistory()V

    goto :goto_0
.end method
