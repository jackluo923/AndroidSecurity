.class public Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;
.super Ljava/lang/Object;


# instance fields
.field public logonId:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public resultStatus:I

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    iput v0, p0, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;->resultStatus:I

    return-void
.end method


# virtual methods
.method public getLogonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;->logonId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;->resultStatus:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setLogonId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;->logonId:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;->memo:Ljava/lang/String;

    return-void
.end method

.method public setResultStatus(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;->resultStatus:I

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;->userName:Ljava/lang/String;

    return-void
.end method
