.class public Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public bankId:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public expressCacheKey:Ljava/lang/String;

.field public instId:Ljava/lang/String;

.field public mobileNo:Ljava/lang/String;

.field public needSmsCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;->needSmsCheck:Z

    return-void
.end method


# virtual methods
.method public getBankId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;->bankId:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpressCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;->expressCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getInstId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;->instId:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;->mobileNo:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedSmsCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;->needSmsCheck:Z

    return v0
.end method

.method public setBankId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;->bankId:Ljava/lang/String;

    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;->cardType:Ljava/lang/String;

    return-void
.end method

.method public setExpressCacheKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;->expressCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setInstId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;->instId:Ljava/lang/String;

    return-void
.end method

.method public setMobileNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;->mobileNo:Ljava/lang/String;

    return-void
.end method

.method public setNeedSmsCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/ValidateSignResult;->needSmsCheck:Z

    return-void
.end method
