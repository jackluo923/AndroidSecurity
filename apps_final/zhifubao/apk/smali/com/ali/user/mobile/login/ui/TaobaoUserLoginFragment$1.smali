.class Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;
.super Ljava/lang/Object;
.source "TaobaoUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 62
    new-instance v0, Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;

    invoke-virtual {v4}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v5, v5, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->headImg:Ljava/lang/String;

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v6, v6, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->userId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/mobile/login/LoginHistory;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/login/LoginHistoryManager;->saveHistory(Lcom/ali/user/mobile/login/LoginHistory;)V

    .line 67
    new-instance v0, Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->alipayLoginId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "alipay"

    iget-object v5, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v5, v5, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->headImg:Ljava/lang/String;

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v6, v6, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->userId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/mobile/login/LoginHistory;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment$1;->this$0:Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/login/LoginHistoryManager;->saveHistoryNecessary(Lcom/ali/user/mobile/login/LoginHistory;)V

    .line 69
    return-void
.end method
