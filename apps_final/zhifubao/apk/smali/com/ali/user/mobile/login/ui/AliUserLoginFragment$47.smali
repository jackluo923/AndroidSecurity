.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$47;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$47;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 1899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$47;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1903
    return-void
.end method
