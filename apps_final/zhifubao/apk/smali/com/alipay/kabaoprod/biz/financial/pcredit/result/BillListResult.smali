.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/result/BillListResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;


# instance fields
.field public billStatementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillStatementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/BillListResult;->billStatementList:Ljava/util/List;

    return-object v0
.end method

.method public setBillStatementList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/BillListResult;->billStatementList:Ljava/util/List;

    return-void
.end method
