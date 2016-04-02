.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;


# instance fields
.field public currentPage:I

.field public pageSize:I

.field public pcreditBillDetailLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillDetailLog;",
            ">;"
        }
    .end annotation
.end field

.field public totalPage:I

.field public totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;->currentPage:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;->pageSize:I

    return v0
.end method

.method public getPcreditBillDetailLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillDetailLog;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;->pcreditBillDetailLogs:Ljava/util/List;

    return-object v0
.end method

.method public getTotalPage()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;->totalPage:I

    return v0
.end method

.method public getTotalSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;->totalSize:I

    return v0
.end method

.method public setCurrentPage(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;->currentPage:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;->pageSize:I

    return-void
.end method

.method public setPcreditBillDetailLogs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditBillDetailLog;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;->pcreditBillDetailLogs:Ljava/util/List;

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;->totalPage:I

    return-void
.end method

.method public setTotalSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/model/PcreditPageListLog;->totalSize:I

    return-void
.end method
