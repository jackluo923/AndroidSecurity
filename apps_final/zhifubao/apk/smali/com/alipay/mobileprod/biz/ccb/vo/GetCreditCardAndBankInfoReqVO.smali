.class public Lcom/alipay/mobileprod/biz/ccb/vo/GetCreditCardAndBankInfoReqVO;
.super Lcom/alipay/mobileprod/core/model/ccb/BaseReqVO;


# instance fields
.field public bankMark:Ljava/lang/String;

.field public cardNumber:Ljava/lang/String;

.field public cardNumberType:Ljava/lang/String;

.field public holderName:Ljava/lang/String;

.field public needAddNewCard:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ccb/BaseReqVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankMark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccb/vo/GetCreditCardAndBankInfoReqVO;->bankMark:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccb/vo/GetCreditCardAndBankInfoReqVO;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumberType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccb/vo/GetCreditCardAndBankInfoReqVO;->cardNumberType:Ljava/lang/String;

    return-object v0
.end method

.method public getHolderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccb/vo/GetCreditCardAndBankInfoReqVO;->holderName:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedAddNewCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/ccb/vo/GetCreditCardAndBankInfoReqVO;->needAddNewCard:Z

    return v0
.end method

.method public setBankMark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccb/vo/GetCreditCardAndBankInfoReqVO;->bankMark:Ljava/lang/String;

    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccb/vo/GetCreditCardAndBankInfoReqVO;->cardNumber:Ljava/lang/String;

    return-void
.end method

.method public setCardNumberType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccb/vo/GetCreditCardAndBankInfoReqVO;->cardNumberType:Ljava/lang/String;

    return-void
.end method

.method public setHolderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccb/vo/GetCreditCardAndBankInfoReqVO;->holderName:Ljava/lang/String;

    return-void
.end method

.method public setNeedAddNewCard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/ccb/vo/GetCreditCardAndBankInfoReqVO;->needAddNewCard:Z

    return-void
.end method
