.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ali/user/mobile/login/LoginHistory;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/ali/user/mobile/login/LoginHistory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;->a:Lcom/ali/user/mobile/login/LoginHistory;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;->a:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v1, v1, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;->a:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v2, v2, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ali/user/mobile/login/LoginHistoryManager;->deleteLoginHistory(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 649
    if-lez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;->a:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v2, v2, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ali/user/mobile/login/LoginHistoryManager;->getHistoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    .line 651
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;->a:Lcom/ali/user/mobile/login/LoginHistory;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->notifyChange(Lcom/ali/user/mobile/login/LoginHistory;)V

    .line 653
    :cond_0
    return-void
.end method
