.class public Lcom/alipay/kabaoprod/core/model/model/BankCard;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;


# instance fields
.field public agreementNo:Ljava/lang/String;

.field public applyTime:Ljava/lang/String;

.field public cardIndexNo:Ljava/lang/String;

.field public cardNoLast4:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public enableApplyFP:Z

.field public enableDelete:Z

.field public extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hasBill:Z

.field public holderName:Ljava/lang/String;

.field public instId:Ljava/lang/String;

.field public instLogUrl:Ljava/lang/String;

.field public instMark:Ljava/lang/String;

.field public instName:Ljava/lang/String;

.field public isOwner:Z

.field public signId:Ljava/lang/String;

.field public sourceChannel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->enableApplyFP:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->enableDelete:Z

    return-void
.end method


# virtual methods
.method public getAgreementNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->agreementNo:Ljava/lang/String;

    return-object v0
.end method

.method public getApplyTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->applyTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCardIndexNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->cardIndexNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNoLast4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->cardNoLast4:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->extraInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getHolderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->holderName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstLogUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instLogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInstMark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instMark:Ljava/lang/String;

    return-object v0
.end method

.method public getInstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->signId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->sourceChannel:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableApplyFP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->enableApplyFP:Z

    return v0
.end method

.method public isEnableDelete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->enableDelete:Z

    return v0
.end method

.method public isHasBill()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->hasBill:Z

    return v0
.end method

.method public isOwner()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->isOwner:Z

    return v0
.end method

.method public setAgreementNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->agreementNo:Ljava/lang/String;

    return-void
.end method

.method public setApplyTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->applyTime:Ljava/lang/String;

    return-void
.end method

.method public setCardIndexNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->cardIndexNo:Ljava/lang/String;

    return-void
.end method

.method public setCardNoLast4(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->cardNoLast4:Ljava/lang/String;

    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->cardType:Ljava/lang/String;

    return-void
.end method

.method public setEnableApplyFP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->enableApplyFP:Z

    return-void
.end method

.method public setEnableDelete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->enableDelete:Z

    return-void
.end method

.method public setExtraInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->extraInfo:Ljava/util/Map;

    return-void
.end method

.method public setHasBill(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->hasBill:Z

    return-void
.end method

.method public setHolderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->holderName:Ljava/lang/String;

    return-void
.end method

.method public setInstId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instId:Ljava/lang/String;

    return-void
.end method

.method public setInstLogUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instLogUrl:Ljava/lang/String;

    return-void
.end method

.method public setInstMark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instMark:Ljava/lang/String;

    return-void
.end method

.method public setInstName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->instName:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->isOwner:Z

    return-void
.end method

.method public setSignId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->signId:Ljava/lang/String;

    return-void
.end method

.method public setSourceChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BankCard;->sourceChannel:Ljava/lang/String;

    return-void
.end method
