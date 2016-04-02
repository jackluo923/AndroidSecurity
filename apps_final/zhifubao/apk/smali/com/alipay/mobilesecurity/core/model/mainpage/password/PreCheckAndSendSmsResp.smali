.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public imageCode:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->imageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public setImageCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->imageCode:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;->sessionId:Ljava/lang/String;

    return-void
.end method
