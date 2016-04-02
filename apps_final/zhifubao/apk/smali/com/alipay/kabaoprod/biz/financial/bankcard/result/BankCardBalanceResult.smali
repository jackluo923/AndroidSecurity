.class public Lcom/alipay/kabaoprod/biz/financial/bankcard/result/BankCardBalanceResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public cardBalance:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardBalance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/BankCardBalanceResult;->cardBalance:Ljava/lang/String;

    return-object v0
.end method

.method public setCardBalance(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/BankCardBalanceResult;->cardBalance:Ljava/lang/String;

    return-void
.end method
