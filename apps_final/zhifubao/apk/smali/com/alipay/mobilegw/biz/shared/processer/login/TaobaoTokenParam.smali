.class public Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;
.super Ljava/lang/Object;


# instance fields
.field public deviceId:Ljava/lang/String;

.field public loginSource:Ljava/lang/String;

.field public ssoToken:Ljava/lang/String;

.field public timeStamp:J

.field public tokenSign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->loginSource:Ljava/lang/String;

    return-object v0
.end method

.method public getSsoToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->ssoToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->timeStamp:J

    return-wide v0
.end method

.method public getTokenSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->tokenSign:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setLoginSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->loginSource:Ljava/lang/String;

    return-void
.end method

.method public setSsoToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->ssoToken:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->timeStamp:J

    return-void
.end method

.method public setTokenSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->tokenSign:Ljava/lang/String;

    return-void
.end method
