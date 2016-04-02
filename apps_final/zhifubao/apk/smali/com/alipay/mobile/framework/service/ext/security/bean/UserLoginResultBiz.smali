.class public Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
.super Ljava/lang/Object;


# instance fields
.field private barcodePayToken:Ljava/lang/String;

.field private currentProductVersion:Ljava/lang/String;

.field private downloadURL:Ljava/lang/String;

.field private existNewVersion:Ljava/lang/String;

.field private extResAttrs:Ljava/util/Map;
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

.field private extern_token:Ljava/lang/String;

.field private isCertified:Ljava/lang/String;

.field private loginCheckCodeImg:Ljava/lang/String;

.field private loginCheckCodeUrl:Ljava/lang/String;

.field private loginFlag:Z

.field private loginId:Ljava/lang/String;

.field private loginServerTime:Ljava/lang/String;

.field private loginToken:Ljava/lang/String;

.field private memo:Ljava/lang/String;

.field private mobileNo:Ljava/lang/String;

.field private resultStatus:I

.field private securityPolicyRes:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private taobaoSid:Ljava/lang/String;

.field private tbCheckCodeId:Ljava/lang/String;

.field private tbCheckCodeUrl:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->existNewVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBarcodePayToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->barcodePayToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentProductVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->currentProductVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->downloadURL:Ljava/lang/String;

    return-object v0
.end method

.method public getExistNewVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->existNewVersion:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->extResAttrs:Ljava/util/Map;

    return-object v0
.end method

.method public getExtern_token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->extern_token:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCertified()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->isCertified:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginCheckCodeImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->loginCheckCodeImg:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginCheckCodeUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->loginCheckCodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginServerTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->loginServerTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->loginToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->mobileNo:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->resultStatus:I

    return v0
.end method

.method public getSecurityPolicyRes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->securityPolicyRes:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTaobaoSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->taobaoSid:Ljava/lang/String;

    return-object v0
.end method

.method public getTbCheckCodeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->tbCheckCodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTbCheckCodeUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->tbCheckCodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isLoginFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->loginFlag:Z

    return v0
.end method

.method public setBarcodePayToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->barcodePayToken:Ljava/lang/String;

    return-void
.end method

.method public setCurrentProductVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->currentProductVersion:Ljava/lang/String;

    return-void
.end method

.method public setDownloadURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->downloadURL:Ljava/lang/String;

    return-void
.end method

.method public setExistNewVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->existNewVersion:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->extResAttrs:Ljava/util/Map;

    return-void
.end method

.method public setExtern_token(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->extern_token:Ljava/lang/String;

    return-void
.end method

.method public setIsCertified(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->isCertified:Ljava/lang/String;

    return-void
.end method

.method public setLoginCheckCodeImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->loginCheckCodeImg:Ljava/lang/String;

    return-void
.end method

.method public setLoginCheckCodeUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->loginCheckCodeUrl:Ljava/lang/String;

    return-void
.end method

.method public setLoginFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->loginFlag:Z

    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->loginId:Ljava/lang/String;

    return-void
.end method

.method public setLoginServerTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->loginServerTime:Ljava/lang/String;

    return-void
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->loginToken:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->memo:Ljava/lang/String;

    return-void
.end method

.method public setMobileNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->mobileNo:Ljava/lang/String;

    return-void
.end method

.method public setResultStatus(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->resultStatus:I

    return-void
.end method

.method public setSecurityPolicyRes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->securityPolicyRes:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setTaobaoSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->taobaoSid:Ljava/lang/String;

    return-void
.end method

.method public setTbCheckCodeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->tbCheckCodeId:Ljava/lang/String;

    return-void
.end method

.method public setTbCheckCodeUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->tbCheckCodeUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->userName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "resultStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->resultStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",memo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",loginId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->loginId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",userName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
