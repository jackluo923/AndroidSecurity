.class public Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public operateLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;",
            ">;"
        }
    .end annotation
.end field

.field public pageNumEndDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperateLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;->operateLogList:Ljava/util/List;

    return-object v0
.end method

.method public getPageNumEndDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;->pageNumEndDate:Ljava/lang/String;

    return-object v0
.end method

.method public setOperateLogList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLog;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;->operateLogList:Ljava/util/List;

    return-void
.end method

.method public setPageNumEndDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;->pageNumEndDate:Ljava/lang/String;

    return-void
.end method
