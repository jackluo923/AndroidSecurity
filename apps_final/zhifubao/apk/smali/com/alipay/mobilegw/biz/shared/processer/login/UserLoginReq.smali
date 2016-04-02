.class public Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;
.super Ljava/lang/Object;


# instance fields
.field public cellId:Ljava/lang/String;

.field public channels:Ljava/lang/String;

.field public clientDigest:Ljava/lang/String;

.field public clientId:Ljava/lang/String;

.field public deviceToken:Ljava/lang/String;

.field public externParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public location:Ljava/lang/String;

.field public loginCheckCode:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public loginPassword:Ljava/lang/String;

.field public loginType:Ljava/lang/String;

.field public loginWthPwd:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public mspClientKey:Ljava/lang/String;

.field public mspImei:Ljava/lang/String;

.field public mspImsi:Ljava/lang/String;

.field public mspTid:Ljava/lang/String;

.field public osVersion:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public productVersion:Ljava/lang/String;

.field public screenHigh:Ljava/lang/String;

.field public screenWidth:Ljava/lang/String;

.field public secTS:Ljava/lang/String;

.field public sourceId:Ljava/lang/String;

.field public tbCheckCode:Ljava/lang/String;

.field public tbCheckCodeId:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;

.field public vimei:Ljava/lang/String;

.field public vimsi:Ljava/lang/String;

.field public walletClientKey:Ljava/lang/String;

.field public walletTid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "alipay"

    iput-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginType:Ljava/lang/String;

    const-string/jumbo v0, "withpwd"

    iput-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginWthPwd:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->externParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCellId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->cellId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->channels:Ljava/lang/String;

    return-object v0
.end method

.method public getClientDigest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->clientDigest:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExternParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->externParams:Ljava/util/Map;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginCheckCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginCheckCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginType:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginWthPwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginWthPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMspClientKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->mspClientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMspImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->mspImei:Ljava/lang/String;

    return-object v0
.end method

.method public getMspImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->mspImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMspTid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->mspTid:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->productVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenHigh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->screenHigh:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenWidth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->screenWidth:Ljava/lang/String;

    return-object v0
.end method

.method public getSecTS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->secTS:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTbCheckCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->tbCheckCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTbCheckCodeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->tbCheckCodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getVimei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->vimei:Ljava/lang/String;

    return-object v0
.end method

.method public getVimsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->vimsi:Ljava/lang/String;

    return-object v0
.end method

.method public getWalletClientKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->walletClientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getWalletTid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->walletTid:Ljava/lang/String;

    return-object v0
.end method

.method public setCellId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->cellId:Ljava/lang/String;

    return-void
.end method

.method public setChannels(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->channels:Ljava/lang/String;

    return-void
.end method

.method public setClientDigest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->clientDigest:Ljava/lang/String;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->deviceToken:Ljava/lang/String;

    return-void
.end method

.method public setExternParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->externParams:Ljava/util/Map;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->location:Ljava/lang/String;

    return-void
.end method

.method public setLoginCheckCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginCheckCode:Ljava/lang/String;

    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginId:Ljava/lang/String;

    return-void
.end method

.method public setLoginPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginPassword:Ljava/lang/String;

    return-void
.end method

.method public setLoginType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginType:Ljava/lang/String;

    return-void
.end method

.method public setLoginWthPwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->loginWthPwd:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMspClientKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->mspClientKey:Ljava/lang/String;

    return-void
.end method

.method public setMspImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->mspImei:Ljava/lang/String;

    return-void
.end method

.method public setMspImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->mspImsi:Ljava/lang/String;

    return-void
.end method

.method public setMspTid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->mspTid:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->productVersion:Ljava/lang/String;

    return-void
.end method

.method public setScreenHigh(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->screenHigh:Ljava/lang/String;

    return-void
.end method

.method public setScreenWidth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->screenWidth:Ljava/lang/String;

    return-void
.end method

.method public setSecTS(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->secTS:Ljava/lang/String;

    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->sourceId:Ljava/lang/String;

    return-void
.end method

.method public setTbCheckCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->tbCheckCode:Ljava/lang/String;

    return-void
.end method

.method public setTbCheckCodeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->tbCheckCodeId:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public setVimei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->vimei:Ljava/lang/String;

    return-void
.end method

.method public setVimsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->vimsi:Ljava/lang/String;

    return-void
.end method

.method public setWalletClientKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->walletClientKey:Ljava/lang/String;

    return-void
.end method

.method public setWalletTid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->walletTid:Ljava/lang/String;

    return-void
.end method
