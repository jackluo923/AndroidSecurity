.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$2;
.super Ljava/lang/Object;
.source "AlipayUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$2;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$2;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$2;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    if-nez v0, :cond_0

    .line 87
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "\u4e0d\u53ef\u4ee5\u4f7f\u7528\u6dd8\u5b9dsso"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "\u53ef\u4ee5\u4f7f\u7528\u6dd8\u5b9dsso"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$2;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$2;->a:Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->openTaobaoSsoInfoActivity(Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;)V

    goto :goto_0
.end method
