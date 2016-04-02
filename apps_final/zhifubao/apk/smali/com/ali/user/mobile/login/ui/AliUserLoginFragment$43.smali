.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$43;
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
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$43;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$43;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 1682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1685
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u5c1d\u8bd5\u521b\u5efasso token"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$43;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    .line 1687
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$43;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iget-object v1, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->userId:Ljava/lang/String;

    .line 1688
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getSsoRequestParam()Lcom/ali/user/mobile/login/sso/SSORequestParam;

    move-result-object v2

    iget-object v2, v2, Lcom/ali/user/mobile/login/sso/SSORequestParam;->deviceId:Ljava/lang/String;

    .line 1689
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v3

    .line 1690
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v4

    .line 1686
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/login/sso/SSOManager;->createSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1691
    return-void
.end method
