.class public Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/OrderListReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public needPaging:Z

.field public pageNum:I

.field public pageSize:I

.field public providerCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/OrderListReq;->needPaging:Z

    return-void
.end method
