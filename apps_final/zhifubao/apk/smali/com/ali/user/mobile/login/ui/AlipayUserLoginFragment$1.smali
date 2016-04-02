.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;
.super Ljava/lang/Object;
.source "AlipayUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x1b58

    .line 59
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 63
    :try_start_0
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v3, "\u5f00\u59cb\u6dd8\u5b9dsso\u9a8c\u8bc1"

    invoke-static {v0, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->verifyTaobaoSsoToken()Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 70
    const-string/jumbo v3, "AlipayUserLoginFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u603b\u5171\u8017\u65f6\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    cmp-long v1, v1, v6

    if-lez v1, :cond_2

    .line 72
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "\u65f6\u95f4\u5df2\u7ecf\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    :try_start_1
    const-string/jumbo v3, "AlipayUserLoginFragment"

    const-string/jumbo v4, "\u9a8c\u8bc1\u6dd8\u5b9dsso\u5f02\u5e38"

    invoke-static {v3, v4, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v1

    .line 70
    const-string/jumbo v2, "AlipayUserLoginFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u603b\u5171\u8017\u65f6\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 72
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "\u65f6\u95f4\u5df2\u7ecf\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {v0, v8}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->afterVerifyTaobaoSso(Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;)V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 70
    const-string/jumbo v3, "AlipayUserLoginFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u603b\u5171\u8017\u65f6\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    cmp-long v1, v1, v6

    if-lez v1, :cond_1

    .line 72
    const-string/jumbo v1, "AlipayUserLoginFragment"

    const-string/jumbo v2, "\u65f6\u95f4\u5df2\u7ecf\u8d85\u65f6"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_1
    throw v0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {v1, v8}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->afterVerifyTaobaoSso(Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->afterVerifyTaobaoSso(Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;)V

    goto :goto_0
.end method
