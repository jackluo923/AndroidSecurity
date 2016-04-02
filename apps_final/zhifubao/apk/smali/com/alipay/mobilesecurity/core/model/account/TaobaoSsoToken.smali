.class public Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public secSign:Ljava/lang/String;

.field public ssoToken:Ljava/lang/String;

.field public taobaoDeviceId:Ljava/lang/String;

.field public timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->secSign:Ljava/lang/String;

    return-object v0
.end method

.method public getSsoToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->ssoToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTaobaoDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->taobaoDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->timeStamp:J

    return-wide v0
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setSecSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->secSign:Ljava/lang/String;

    return-void
.end method

.method public setSsoToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->ssoToken:Ljava/lang/String;

    return-void
.end method

.method public setTaobaoDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->taobaoDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobilesecurity/core/model/account/TaobaoSsoToken;->timeStamp:J

    return-void
.end method
