.class Lcom/ali/user/mobile/login/sso/SSOManager$1$1;
.super Ljava/lang/Object;
.source "SSOManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/taobao/android/sso/UserInfo;

.field private final synthetic b:Ljava/lang/String;

.field final synthetic this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/sso/SSOManager$1;Lcom/taobao/android/sso/UserInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    iput-object p2, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->a:Lcom/taobao/android/sso/UserInfo;

    iput-object p3, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->b:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 146
    new-instance v0, Lcom/ali/user/mobile/login/sso/SSOInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/sso/SSOInfo;-><init>()V

    .line 147
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->a:Lcom/taobao/android/sso/UserInfo;

    iget-object v1, v1, Lcom/taobao/android/sso/UserInfo;->mAccountType:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/SSOInfo;->accountType:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->a:Lcom/taobao/android/sso/UserInfo;

    iget-object v1, v1, Lcom/taobao/android/sso/UserInfo;->mNick:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->a:Lcom/taobao/android/sso/UserInfo;

    iget-object v1, v1, Lcom/taobao/android/sso/UserInfo;->mPhotoUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/SSOInfo;->photoUrl:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->a:Lcom/taobao/android/sso/UserInfo;

    iget-object v1, v1, Lcom/taobao/android/sso/UserInfo;->mShareApp:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/SSOInfo;->shareApp:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->a:Lcom/taobao/android/sso/UserInfo;

    iget-object v1, v1, Lcom/taobao/android/sso/UserInfo;->mSsoToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->a:Lcom/taobao/android/sso/UserInfo;

    iget-wide v1, v1, Lcom/taobao/android/sso/UserInfo;->mTokenTimestamp:J

    iput-wide v1, v0, Lcom/ali/user/mobile/login/sso/SSOInfo;->tokenTimestamp:J

    .line 153
    const-string/jumbo v1, "SSOManager.login"

    const-string/jumbo v2, "\u89e3\u6790\u5230accountType:%s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->b:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v1, "SSOManager.login"

    const-string/jumbo v2, "\u89e3\u6790\u5230\u7684ssotoken:%s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;
    invoke-static {v1}, Lcom/ali/user/mobile/login/sso/SSOManager$1;->access$0(Lcom/ali/user/mobile/login/sso/SSOManager$1;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->access$0(Lcom/ali/user/mobile/login/sso/SSOManager;Lcom/ali/user/mobile/login/sso/SSOInfo;)V

    .line 156
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager$1;->access$0(Lcom/ali/user/mobile/login/sso/SSOManager$1;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    iput-boolean v5, v0, Lcom/ali/user/mobile/login/sso/SSOManager;->ssoLoginDone:Z

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager$1;->access$0(Lcom/ali/user/mobile/login/sso/SSOManager$1;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->access$1(Lcom/ali/user/mobile/login/sso/SSOManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 159
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager$1;->access$0(Lcom/ali/user/mobile/login/sso/SSOManager$1;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager;->h:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->access$2(Lcom/ali/user/mobile/login/sso/SSOManager;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager$1;->access$0(Lcom/ali/user/mobile/login/sso/SSOManager$1;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->access$1(Lcom/ali/user/mobile/login/sso/SSOManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 164
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 162
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager$1;->access$0(Lcom/ali/user/mobile/login/sso/SSOManager$1;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->access$1(Lcom/ali/user/mobile/login/sso/SSOManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;
    invoke-static {v1}, Lcom/ali/user/mobile/login/sso/SSOManager$1;->access$0(Lcom/ali/user/mobile/login/sso/SSOManager$1;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v1

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/ali/user/mobile/login/sso/SSOManager;->access$1(Lcom/ali/user/mobile/login/sso/SSOManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 163
    throw v0
.end method
