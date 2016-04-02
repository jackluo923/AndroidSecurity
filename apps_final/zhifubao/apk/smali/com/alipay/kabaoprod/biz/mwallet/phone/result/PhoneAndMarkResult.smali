.class public Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public isPhoneMark:Z

.field public isShowRefreshBtn:Z

.field public isSupportNumber:Z

.field public phoneTitle:Ljava/lang/String;

.field public vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;->isPhoneMark:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;->isSupportNumber:Z

    iput-boolean v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;->isShowRefreshBtn:Z

    return-void
.end method


# virtual methods
.method public getPhoneTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;->phoneTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public isPhoneMark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;->isPhoneMark:Z

    return v0
.end method

.method public isShowRefreshBtn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;->isShowRefreshBtn:Z

    return v0
.end method

.method public isSupportNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;->isSupportNumber:Z

    return v0
.end method

.method public setPhoneMark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;->isPhoneMark:Z

    return-void
.end method

.method public setPhoneTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;->phoneTitle:Ljava/lang/String;

    return-void
.end method

.method public setShowRefreshBtn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;->isShowRefreshBtn:Z

    return-void
.end method

.method public setSupportNumber(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;->isSupportNumber:Z

    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneAndMarkResult;->vendor:Ljava/lang/String;

    return-void
.end method
