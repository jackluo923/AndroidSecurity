.class public Lcom/alipay/mobileprod/biz/transfer/dto/HistoryRecordReq;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;


# instance fields
.field public needOverseaHistory:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/HistoryRecordReq;->needOverseaHistory:Z

    return-void
.end method
