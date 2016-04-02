.class public Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;
.super Ljava/lang/Object;


# instance fields
.field public autoLoginToken:Ljava/lang/String;

.field public ecode:Ljava/lang/String;

.field public loginCookie:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public loginTime:J

.field public memo:Ljava/lang/String;

.field public nick:Ljava/lang/String;

.field public resultStatus:I

.field public sid:Ljava/lang/String;

.field public success:Z

.field public topSession:Ljava/lang/String;

.field public userId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->loginCookie:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAutoLoginToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->autoLoginToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEcode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->ecode:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginCookie()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->loginCookie:Ljava/util/List;

    return-object v0
.end method

.method public getLoginTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->loginTime:J

    return-wide v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->resultStatus:I

    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getTopSession()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->topSession:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->userId:J

    return-wide v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->success:Z

    return v0
.end method

.method public setAutoLoginToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->autoLoginToken:Ljava/lang/String;

    return-void
.end method

.method public setEcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->ecode:Ljava/lang/String;

    return-void
.end method

.method public setLoginCookie(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->loginCookie:Ljava/util/List;

    return-void
.end method

.method public setLoginTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->loginTime:J

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->memo:Ljava/lang/String;

    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->nick:Ljava/lang/String;

    return-void
.end method

.method public setResultStatus(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->resultStatus:I

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->sid:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->success:Z

    return-void
.end method

.method public setTopSession(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->topSession:Ljava/lang/String;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobileapp/core/service/login/taobao/model/AlipaySsoLoginRes;->userId:J

    return-void
.end method
