.class public Lcom/alipay/publiccore/client/result/PagingResult;
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
    .line 8
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageNum()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/alipay/publiccore/client/result/PagingResult;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/alipay/publiccore/client/result/PagingResult;->pageSize:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/alipay/publiccore/client/result/PagingResult;->rowCount:I

    return v0
.end method

.method public setPageNum(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/alipay/publiccore/client/result/PagingResult;->pageNum:I

    .line 20
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/alipay/publiccore/client/result/PagingResult;->pageSize:I

    .line 33
    return-void
.end method

.method public setRowCount(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/alipay/publiccore/client/result/PagingResult;->rowCount:I

    .line 46
    return-void
.end method
