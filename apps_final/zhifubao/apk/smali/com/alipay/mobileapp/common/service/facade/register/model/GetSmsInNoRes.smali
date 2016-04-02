.class public Lcom/alipay/mobileapp/common/service/facade/register/model/GetSmsInNoRes;
.super Lcom/alipay/mobileapp/common/service/facade/register/model/CommonRes;


# instance fields
.field public sessionId:Ljava/lang/String;

.field public smsInNO:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileapp/common/service/facade/register/model/CommonRes;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/common/service/facade/register/model/GetSmsInNoRes;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsInNO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/common/service/facade/register/model/GetSmsInNoRes;->smsInNO:Ljava/lang/String;

    return-object v0
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/common/service/facade/register/model/GetSmsInNoRes;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setSmsInNO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/common/service/facade/register/model/GetSmsInNoRes;->smsInNO:Ljava/lang/String;

    return-void
.end method
