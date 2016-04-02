.class public Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutToBankCardReq;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankCardForTransferOut:Lcom/alipay/kabaoprod/biz/financial/fund/model/BankCardForTransferOut;

.field public fundCode:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public transferAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method
