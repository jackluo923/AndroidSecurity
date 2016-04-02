.class Lcom/ali/user/mobile/common/api/AliUserLogin$2$1;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLogin.java"


# instance fields
.field private final synthetic a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

.field final synthetic this$1:Lcom/ali/user/mobile/common/api/AliUserLogin$2;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin$2;Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2$1;->this$1:Lcom/ali/user/mobile/common/api/AliUserLogin$2;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2$1;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    .line 176
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFail()V
    .locals 2

    .prologue
    .line 192
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "\u627e\u56de\u5bc6\u7801\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2$1;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2$1;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;->onForgotPwdError(Landroid/os/Bundle;)V

    .line 196
    :cond_0
    return-void
.end method

.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/ali/user/mobile/common/api/AliUserLogin$2$1;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "quit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    :cond_0
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "\u627e\u56de\u5bc6\u7801\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/ali/user/mobile/common/api/AliUserLogin$2$1;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 183
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2$1;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2$1;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;->onForgotPwdSuccess(Landroid/os/Bundle;)V

    .line 186
    :cond_1
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
