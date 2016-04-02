.class public Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailReq;
.super Lcom/alipay/mobileprod/core/model/deposit/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public faceValue:Ljava/lang/String;

.field public itemValue:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/deposit/BaseReqVO;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailReq;->type:I

    iput-object v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailReq;->itemValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobileprod/biz/deposit/dto/QueryItemDetailReq;->faceValue:Ljava/lang/String;

    return-void
.end method
