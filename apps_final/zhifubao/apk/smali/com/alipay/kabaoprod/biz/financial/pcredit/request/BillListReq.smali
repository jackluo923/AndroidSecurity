.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/request/BillListReq;
.super Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;


# instance fields
.field public billPeriodBegin:Ljava/lang/String;

.field public billPeriodEnd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillPeriodBegin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/BillListReq;->billPeriodBegin:Ljava/lang/String;

    return-object v0
.end method

.method public getBillPeriodEnd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/BillListReq;->billPeriodEnd:Ljava/lang/String;

    return-object v0
.end method

.method public setBillPeriodBegin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/BillListReq;->billPeriodBegin:Ljava/lang/String;

    return-void
.end method

.method public setBillPeriodEnd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/BillListReq;->billPeriodEnd:Ljava/lang/String;

    return-void
.end method
