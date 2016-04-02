.class public Lcom/alipay/mobilechat/biz/group/rpc/response/OnsiteQueryResult;
.super Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public voList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
