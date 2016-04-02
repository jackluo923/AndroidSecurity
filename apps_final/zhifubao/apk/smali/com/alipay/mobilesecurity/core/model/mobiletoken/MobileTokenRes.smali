.class public Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public cardId:Ljava/lang/String;

.field public interval:Ljava/lang/String;

.field public logonIdList:Ljava/lang/String;

.field public seed:Ljava/lang/String;

.field public serverTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;->interval:Ljava/lang/String;

    return-object v0
.end method

.method public getLogonIdList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;->logonIdList:Ljava/lang/String;

    return-object v0
.end method

.method public getSeed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;->seed:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;->serverTime:Ljava/lang/String;

    return-object v0
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;->cardId:Ljava/lang/String;

    return-void
.end method

.method public setInterval(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;->interval:Ljava/lang/String;

    return-void
.end method

.method public setLogonIdList(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;->logonIdList:Ljava/lang/String;

    return-void
.end method

.method public setSeed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;->seed:Ljava/lang/String;

    return-void
.end method

.method public setServerTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;->serverTime:Ljava/lang/String;

    return-void
.end method
