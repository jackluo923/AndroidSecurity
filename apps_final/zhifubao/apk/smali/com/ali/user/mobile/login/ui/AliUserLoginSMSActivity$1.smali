.class Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$1;
.super Lcom/alipay/mobile/commonui/widget/keyboard/APSafeTextWatcher;
.source "AliUserLoginSMSActivity.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;

    # getter for: Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->isNeedAutoInputSms:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->access$4(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v0, "AliUserLoginSMSActivity"

    const-string/jumbo v1, "afterTextChanged - \u6b63\u5728\u81ea\u52a8\u8bfb\u53d6\u77ed\u4fe1"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;

    # getter for: Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mIsSmsAutoRead:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->access$5(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string/jumbo v0, "AliUserLoginSMSActivity"

    const-string/jumbo v1, "afterTextChanged - \u6ca1\u6709\u81ea\u52a8\u8bfb\u53d6\u77ed\u4fe1"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;

    # getter for: Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mIsSmsAutoRead:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->access$5(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
