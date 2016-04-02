.class public Lcom/alipay/mobileprod/biz/transfer/dto/CheckCertifyResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public canCheckReceiveName:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CheckCertifyResp;->canCheckReceiveName:Z

    return-void
.end method
