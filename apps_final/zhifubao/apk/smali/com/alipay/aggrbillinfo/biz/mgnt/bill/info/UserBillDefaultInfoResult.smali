.class public Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/UserBillDefaultInfoResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public userBillDefaultInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/UserBillDefaultInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/UserBillDefaultInfo;

    invoke-direct {v0}, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/UserBillDefaultInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/UserBillDefaultInfoResult;->userBillDefaultInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/UserBillDefaultInfo;

    return-void
.end method
