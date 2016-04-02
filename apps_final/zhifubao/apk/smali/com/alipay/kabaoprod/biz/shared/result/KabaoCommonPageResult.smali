.class public Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public currentPage:I

.field public pageSize:I

.field public totalPage:I

.field public totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->currentPage:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->pageSize:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->totalPage:I

    return v0
.end method

.method public getTotalSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->totalSize:I

    return v0
.end method

.method public setCurrentPage(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->currentPage:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->pageSize:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->totalPage:I

    return-void
.end method

.method public setTotalSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;->totalSize:I

    return-void
.end method
