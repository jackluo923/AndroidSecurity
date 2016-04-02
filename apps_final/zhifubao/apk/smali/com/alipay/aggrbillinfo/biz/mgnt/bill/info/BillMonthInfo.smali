.class public Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public billCycle:Ljava/lang/String;

.field public billDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field public memo:Ljava/lang/String;

.field public month:Ljava/lang/String;

.field public totalAmount:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;->billDetails:Ljava/util/List;

    return-void
.end method
