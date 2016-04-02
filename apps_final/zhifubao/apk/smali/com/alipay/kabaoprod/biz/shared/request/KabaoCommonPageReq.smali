.class public Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;


# instance fields
.field public currentPage:I

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;->currentPage:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;->pageSize:I

    return v0
.end method

.method public setCurrentPage(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;->currentPage:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/shared/request/KabaoCommonPageReq;->pageSize:I

    return-void
.end method
