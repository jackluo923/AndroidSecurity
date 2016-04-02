.class public Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankAndLatestBillInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;

.field public billMonthInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;",
            ">;"
        }
    .end annotation
.end field

.field public foreignSummery:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/ForeignSummery;

.field public hasRealRecord:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;

    invoke-direct {v0}, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;->bankAndLatestBillInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;->billMonthInfo:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;->hasRealRecord:Z

    return-void
.end method
