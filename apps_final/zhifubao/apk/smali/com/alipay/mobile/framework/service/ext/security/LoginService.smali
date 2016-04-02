.class public abstract Lcom/alipay/mobile/framework/service/ext/security/LoginService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract autoLogin(Lcom/alipay/mobile/framework/service/ext/security/LoginCallBack;)V
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
.end method

.method public abstract loginWithPWD(Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
.end method

.method public abstract processLoginResult(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
.end method

.method public abstract taobaoSsoTokenLogin(Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
.end method

.method public abstract wapTokenLogin(Lcom/alipay/mobile/framework/service/ext/security/domain/WapLoginToken;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
.end method
