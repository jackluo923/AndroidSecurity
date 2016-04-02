.class public Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressReq;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;


# instance fields
.field public transferNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransferNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressReq;->transferNo:Ljava/lang/String;

    return-object v0
.end method

.method public setTransferNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressReq;->transferNo:Ljava/lang/String;

    return-void
.end method
