.class public Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public resultCode:I

.field public resultMsg:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;->success:Z

    iput v0, p0, Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;->resultCode:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;->resultMsg:Ljava/lang/String;

    return-void
.end method
