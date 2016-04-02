.class public Lcom/alipay/mobilechat/biz/emotion/rpc/response/ChatBackgroundResp;
.super Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public chatBackgroundVOs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/ChatBackgroundVO;",
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
