.class Lcom/ali/user/mobile/login/sso/SSOManager$1$2;
.super Ljava/lang/Object;
.source "SSOManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field final synthetic this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/sso/SSOManager$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$2;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    iput-object p2, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$2;->b:Ljava/lang/String;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    const-string/jumbo v0, "SSOManager.login"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6ca1\u6709\u89e3\u6790\u5230"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$2;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager$1;->access$0(Lcom/ali/user/mobile/login/sso/SSOManager$1;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ali/user/mobile/login/sso/SSOManager;->ssoLoginDone:Z

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$2;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager$1;->access$0(Lcom/ali/user/mobile/login/sso/SSOManager$1;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->access$1(Lcom/ali/user/mobile/login/sso/SSOManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 177
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$2;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

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

    .line 180
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$2;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager$1;->access$0(Lcom/ali/user/mobile/login/sso/SSOManager$1;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->access$1(Lcom/ali/user/mobile/login/sso/SSOManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 182
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 180
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$2;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager$1;->access$0(Lcom/ali/user/mobile/login/sso/SSOManager$1;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->access$1(Lcom/ali/user/mobile/login/sso/SSOManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    iget-object v1, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1$2;->this$1:Lcom/ali/user/mobile/login/sso/SSOManager$1;

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;
    invoke-static {v1}, Lcom/ali/user/mobile/login/sso/SSOManager$1;->access$0(Lcom/ali/user/mobile/login/sso/SSOManager$1;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v1

    # getter for: Lcom/ali/user/mobile/login/sso/SSOManager;->g:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/ali/user/mobile/login/sso/SSOManager;->access$1(Lcom/ali/user/mobile/login/sso/SSOManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 181
    throw v0
.end method
