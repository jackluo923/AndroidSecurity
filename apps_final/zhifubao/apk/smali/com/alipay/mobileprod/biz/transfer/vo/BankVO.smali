.class public Lcom/alipay/mobileprod/biz/transfer/vo/BankVO;
.super Ljava/lang/Object;


# instance fields
.field public bankName:Ljava/lang/String;

.field public bankShortName:Ljava/lang/String;

.field public hotBank:Z

.field public nextDay:Z

.field public quickSupported:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/vo/BankVO;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getBankShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/vo/BankVO;->bankShortName:Ljava/lang/String;

    return-object v0
.end method

.method public isHotBank()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/transfer/vo/BankVO;->hotBank:Z

    return v0
.end method

.method public isNextDay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/transfer/vo/BankVO;->nextDay:Z

    return v0
.end method

.method public isQuickSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/transfer/vo/BankVO;->quickSupported:Z

    return v0
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/vo/BankVO;->bankName:Ljava/lang/String;

    return-void
.end method

.method public setBankShortName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/vo/BankVO;->bankShortName:Ljava/lang/String;

    return-void
.end method

.method public setHotBank(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/transfer/vo/BankVO;->hotBank:Z

    return-void
.end method

.method public setNextDay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/transfer/vo/BankVO;->nextDay:Z

    return-void
.end method

.method public setQuickSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/transfer/vo/BankVO;->quickSupported:Z

    return-void
.end method
