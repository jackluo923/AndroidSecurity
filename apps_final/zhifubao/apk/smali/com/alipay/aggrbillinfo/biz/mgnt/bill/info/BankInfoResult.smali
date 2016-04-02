.class public Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankInfoResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankInfo;

    invoke-direct {v0}, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankInfoResult;->bankInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankInfo;

    return-void
.end method
