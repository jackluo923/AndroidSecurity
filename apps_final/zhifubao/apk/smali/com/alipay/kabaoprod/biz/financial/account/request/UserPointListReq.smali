.class public Lcom/alipay/kabaoprod/biz/financial/account/request/UserPointListReq;
.super Lcom/alipay/kabaoprod/service/facade/request/CommonPageReq;


# instance fields
.field public needPaging:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/request/CommonPageReq;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/request/UserPointListReq;->needPaging:Z

    return-void
.end method


# virtual methods
.method public isNeedPaging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/request/UserPointListReq;->needPaging:Z

    return v0
.end method

.method public setNeedPaging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/request/UserPointListReq;->needPaging:Z

    return-void
.end method
