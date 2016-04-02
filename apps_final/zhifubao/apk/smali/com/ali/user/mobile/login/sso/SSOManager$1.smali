.class Lcom/ali/user/mobile/login/sso/SSOManager$1;
.super Ljava/lang/Object;
.source "SSOManager.java"

# interfaces
.implements Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/login/sso/SSOManager;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/sso/SSOManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;

    iput-object p2, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1;->a:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/login/sso/SSOManager$1;)Lcom/ali/user/mobile/login/sso/SSOManager;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1;->this$0:Lcom/ali/user/mobile/login/sso/SSOManager;

    return-object v0
.end method


# virtual methods
.method public onConfirmUIShowed(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public onFailedResult(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/login/sso/SSOManager$1$2;

    iget-object v2, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1;->a:Ljava/lang/String;

    invoke-direct {v1, p0, v2, p1}, Lcom/ali/user/mobile/login/sso/SSOManager$1$2;-><init>(Lcom/ali/user/mobile/login/sso/SSOManager$1;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v2, "Aliuser.onFailedResult"

    .line 170
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method

.method public onSsoLoginClicked(Lcom/taobao/android/sso/UserInfo;)V
    .locals 3

    .prologue
    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;

    iget-object v2, p0, Lcom/ali/user/mobile/login/sso/SSOManager$1;->a:Ljava/lang/String;

    invoke-direct {v1, p0, p1, v2}, Lcom/ali/user/mobile/login/sso/SSOManager$1$1;-><init>(Lcom/ali/user/mobile/login/sso/SSOManager$1;Lcom/taobao/android/sso/UserInfo;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v2, "Aliuser.onSsoLoginClicked"

    .line 143
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method
