.class public Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public direct:Ljava/lang/String;

.field public endDate:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public normType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pageNum:I

.field public startDate:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->direct:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->loginId:Ljava/lang/String;

    return-object v0
.end method

.method public getNormType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->normType:Ljava/util/List;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->pageNum:I

    return v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setDirect(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->direct:Ljava/lang/String;

    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->endDate:Ljava/lang/String;

    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->loginId:Ljava/lang/String;

    return-void
.end method

.method public setNormType(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->normType:Ljava/util/List;

    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->pageNum:I

    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->startDate:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->status:Ljava/lang/String;

    return-void
.end method
