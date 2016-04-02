.class public Lcom/alipay/kabaoprod/biz/financial/fund/request/ProfitQueryReq;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public oprType:Ljava/lang/String;

.field public pageCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/ProfitQueryReq;->pageCount:I

    return-void
.end method
