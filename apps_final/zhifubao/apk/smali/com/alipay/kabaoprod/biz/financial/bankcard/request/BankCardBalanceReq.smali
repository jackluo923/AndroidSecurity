.class public Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardBalanceReq;
.super Ljava/lang/Object;


# instance fields
.field public password:Ljava/lang/String;

.field public signId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardBalanceReq;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSignId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardBalanceReq;->signId:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardBalanceReq;->password:Ljava/lang/String;

    return-void
.end method

.method public setSignId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/request/BankCardBalanceReq;->signId:Ljava/lang/String;

    return-void
.end method
