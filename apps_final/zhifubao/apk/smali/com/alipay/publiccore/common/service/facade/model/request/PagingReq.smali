.class public Lcom/alipay/publiccore/common/service/facade/model/request/PagingReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "PagingReq.java"


# instance fields
.field public pageNum:I

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageNum()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/alipay/publiccore/common/service/facade/model/request/PagingReq;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/alipay/publiccore/common/service/facade/model/request/PagingReq;->pageSize:I

    return v0
.end method

.method public setPageNum(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/alipay/publiccore/common/service/facade/model/request/PagingReq;->pageNum:I

    .line 20
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/alipay/publiccore/common/service/facade/model/request/PagingReq;->pageSize:I

    .line 32
    return-void
.end method
