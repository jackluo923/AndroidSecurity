.class Lcom/ali/user/mobile/common/api/AliUserLogin$2;
.super Ljava/lang/Object;
.source "AliUserLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

.field final synthetic this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 162
    :try_start_0
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUrlFetchService()Lcom/ali/user/mobile/service/UrlFetchService;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "alipay"

    const-string/jumbo v3, "foundpassword"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/ali/user/mobile/service/UrlFetchService;->foundH5urls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;

    move-result-object v0

    .line 163
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "\u627e\u56de\u5bc6\u7801\u83b7\u53d6h5 url\u7ed3\u679c,code:"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;->onForgotPwdError(Landroid/os/Bundle;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;->onPreForgotPwd(Landroid/os/Bundle;)V

    .line 174
    :cond_2
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "\u627e\u56de\u5bc6\u7801\u83b7\u53d6h5 url\u7ed3\u679c:%s, msg:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->resultStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->memo:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->resultStatus:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->h5Url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 176
    new-instance v1, Lcom/ali/user/mobile/common/api/AliUserLogin$2$1;

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    invoke-direct {v1, p0, v2}, Lcom/ali/user/mobile/common/api/AliUserLogin$2$1;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin$2;Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;)V

    .line 198
    iget-object v0, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->h5Url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "\u627e\u56de\u5bc6\u7801h5\u8bf7\u6c42\u5f02\u5e38"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    throw v0

    .line 200
    :cond_3
    :try_start_1
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "\u627e\u56de\u5bc6\u7801h5\u8bf7\u6c42\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$2;->a:Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;->onForgotPwdError(Landroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
