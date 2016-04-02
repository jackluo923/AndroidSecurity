.class public Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;
.super Ljava/lang/Object;


# instance fields
.field public currentPage:I

.field public filterCodition:Ljava/lang/String;

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->currentPage:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->pageSize:I

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->currentPage:I

    return v0
.end method

.method public getFilterCodition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->filterCodition:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->pageSize:I

    return v0
.end method

.method public setCurrentPage(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->currentPage:I

    return-void
.end method

.method public setFilterCodition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->filterCodition:Ljava/lang/String;

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/QueryFundTradeRecordReq;->pageSize:I

    return-void
.end method
