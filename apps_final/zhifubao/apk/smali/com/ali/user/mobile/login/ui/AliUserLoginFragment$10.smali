.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;->a:I

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 335
    const-string/jumbo v0, "AliUserLoginFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5386\u53f2\u8d26\u6237\u6a21\u5f0f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;->a:I

    iput v1, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryMode:I

    .line 337
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ali/user/mobile/login/LoginHistoryManager;->getHistoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginHistoryList:Ljava/util/List;

    .line 338
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setRecentList()V

    .line 340
    return-void
.end method
