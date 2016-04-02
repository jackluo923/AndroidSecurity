.class public Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x46d98fab738136e2L


# instance fields
.field public barcodePayToken:Ljava/lang/String;

.field public bindCard:Z

.field public currentProductVersion:Ljava/lang/String;

.field public customerType:Ljava/lang/String;

.field public downloadURL:Ljava/lang/String;

.field public existNewVersion:Ljava/lang/String;

.field public extResAttrs:Ljava/util/Map;
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

.field public extern_token:Ljava/lang/String;

.field public headImg:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public isCertified:Ljava/lang/String;

.field public loginCheckCodeImg:Ljava/lang/String;

.field public loginCheckCodeUrl:Ljava/lang/String;

.field public loginContext:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public loginServerTime:Ljava/lang/String;

.field public loginToken:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public mobileNo:Ljava/lang/String;

.field public resultStatus:I

.field public sessionId:Ljava/lang/String;

.field public taobaoSid:Ljava/lang/String;

.field public tbCheckCodeId:Ljava/lang/String;

.field public tbCheckCodeUrl:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public wirelessUser:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->existNewVersion:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->extResAttrs:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBarcodePayToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->barcodePayToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentProductVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->currentProductVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->customerType:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->downloadURL:Ljava/lang/String;

    return-object v0
.end method

.method public getExistNewVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->existNewVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getExtResAttrs()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->extResAttrs:Ljava/util/Map;

    return-object v0
.end method

.method public getExtern_token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->extern_token:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->headImg:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCertified()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->isCertified:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginCheckCodeImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginCheckCodeImg:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginCheckCodeUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginCheckCodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginContext:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginServerTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginServerTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->mobileNo:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->resultStatus:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTaobaoSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->taobaoSid:Ljava/lang/String;

    return-object v0
.end method

.method public getTbCheckCodeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->tbCheckCodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTbCheckCodeUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->tbCheckCodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isBindCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->bindCard:Z

    return v0
.end method

.method public isWirelessUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->wirelessUser:Z

    return v0
.end method

.method public setBarcodePayToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->barcodePayToken:Ljava/lang/String;

    return-void
.end method

.method public setBindCard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->bindCard:Z

    return-void
.end method

.method public setCurrentProductVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->currentProductVersion:Ljava/lang/String;

    return-void
.end method

.method public setCustomerType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->customerType:Ljava/lang/String;

    return-void
.end method

.method public setDownloadURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->downloadURL:Ljava/lang/String;

    return-void
.end method

.method public setExistNewVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->existNewVersion:Ljava/lang/String;

    return-void
.end method

.method public setExtResAttrs(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->extResAttrs:Ljava/util/Map;

    return-void
.end method

.method public setExtern_token(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->extern_token:Ljava/lang/String;

    return-void
.end method

.method public setHeadImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->headImg:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsCertified(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->isCertified:Ljava/lang/String;

    return-void
.end method

.method public setLoginCheckCodeImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginCheckCodeImg:Ljava/lang/String;

    return-void
.end method

.method public setLoginCheckCodeUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginCheckCodeUrl:Ljava/lang/String;

    return-void
.end method

.method public setLoginContext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginContext:Ljava/lang/String;

    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginId:Ljava/lang/String;

    return-void
.end method

.method public setLoginServerTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginServerTime:Ljava/lang/String;

    return-void
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginToken:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->memo:Ljava/lang/String;

    return-void
.end method

.method public setMobileNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->mobileNo:Ljava/lang/String;

    return-void
.end method

.method public setResultStatus(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->resultStatus:I

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setTaobaoSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->taobaoSid:Ljava/lang/String;

    return-void
.end method

.method public setTbCheckCodeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->tbCheckCodeId:Ljava/lang/String;

    return-void
.end method

.method public setTbCheckCodeUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->tbCheckCodeUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->userName:Ljava/lang/String;

    return-void
.end method

.method public setWirelessUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->wirelessUser:Z

    return-void
.end method
