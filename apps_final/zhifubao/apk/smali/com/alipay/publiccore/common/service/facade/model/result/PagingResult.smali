.class public Lcom/alipay/publiccore/common/service/facade/model/result/PagingResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "PagingResult.java"


# instance fields
.field public pageNum:I

.field public pageSize:I

.field public rowCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageNum()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PagingResult;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PagingResult;->pageSize:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PagingResult;->rowCount:I

    return v0
.end method

.method public setPageNum(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PagingResult;->pageNum:I

    .line 20
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PagingResult;->pageSize:I

    .line 32
    return-void
.end method

.method public setRowCount(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/alipay/publiccore/common/service/facade/model/result/PagingResult;->rowCount:I

    .line 44
    return-void
.end method
