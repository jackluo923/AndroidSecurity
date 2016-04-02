.class public Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;
.super Lcom/ali/user/mobile/service/BaseBizService;
.source "UserRegisterServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/service/UserRegisterService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/service/BaseBizService",
        "<",
        "Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;",
        ">;",
        "Lcom/ali/user/mobile/service/UserRegisterService;"
    }
.end annotation


# instance fields
.field private a:Lcom/ali/user/mobile/info/AppInfo;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/BaseBizService;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    .line 39
    return-void
.end method


# virtual methods
.method public countryCodeRes()Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;
    .locals 10

    .prologue
    .line 46
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 47
    new-instance v0, Lcom/ali/user/mobile/log/GwCommonLogAgent;

    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCOUNTRIES:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v4, "YWUC-JTTYZH-C32"

    invoke-direct {v0, v1, v3, v4}, Lcom/ali/user/mobile/log/GwCommonLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logStart()V

    .line 51
    :try_start_0
    new-instance v3, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;

    invoke-direct {v3}, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;-><init>()V

    .line 52
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->appId:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->apdId:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->productVersion:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->sdkVersion:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->appKey:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->productId:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;->productVersion:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v1, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v1, v3}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->getCountyCode(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;

    move-result-object v1

    .line 61
    const-string/jumbo v3, ""

    const-string/jumbo v4, "register.countryCodeProcesser"

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logGwCommonRes(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object v1

    .line 63
    :catch_0
    move-exception v1

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "N"

    const-string/jumbo v7, "netException"

    const-string/jumbo v8, "register.countryCodeProcesser"

    const-string/jumbo v9, ""

    move-object v3, v0

    move-object v6, v2

    invoke-virtual/range {v3 .. v9}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    throw v1
.end method

.method public emailActivateV2(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;
    .locals 10

    .prologue
    .line 278
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 279
    new-instance v0, Lcom/ali/user/mobile/log/GwCommonLogAgent;

    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/ali/user/mobile/log/BehaviourIdEnum;->ACTIVATE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v4, "YWUC-JTTYZH-C30"

    invoke-direct {v0, v1, v3, v4}, Lcom/ali/user/mobile/log/GwCommonLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logStart()V

    .line 283
    :try_start_0
    new-instance v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;

    invoke-direct {v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;-><init>()V

    .line 284
    iput-object p1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->token:Ljava/lang/String;

    .line 285
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->appId:Ljava/lang/String;

    .line 286
    iput-object p2, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->emailUrl:Ljava/lang/String;

    .line 287
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getMspTid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->tid:Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->apdId:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->productVersion:Ljava/lang/String;

    .line 290
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->sdkVersion:Ljava/lang/String;

    .line 291
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->appKey:Ljava/lang/String;

    .line 292
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->productId:Ljava/lang/String;

    .line 293
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->productVersion:Ljava/lang/String;

    .line 294
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v1, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v1, v3}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->emailActivateV2Processer(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    move-result-object v1

    .line 296
    const-string/jumbo v3, ""

    const-string/jumbo v4, "register.emailActivateV2Processer"

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logGwCommonRes(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    return-object v1

    .line 298
    :catch_0
    move-exception v1

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "N"

    const-string/jumbo v7, "netException"

    const-string/jumbo v8, "register.emailActivateV2Processer"

    move-object v3, v0

    move-object v6, v2

    move-object v9, p1

    invoke-virtual/range {v3 .. v9}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    throw v1
.end method

.method public mobileRegPreVerifyV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;
    .locals 11

    .prologue
    .line 73
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 74
    new-instance v1, Lcom/ali/user/mobile/log/GwCommonLogAgent;

    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/ali/user/mobile/log/BehaviourIdEnum;->DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v5, "YWUC-JTTYZH-C29"

    invoke-direct {v1, v2, v4, v5}, Lcom/ali/user/mobile/log/GwCommonLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logStart()V

    .line 78
    :try_start_0
    new-instance v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;

    invoke-direct {v4}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;-><init>()V

    .line 79
    iput-object p3, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->countryCode:Ljava/lang/String;

    .line 80
    move-object/from16 v0, p7

    iput-object v0, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->checkCode:Ljava/lang/String;

    .line 81
    move-object/from16 v0, p9

    iput-object v0, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->rdsInfo:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->appId:Ljava/lang/String;

    .line 83
    iput-object p2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->longonId:Ljava/lang/String;

    .line 84
    iput-object p1, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->token:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->productVersion:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->sdkVersion:Ljava/lang/String;

    .line 87
    iput-object p4, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->headImg:Ljava/lang/String;

    .line 88
    move-object/from16 v0, p6

    iput-object v0, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->nickName:Ljava/lang/String;

    .line 89
    move-object/from16 v0, p5

    iput-object v0, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->queryPassword:Ljava/lang/String;

    .line 90
    move-object/from16 v0, p8

    iput-object v0, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->securityId:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->appKey:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->productId:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;->productVersion:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v2, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v2, v4}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->mobileRegPreVerifyV3(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;

    move-result-object v2

    .line 96
    const-string/jumbo v4, ""

    const-string/jumbo v5, "register.mobileRegPreVerifyV3"

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logGwCommonRes(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-object v2

    .line 98
    :catch_0
    move-exception v2

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "N"

    const-string/jumbo v8, "netException"

    const-string/jumbo v9, "register.mobileRegPreVerifyV3"

    move-object v4, v1

    move-object v7, v3

    move-object v10, p1

    invoke-virtual/range {v4 .. v10}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    throw v2
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterRes;
    .locals 10

    .prologue
    .line 191
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 192
    new-instance v0, Lcom/ali/user/mobile/log/GwCommonLogAgent;

    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/ali/user/mobile/log/BehaviourIdEnum;->REGISTER:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v4, "YWUC-JTTYZH-C31"

    invoke-direct {v0, v1, v3, v4}, Lcom/ali/user/mobile/log/GwCommonLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logStart()V

    .line 196
    :try_start_0
    new-instance v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;

    invoke-direct {v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;-><init>()V

    .line 197
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->appId:Ljava/lang/String;

    .line 198
    iput-object p2, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->password:Ljava/lang/String;

    .line 199
    iput-object p1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->token:Ljava/lang/String;

    .line 200
    iput-object p3, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->rdsInfo:Ljava/lang/String;

    .line 201
    iput-object p4, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->wa:Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->productVersion:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->sdkVersion:Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->tid:Ljava/lang/String;

    .line 205
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->appKey:Ljava/lang/String;

    .line 206
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->productId:Ljava/lang/String;

    .line 207
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;->productVersion:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v1, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v1, v3}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->register(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterRes;

    move-result-object v1

    .line 210
    const-string/jumbo v3, ""

    const-string/jumbo v4, "register.registerProcesser"

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logGwCommonRes(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    return-object v1

    .line 212
    :catch_0
    move-exception v1

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "N"

    const-string/jumbo v7, "netException"

    const-string/jumbo v8, "register.registerProcesser"

    move-object v3, v0

    move-object v6, v2

    move-object v9, p1

    invoke-virtual/range {v3 .. v9}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    throw v1
.end method

.method public sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;
    .locals 9

    .prologue
    .line 106
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 107
    new-instance v8, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v2, "YWUC-JTTYZH-C28"

    invoke-direct {v8, v0, v1, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v8}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()V

    .line 111
    :try_start_0
    new-instance v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;

    invoke-direct {v1}, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;-><init>()V

    .line 112
    iput-object p2, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->mobile:Ljava/lang/String;

    .line 113
    iput-object p3, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->type:Ljava/lang/String;

    .line 114
    iput-object p1, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->token:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->appKey:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->productId:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->productVersion:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v0, v1}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->sendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    move-result-object v7

    .line 120
    if-nez v7, :cond_0

    .line 121
    const-string/jumbo v1, "res=null"

    move-object v0, v8

    .line 123
    :goto_0
    const-string/jumbo v2, "N"

    :goto_1
    const-string/jumbo v4, ""

    const-string/jumbo v5, "sms.sendSms"

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-object v7

    .line 123
    :cond_0
    iget-object v1, v7, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    iget-boolean v0, v7, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->success:Z

    if-eqz v0, :cond_1

    const-string/jumbo v2, "Y"
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "N"

    const-string/jumbo v4, "netException"

    const-string/jumbo v5, "sms.sendSms"

    move-object v0, v8

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    throw v7

    :cond_1
    move-object v0, v8

    goto :goto_0
.end method

.method public setMobileNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->b:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public supplementV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;
    .locals 11

    .prologue
    .line 221
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 222
    new-instance v1, Lcom/ali/user/mobile/log/GwCommonLogAgent;

    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/ali/user/mobile/log/BehaviourIdEnum;->REGISTER:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v5, "YWUC-JTTYZH-C31"

    invoke-direct {v1, v2, v4, v5}, Lcom/ali/user/mobile/log/GwCommonLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logStart()V

    .line 226
    :try_start_0
    new-instance v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;

    invoke-direct {v4}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;-><init>()V

    .line 227
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->appId:Ljava/lang/String;

    .line 228
    iput-object p2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->payPassword:Ljava/lang/String;

    .line 229
    iput-object p3, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->simplePassword:Ljava/lang/String;

    .line 230
    iput-object p1, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->token:Ljava/lang/String;

    .line 231
    iput-object p4, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->rdsInfo:Ljava/lang/String;

    .line 232
    move-object/from16 v0, p5

    iput-object v0, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->wa:Ljava/lang/String;

    .line 233
    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->productVersion:Ljava/lang/String;

    .line 234
    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->sdkVersion:Ljava/lang/String;

    .line 235
    move/from16 v0, p6

    iput-boolean v0, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->optionStatus:Z

    .line 236
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->appKey:Ljava/lang/String;

    .line 237
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->productId:Ljava/lang/String;

    .line 238
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;->productVersion:Ljava/lang/String;

    .line 239
    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v2, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v2, v4}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->supplementV2(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;)Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;

    move-result-object v2

    .line 241
    const-string/jumbo v4, ""

    const-string/jumbo v5, "register.completeProcesserV2"

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logGwCommonRes(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    return-object v2

    .line 243
    :catch_0
    move-exception v2

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "N"

    const-string/jumbo v8, "netException"

    const-string/jumbo v9, "register.completeProcesserV2"

    move-object v4, v1

    move-object v7, v3

    move-object v10, p1

    invoke-virtual/range {v4 .. v10}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    throw v2
.end method

.method public verifyEmailAndVerification(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;
    .locals 10

    .prologue
    .line 251
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 252
    new-instance v0, Lcom/ali/user/mobile/log/GwCommonLogAgent;

    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/ali/user/mobile/log/BehaviourIdEnum;->ACTIVATE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v4, "YWUC-JTTYZH-C30"

    invoke-direct {v0, v1, v3, v4}, Lcom/ali/user/mobile/log/GwCommonLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logStart()V

    .line 256
    :try_start_0
    new-instance v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;

    invoke-direct {v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;-><init>()V

    .line 257
    iput-object p1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->token:Ljava/lang/String;

    .line 258
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->appId:Ljava/lang/String;

    .line 259
    iput-object p2, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->emailUrl:Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->productVersion:Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->sdkVersion:Ljava/lang/String;

    .line 262
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->appKey:Ljava/lang/String;

    .line 263
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->productId:Ljava/lang/String;

    .line 264
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;->productVersion:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v1, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v1, v3}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->verifyEmailAndVerification(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    move-result-object v1

    .line 267
    const-string/jumbo v3, ""

    const-string/jumbo v4, "register.verifyEmailAndVerification"

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logGwCommonRes(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    return-object v1

    .line 269
    :catch_0
    move-exception v1

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "N"

    const-string/jumbo v7, "netException"

    const-string/jumbo v8, "register.verifyEmailAndVerification"

    move-object v3, v0

    move-object v6, v2

    move-object v9, p1

    invoke-virtual/range {v3 .. v9}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    throw v1
.end method

.method public verifyIDCardAndRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;
    .locals 10

    .prologue
    .line 162
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 163
    new-instance v0, Lcom/ali/user/mobile/log/GwCommonLogAgent;

    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/ali/user/mobile/log/BehaviourIdEnum;->DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v4, "YWUC-JTTYZH-C29"

    invoke-direct {v0, v1, v3, v4}, Lcom/ali/user/mobile/log/GwCommonLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logStart()V

    .line 167
    :try_start_0
    new-instance v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;

    invoke-direct {v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;-><init>()V

    .line 168
    iput-object p2, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->name:Ljava/lang/String;

    .line 169
    iput-object p3, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->cardNO:Ljava/lang/String;

    .line 170
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->appId:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getMspTid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->tid:Ljava/lang/String;

    .line 172
    iput-object p1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->token:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->productVersion:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->apdId:Ljava/lang/String;

    .line 175
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->sdkVersion:Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->appKey:Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->productId:Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;->productVersion:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v1, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v1, v3}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->verifyIDCardAndRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    move-result-object v1

    .line 181
    const-string/jumbo v3, ""

    const-string/jumbo v4, "register.verifyIDCardAndRegister"

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logGwCommonRes(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-object v1

    .line 183
    :catch_0
    move-exception v1

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "N"

    const-string/jumbo v7, "netException"

    const-string/jumbo v8, "register.verifyIDCardAndRegister"

    move-object v3, v0

    move-object v6, v2

    move-object v9, p1

    invoke-virtual/range {v3 .. v9}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    throw v1
.end method

.method public verifyMobileAndRegister(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;
    .locals 10

    .prologue
    .line 134
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 135
    new-instance v0, Lcom/ali/user/mobile/log/GwCommonLogAgent;

    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/ali/user/mobile/log/BehaviourIdEnum;->DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v4, "YWUC-JTTYZH-C29"

    invoke-direct {v0, v1, v3, v4}, Lcom/ali/user/mobile/log/GwCommonLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logStart()V

    .line 139
    :try_start_0
    new-instance v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;

    invoke-direct {v3}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;-><init>()V

    .line 140
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->appId:Ljava/lang/String;

    .line 141
    iput-object p2, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->smsCode:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getMspTid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->tid:Ljava/lang/String;

    .line 143
    iput-object p1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->token:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->productVersion:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->apdId:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->sdkVersion:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->appKey:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->productId:Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;->productVersion:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v1, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;

    invoke-interface {v1, v3}, Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;->verifyMobileAndRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;

    move-result-object v1

    .line 152
    const-string/jumbo v3, ""

    const-string/jumbo v4, "register.verifyMobileAndRegister"

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logGwCommonRes(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-object v1

    .line 154
    :catch_0
    move-exception v1

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "N"

    const-string/jumbo v7, "netException"

    const-string/jumbo v8, "register.verifyMobileAndRegister"

    move-object v3, v0

    move-object v6, v2

    move-object v9, p1

    invoke-virtual/range {v3 .. v9}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    throw v1
.end method
