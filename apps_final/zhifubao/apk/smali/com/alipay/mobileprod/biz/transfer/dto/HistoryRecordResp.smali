.class public Lcom/alipay/mobileprod/biz/transfer/dto/HistoryRecordResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public overseaprodUrl:Ljava/lang/String;

.field public redDotSwitch:Z

.field public transferRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/transfer/vo/TransferRecordVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransferRecordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/transfer/vo/TransferRecordVO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/HistoryRecordResp;->transferRecordList:Ljava/util/List;

    return-object v0
.end method

.method public isRedDotSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/HistoryRecordResp;->redDotSwitch:Z

    return v0
.end method

.method public setRedDotSwitch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/HistoryRecordResp;->redDotSwitch:Z

    return-void
.end method

.method public setTransferRecordList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/transfer/vo/TransferRecordVO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/HistoryRecordResp;->transferRecordList:Ljava/util/List;

    return-void
.end method
