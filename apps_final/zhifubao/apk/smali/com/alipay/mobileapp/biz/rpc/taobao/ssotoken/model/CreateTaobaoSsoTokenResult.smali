.class public Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/model/CreateTaobaoSsoTokenResult;
.super Ljava/lang/Object;


# instance fields
.field public nick:Ljava/lang/String;

.field public ssoToken:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/model/CreateTaobaoSsoTokenResult;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getSsoToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/model/CreateTaobaoSsoTokenResult;->ssoToken:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/model/CreateTaobaoSsoTokenResult;->success:Z

    return v0
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/model/CreateTaobaoSsoTokenResult;->nick:Ljava/lang/String;

    return-void
.end method

.method public setSsoToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/model/CreateTaobaoSsoTokenResult;->ssoToken:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/model/CreateTaobaoSsoTokenResult;->success:Z

    return-void
.end method
