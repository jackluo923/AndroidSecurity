.class public Lcom/alipay/mobileprod/biz/deposit/dto/TbLoginAndItemInitReq;
.super Lcom/alipay/mobileprod/core/model/deposit/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/deposit/BaseReqVO;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/TbLoginAndItemInitReq;->type:I

    return-void
.end method
