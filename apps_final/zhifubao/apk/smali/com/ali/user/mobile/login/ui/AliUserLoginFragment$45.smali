.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 1772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1775
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u4fdd\u5b58\u5386\u53f2\u8d26\u6237"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v1

    .line 1777
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1778
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u6ca1\u6709\u83b7\u53d6\u5230\u8d26\u6237\uff0c\u7ec8\u6b62\u4fdd\u5b58\u5386\u53f2\u8d26\u6237"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    :goto_0
    return-void

    .line 1781
    :cond_0
    new-instance v0, Lcom/ali/user/mobile/login/LoginHistory;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v4}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v5, v5, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->headImg:Ljava/lang/String;

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v6, v6, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->userId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/mobile/login/LoginHistory;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    if-eqz v1, :cond_1

    .line 1784
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-boolean v1, v1, Lcom/ali/user/mobile/login/LoginHistory;->faceAuth:Z

    iput-boolean v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->faceAuth:Z

    .line 1785
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget v1, v1, Lcom/ali/user/mobile/login/LoginHistory;->faceAuthFailCount:I

    iput v1, v0, Lcom/ali/user/mobile/login/LoginHistory;->faceAuthFailCount:I

    .line 1787
    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v2, v2, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/ali/user/mobile/login/LoginHistoryManager;->deleteLoginHistoryByUserId(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$45;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/login/LoginHistoryManager;->saveHistory(Lcom/ali/user/mobile/login/LoginHistory;)V

    goto :goto_0
.end method
