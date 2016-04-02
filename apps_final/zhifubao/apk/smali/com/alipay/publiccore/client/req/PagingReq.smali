.class public Lcom/alipay/publiccore/client/req/PagingReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "PagingReq.java"


# instance fields
.field private pageNum:I

.field private pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageNum()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/alipay/publiccore/client/req/PagingReq;->pageNum:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/alipay/publiccore/client/req/PagingReq;->pageSize:I

    return v0
.end method

.method public setPageNum(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/alipay/publiccore/client/req/PagingReq;->pageNum:I

    .line 20
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/alipay/publiccore/client/req/PagingReq;->pageSize:I

    .line 33
    return-void
.end method
