.class public Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;
.super Lcom/ali/user/mobile/service/BaseBizService;
.source "UserLoginServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/service/UserLoginService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/service/BaseBizService",
        "<",
        "Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;",
        ">;",
        "Lcom/ali/user/mobile/service/UserLoginService;"
    }
.end annotation


# instance fields
.field private a:Lcom/ali/user/mobile/info/AppInfo;

.field private b:Lcom/ali/user/mobile/info/DeviceInfo;

.field private c:Lcom/ali/user/mobile/info/NetWorkInfo;

.field private d:Lcom/ali/user/mobile/info/LocationInfo;

.field private e:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/BaseBizService;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    .line 50
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    .line 51
    invoke-static {}, Lcom/ali/user/mobile/info/NetWorkInfo;->getInstance()Lcom/ali/user/mobile/info/NetWorkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->c:Lcom/ali/user/mobile/info/NetWorkInfo;

    .line 52
    invoke-static {}, Lcom/ali/user/mobile/info/LocationInfo;->getInstance()Lcom/ali/user/mobile/info/LocationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->d:Lcom/ali/user/mobile/info/LocationInfo;

    .line 53
    new-instance v0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->LOGIN:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C27"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->e:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    .line 54
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;
    .locals 2

    .prologue
    .line 299
    invoke-static {p0, p1}, Lcom/ali/user/mobile/rpc/RpcManager;->getRpcFactory2(Landroid/content/Context;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/IRpcFactory;

    move-result-object v0

    .line 300
    const-class v1, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/rpc/IRpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    .line 301
    return-object v0
.end method

.method private a(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;
    .locals 5

    .prologue
    .line 198
    new-instance v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;

    invoke-direct {v1}, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;-><init>()V

    .line 199
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->c:Lcom/ali/user/mobile/info/NetWorkInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/NetWorkInfo;->getWifiNodeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->accessPoint:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdidAsync()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->apdid:Ljava/lang/String;

    .line 201
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appId:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appKey:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->deviceId:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->d:Lcom/ali/user/mobile/info/LocationInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/LocationInfo;->getCellId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->cellId:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->channel:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getInstance(Landroid/content/Context;)Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getLastKnownLBSInfo()Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->location:Ljava/lang/String;

    .line 209
    const-string/jumbo v0, "android"

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->clientType:Ljava/lang/String;

    .line 210
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->alipayEnvJson:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->alipayEnvJson:Ljava/lang/String;

    .line 211
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->taobaoEnvJson:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->taobaoEnvJson:Ljava/lang/String;

    .line 213
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->externParams:Ljava/util/Map;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    .line 215
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->IMEI:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->IMSI:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->isRooted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->isPrisonBreak:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->d:Lcom/ali/user/mobile/info/LocationInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/LocationInfo;->getTelLac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->lacId:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->loginId:Ljava/lang/String;

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/rsa/Rsa;->getRSAKey(Landroid/content/Context;)Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    move-result-object v0

    .line 223
    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginParam;->loginPassword:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 224
    iget-object v0, v0, Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    .line 225
    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginParam;->loginPassword:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ali/user/mobile/rsa/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->loginPwd:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->checkCodeId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->checkCodeId:Ljava/lang/String;

    .line 237
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->checkCode:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->checkCode:Ljava/lang/String;

    .line 239
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->loginType:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getMobileBrand()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->mobileBrand:Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getMobileModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->mobileModel:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->sdkVersion:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->productId:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->productVersion:Ljava/lang/String;

    .line 245
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->scene:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->scene:Ljava/lang/String;

    .line 246
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->token:Ljava/lang/String;

    .line 247
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->signData:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->signData:Ljava/lang/String;

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getHeightPix()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->screenHigh:Ljava/lang/String;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getWidthPix()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->screenWidth:Ljava/lang/String;

    .line 251
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->ssoToken:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->ssoToken:Ljava/lang/String;

    .line 252
    const-string/jumbo v0, "android"

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->systemType:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getSystemVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->systemVersion:Ljava/lang/String;

    .line 255
    :try_start_1
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->tid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 259
    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getUmidAsync()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->umidToken:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getUA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->userAgent:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getUtDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->utdid:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->validateTpye:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->c:Lcom/ali/user/mobile/info/NetWorkInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/NetWorkInfo;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->mac:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->c:Lcom/ali/user/mobile/info/NetWorkInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/NetWorkInfo;->getWifiNodeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->wifiNodeName:Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    .line 267
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "clientId"

    iget-object v3, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "sourceId"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "deviceToken"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "osVersion"

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "terminalName"

    iget-object v3, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/DeviceInfo;->getUA()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "loginWthPwd"

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getDexHandler()Lcom/ali/user/mobile/login/dex/DexHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getDexHandler()Lcom/ali/user/mobile/login/dex/DexHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/login/dex/DexHandler;->setDevInfo(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;)V

    .line 280
    :cond_1
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "vImsi"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getVImsi()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "vImei"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getVImei()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "mspImsi"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getMspImsi()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "mspImei"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getMspImei()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "mspTid"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getMspTid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "mspClientKey"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getMspClientKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "walletTid"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getWalletTid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "walletClientKey"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getWalletClientKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-object v1

    .line 208
    :cond_2
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 229
    throw v0

    .line 230
    :catch_1
    move-exception v0

    .line 231
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 232
    const-string/jumbo v1, "UserLoginService"

    const-string/jumbo v2, "\u5bc6\u7801\u52a0\u5bc6\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :catch_2
    move-exception v0

    .line 257
    const-string/jumbo v2, "UserLoginServiceImpl"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public applyLoginSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;
    .locals 9

    .prologue
    .line 142
    new-instance v8, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v2, "YWUC-JTTYZH-C28"

    invoke-direct {v8, v0, v1, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v8}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()V

    .line 146
    :try_start_0
    new-instance v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;

    invoke-direct {v1}, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;-><init>()V

    .line 147
    iput-object p1, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->token:Ljava/lang/String;

    .line 148
    iput-object p2, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->mobile:Ljava/lang/String;

    .line 149
    iput-object p3, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;->type:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    invoke-interface {v0, v1}, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;->applyLoginSMS(Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    move-result-object v7

    .line 152
    if-nez v7, :cond_0

    .line 153
    const-string/jumbo v1, "res=null"

    move-object v0, v8

    .line 155
    :goto_0
    const-string/jumbo v2, "N"

    :goto_1
    const-string/jumbo v5, "sms.login.sendSms"

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-object v7

    .line 155
    :cond_0
    iget-object v1, v7, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    iget-boolean v0, v7, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->success:Z

    if-eqz v0, :cond_1

    const-string/jumbo v2, "Y"
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    goto :goto_1

    .line 158
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 159
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

    const-string/jumbo v5, "sms.login.sendSms"

    move-object v0, v8

    move-object v3, p2

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    throw v7

    :cond_1
    move-object v0, v8

    goto :goto_0
.end method

.method public supplyPassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;
    .locals 9

    .prologue
    .line 81
    new-instance v8, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v2, "YWUC-JTTYZH-C28"

    invoke-direct {v8, v0, v1, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v8}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ali/user/mobile/gw/GWUrlSetting;->getMobileGW()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;->supplyPassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;

    move-result-object v7

    .line 86
    if-nez v7, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->e:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    const-string/jumbo v1, "res=null"

    const-string/jumbo v2, "N"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "login.supplypass"

    iget-object v6, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->token:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-object v7

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->e:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v1, v7, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->code:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->success:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Y"

    :goto_1
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "login.supplypass"

    iget-object v6, v7, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->token:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "N"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "netException"

    const-string/jumbo v5, "login.supplypass"

    iget-object v6, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->token:Ljava/lang/String;

    move-object v0, v8

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    throw v7

    .line 89
    :cond_1
    :try_start_1
    const-string/jumbo v2, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public supplySimplePassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;
    .locals 9

    .prologue
    .line 100
    new-instance v8, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v2, "YWUC-JTTYZH-C28"

    invoke-direct {v8, v0, v1, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v8}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()V

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ali/user/mobile/gw/GWUrlSetting;->getMobileGW()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;->supplySimplePassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;

    move-result-object v7

    .line 105
    if-nez v7, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->e:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    const-string/jumbo v1, "res=null"

    const-string/jumbo v2, "N"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "login.supplysimplepass"

    iget-object v6, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->token:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-object v7

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->e:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v1, v7, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->code:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->success:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Y"

    :goto_1
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "login.supplysimplepass"

    iget-object v6, v7, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->token:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "N"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "netException"

    const-string/jumbo v5, "login.supplysimplepass"

    iget-object v6, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->token:Ljava/lang/String;

    move-object v0, v8

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    throw v7

    .line 108
    :cond_1
    :try_start_1
    const-string/jumbo v2, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public taobaoAccountBinding(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;
    .locals 8

    .prologue
    .line 119
    new-instance v0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C28"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()V

    .line 123
    :try_start_0
    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindReq;-><init>()V

    .line 124
    iput-object p1, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindReq;->bizScene:Ljava/lang/String;

    .line 125
    iput-object p2, v2, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindReq;->token:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v1, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    invoke-interface {v1, v2}, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;->taobaoAccountBinding(Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindReq;)Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;

    move-result-object v7

    .line 128
    if-nez v7, :cond_0

    .line 129
    const-string/jumbo v1, "res=null"

    const-string/jumbo v2, "N"

    const-string/jumbo v5, "bindAlipayAccount"

    move-object v3, p1

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-object v7

    .line 131
    :cond_0
    iget-object v1, v7, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;->code:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;->success:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Y"

    :goto_1
    const-string/jumbo v5, "bindAlipayAccount"

    iget-object v6, v7, Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;->token:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "N"

    const-string/jumbo v4, "netException"

    const-string/jumbo v5, "bindAlipayAccount"

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    throw v7

    .line 131
    :cond_1
    :try_start_1
    const-string/jumbo v2, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public unifyLogin(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/ali/user/mobile/gw/GWUrlSetting;->getMobileGW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->unifyLoginWithGW(Lcom/ali/user/mobile/login/LoginParam;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    move-result-object v0

    return-object v0
.end method

.method public unifyLoginWithGW(Lcom/ali/user/mobile/login/LoginParam;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;
    .locals 8

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->e:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    invoke-virtual {v0}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()V

    .line 65
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;->unifyLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginReq;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    move-result-object v7

    .line 67
    if-nez v7, :cond_0

    .line 68
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->e:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    const-string/jumbo v1, "res=null"

    const-string/jumbo v2, "N"

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "ali.user.gw.unifyLogin"

    const-string/jumbo v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-object v7

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->e:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v1, v7, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->success:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Y"

    :goto_1
    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "unifyLogin"

    iget-object v6, v7, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 74
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->e:Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "N"

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    const-string/jumbo v4, "netException"

    const-string/jumbo v5, "unifyLogin"

    const-string/jumbo v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    throw v7

    .line 70
    :cond_1
    :try_start_1
    const-string/jumbo v2, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public verifyLoginSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;
    .locals 9

    .prologue
    .line 166
    new-instance v8, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;

    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/ali/user/mobile/log/BehaviourIdEnum;->DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v2, "YWUC-JTTYZH-C29"

    invoke-direct {v8, v0, v1, v2}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v8}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logStart()V

    .line 170
    :try_start_0
    new-instance v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;

    invoke-direct {v1}, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;-><init>()V

    .line 171
    iput-object p1, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->token:Ljava/lang/String;

    .line 172
    iput-object p2, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->mobile:Ljava/lang/String;

    .line 173
    iput-object p3, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->ackCode:Ljava/lang/String;

    .line 174
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->apdid:Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->appKey:Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->tid:Ljava/lang/String;

    .line 177
    iput-object p4, v1, Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;->smsVerifyType:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;

    invoke-interface {v0, v1}, Lcom/alipay/aliusergw/biz/shared/facade/UnifyLoginFacade;->verifyLoginSMS(Lcom/alipay/aliusergw/biz/shared/processer/sms/VerifySmsGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    move-result-object v7

    .line 180
    if-nez v7, :cond_0

    .line 181
    const-string/jumbo v1, "res=null"

    move-object v0, v8

    .line 183
    :goto_0
    const-string/jumbo v2, "N"

    :goto_1
    const-string/jumbo v5, "sms.login.verifySms"

    move-object v3, p2

    move-object v4, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-object v7

    .line 183
    :cond_0
    iget-object v1, v7, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    iget-boolean v0, v7, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->success:Z

    if-eqz v0, :cond_1

    const-string/jumbo v2, "Y"
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 187
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

    const-string/jumbo v5, "sms.login.verifySms"

    move-object v0, v8

    move-object v3, p2

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    throw v7

    :cond_1
    move-object v0, v8

    goto :goto_0
.end method
