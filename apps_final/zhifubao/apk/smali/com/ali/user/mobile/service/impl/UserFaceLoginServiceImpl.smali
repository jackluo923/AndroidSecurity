.class public Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;
.super Lcom/ali/user/mobile/service/BaseBizService;
.source "UserFaceLoginServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/service/UserFaceLoginService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/service/BaseBizService",
        "<",
        "Lcom/alipay/mobileapp/biz/rpc/unifylogin/UserFaceLoginFacade;",
        ">;",
        "Lcom/ali/user/mobile/service/UserFaceLoginService;"
    }
.end annotation


# instance fields
.field private a:Lcom/ali/user/mobile/info/AppInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/BaseBizService;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    .line 27
    return-void
.end method


# virtual methods
.method public initFaceLogin(Lcom/ali/user/mobile/login/LoginParam;Ljava/lang/String;I)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;
    .locals 2

    .prologue
    .line 48
    :try_start_0
    new-instance v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;-><init>()V

    .line 49
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->loginId:Ljava/lang/String;

    .line 50
    iput-object p2, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->userid:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getUmidAsync()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->umidToken:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getMspTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->tid:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->productId:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->productVersion:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "android"

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->systemName:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->apdid:Ljava/lang/String;

    .line 57
    iput p3, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;->count:I

    .line 58
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/UserFaceLoginFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/UserFaceLoginFacade;->initFaceLogin(Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginReq;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 62
    throw v0
.end method

.method public queryFaceLogin(Ljava/util/List;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;"
        }
    .end annotation

    .prologue
    .line 32
    :try_start_0
    new-instance v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;-><init>()V

    .line 33
    iput-object p1, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;->userIdLists:Ljava/util/List;

    .line 34
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;->productId:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;->productVersion:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;->sdkVersion:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/UserFaceLoginFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/unifylogin/UserFaceLoginFacade;->queryFaceLogin(Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginReq;)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/QueryFaceLoginRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 41
    throw v0
.end method
