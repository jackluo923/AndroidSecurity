.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public codeImage:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;->codeImage:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public setCodeImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;->codeImage:Ljava/lang/String;

    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;->loginId:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;->sessionId:Ljava/lang/String;

    return-void
.end method
